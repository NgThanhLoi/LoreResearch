#!/usr/bin/env python3
"""
check_alias_index.py — Alias Index Validator

Read-only validator for _data/indexes/alias_index.json (or schema if deferred).
Does NOT modify any files.

Exit codes:
  0 — valid or cleanly deferred
  1 — invalid
"""

import json
import os
import sys

REPO_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
INDEXES_DIR = os.path.join(REPO_ROOT, "_data", "indexes")
ALIAS_INDEX_PATH = os.path.join(INDEXES_DIR, "alias_index.json")
ALIAS_SCHEMA_PATH = os.path.join(INDEXES_DIR, "alias_index.schema.json")

ALLOWED_AMBIGUITY = {"unique", "ambiguous", "conflict", "needs_human_review", "deferred_missing_local_data"}
ALLOWED_CONFIDENCE = {"high", "medium", "low", "unknown"}
ALLOWED_LANGUAGES = {"en", "ja", "zh-CN", "zh-TW", "vi", "ko", "other"}
REQUIRED_FIELDS = {"alias", "normalized_alias", "language", "entity_id", "entity_name", "entity_type", "source_reference", "confidence", "ambiguity_status"}


def validate_alias_index(data):
    """Validate alias_index.json entries. Returns list of errors."""
    errors = []
    conflicts = {}

    if not isinstance(data, list):
        errors.append("Root must be a JSON array")
        return errors

    for i, entry in enumerate(data):
        prefix = f"Entry [{i}]"

        if not isinstance(entry, dict):
            errors.append(f"{prefix}: must be an object")
            continue

        # Check required fields
        for field in REQUIRED_FIELDS:
            if field not in entry:
                errors.append(f"{prefix}: missing required field '{field}'")
            elif not entry[field] and field != "notes":
                errors.append(f"{prefix}: field '{field}' is empty")

        # Check normalized_alias not empty
        if "normalized_alias" in entry and not entry.get("normalized_alias", "").strip():
            errors.append(f"{prefix}: normalized_alias must not be empty or whitespace")

        # Check language
        if "language" in entry and entry["language"] not in ALLOWED_LANGUAGES:
            errors.append(f"{prefix}: language '{entry['language']}' not in allowed values: {ALLOWED_LANGUAGES}")

        # Check ambiguity_status
        if "ambiguity_status" in entry and entry["ambiguity_status"] not in ALLOWED_AMBIGUITY:
            errors.append(f"{prefix}: ambiguity_status '{entry['ambiguity_status']}' not in allowed values: {ALLOWED_AMBIGUITY}")

        # Check confidence
        if "confidence" in entry and entry["confidence"] not in ALLOWED_CONFIDENCE:
            errors.append(f"{prefix}: confidence '{entry['confidence']}' not in allowed values: {ALLOWED_CONFIDENCE}")

        # Track alias conflicts
        normalized = entry.get("normalized_alias", "")
        entity_id = entry.get("entity_id", "")
        if normalized and entity_id:
            key = (normalized, entry.get("language", ""))
            if key not in conflicts:
                conflicts[key] = set()
            conflicts[key].add(entity_id)

    # Report unresolved conflicts (same alias+language pointing to multiple entities)
    for (alias, lang), entities in conflicts.items():
        if len(entities) > 1:
            # This is a warning, not an error — conflicts are expected but must be flagged
            errors.append(f"CONFLICT: alias '{alias}' (lang={lang}) maps to {len(entities)} entities: {entities}")

    return errors


def main():
    # Check if alias_index.json exists
    if os.path.isfile(ALIAS_INDEX_PATH):
        print(f"[check_alias_index] Validating: {ALIAS_INDEX_PATH}")
        try:
            with open(ALIAS_INDEX_PATH, "r", encoding="utf-8") as f:
                data = json.load(f)
        except json.JSONDecodeError as e:
            print(f"FAIL: Invalid JSON in alias_index.json: {e}")
            sys.exit(1)

        errors = validate_alias_index(data)
        if errors:
            print(f"FAIL: {len(errors)} issue(s) found:")
            for err in errors:
                print(f"  - {err}")
            # Conflicts are warnings, not hard failures
            hard_errors = [e for e in errors if not e.startswith("CONFLICT:")]
            if hard_errors:
                sys.exit(1)
            else:
                print(f"WARN: {len(errors)} conflict(s) detected but no schema errors.")
                sys.exit(0)
        else:
            print(f"PASS: alias_index.json is valid ({len(data)} entries)")
            sys.exit(0)

    # Check if schema (deferred) exists
    elif os.path.isfile(ALIAS_SCHEMA_PATH):
        print(f"[check_alias_index] Found schema file (deferred mode): {ALIAS_SCHEMA_PATH}")
        try:
            with open(ALIAS_SCHEMA_PATH, "r", encoding="utf-8") as f:
                schema = json.load(f)
        except json.JSONDecodeError as e:
            print(f"FAIL: Invalid JSON in schema file: {e}")
            sys.exit(1)

        meta = schema.get("_meta", {})
        status = meta.get("status", "")
        if status == "deferred_missing_local_data":
            print(f"PASS (deferred): alias index deferred — schema exists, awaiting local data provision.")
            sys.exit(0)
        else:
            print(f"WARN: Schema exists but _meta.status is '{status}', expected 'deferred_missing_local_data'")
            sys.exit(0)

    else:
        print(f"FAIL: Neither alias_index.json nor alias_index.schema.json found in {INDEXES_DIR}")
        sys.exit(1)


if __name__ == "__main__":
    main()
