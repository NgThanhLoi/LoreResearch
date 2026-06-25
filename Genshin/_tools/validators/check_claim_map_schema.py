#!/usr/bin/env python3
"""
check_claim_map_schema.py — Pass 25.4.1 Validator

Purpose: Validate claim-map markdown tables for correct schema.
Designed for Pass 26+ claim-map outputs.

Usage:
  python check_claim_map_schema.py --file <path_to_claim_map.md>
  python check_claim_map_schema.py  (no args = usage message, exit 0)

Read-only. No network. No file modification.
Exit 0 = pass (or no-op), Exit 1 = fail.
"""

import argparse
import re
import sys
from pathlib import Path


REQUIRED_COLUMNS = [
    "claim_id",
    "claim_group",
    "subject",
    "claim_text",
    "source_evidence_id",
    "source_file",
    "support_status",
    "risk_level",
    "human_review_required",
    "recommended_action",
]

ALLOWED_SUPPORT_STATUSES = [
    "direct_support_candidate",
    "partial_support_only",
    "context_only",
    "evidence_found_guarded",
    "requires_human_review",
    "requires_claim_mapping",
    "source_missing",
    "still_blocked",
    "not_enough_for_canon",
    "not_resolvable_from_quest_dialogue",
    "deferred_to_pass_23",
]


def find_tables(content):
    """Find markdown tables and return list of (header_cells, data_rows)."""
    tables = []
    lines = content.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("|") and line.endswith("|"):
            # Potential header
            header_cells = [c.strip() for c in line.split("|")[1:-1]]
            # Check next line is separator
            if i + 1 < len(lines):
                sep_line = lines[i + 1].strip()
                if sep_line.startswith("|") and sep_line.endswith("|"):
                    sep_cells = [c.strip() for c in sep_line.split("|")[1:-1]]
                    if all(re.match(r'^[-:]+$', c) for c in sep_cells if c):
                        # Valid table header + separator
                        data_rows = []
                        j = i + 2
                        while j < len(lines):
                            row_line = lines[j].strip()
                            if row_line.startswith("|") and row_line.endswith("|"):
                                row_cells = [c.strip() for c in row_line.split("|")[1:-1]]
                                data_rows.append(row_cells)
                                j += 1
                            else:
                                break
                        tables.append((header_cells, data_rows))
                        i = j
                        continue
        i += 1
    return tables


def normalize_col(col):
    """Normalize column name for comparison."""
    return col.lower().strip().replace(" ", "_").replace("-", "_")


def validate_claim_map_table(header_cells, data_rows):
    """Validate a single table against claim-map schema."""
    errors = []

    # Normalize headers
    normalized = [normalize_col(h) for h in header_cells]

    # Check required columns
    missing_cols = []
    for req in REQUIRED_COLUMNS:
        if req not in normalized:
            missing_cols.append(req)

    if missing_cols:
        errors.append(f"Missing required columns: {', '.join(missing_cols)}")
        return errors

    # Find support_status column index
    status_idx = normalized.index("support_status")

    # Validate each row
    for row_num, row in enumerate(data_rows, start=1):
        if len(row) <= status_idx:
            errors.append(f"Row {row_num}: insufficient columns")
            continue

        status = row[status_idx].strip()
        if status and status not in ALLOWED_SUPPORT_STATUSES:
            errors.append(f"Row {row_num}: invalid support_status '{status}'")

    return errors


def main():
    parser = argparse.ArgumentParser(
        description="Validate claim-map markdown table schema (Pass 26+)"
    )
    parser.add_argument(
        "--file", "-f",
        type=str,
        help="Path to claim-map markdown file to validate",
    )
    args = parser.parse_args()

    if not args.file:
        print("check_claim_map_schema.py — Claim Map Schema Validator")
        print()
        print("Usage: python check_claim_map_schema.py --file <path>")
        print()
        print("No file specified. No-op mode. Exit 0.")
        print()
        print(f"Required columns: {', '.join(REQUIRED_COLUMNS)}")
        print(f"Allowed support_status values: {', '.join(ALLOWED_SUPPORT_STATUSES)}")
        sys.exit(0)

    target = Path(args.file)
    if not target.exists():
        print(f"FAIL: File not found: {args.file}")
        sys.exit(1)

    content = target.read_text(encoding="utf-8")
    tables = find_tables(content)

    if not tables:
        print(f"FAIL: No markdown tables found in {args.file}")
        sys.exit(1)

    print("=" * 60)
    print("check_claim_map_schema.py — Claim Map Validation")
    print("=" * 60)
    print(f"  File: {args.file}")
    print(f"  Tables found: {len(tables)}")
    print()

    all_errors = []
    claim_table_found = False

    for idx, (header, rows) in enumerate(tables):
        normalized = [normalize_col(h) for h in header]
        # Check if this looks like a claim-map table
        if "claim_id" in normalized:
            claim_table_found = True
            errors = validate_claim_map_table(header, rows)
            print(f"  Table {idx + 1}: {len(header)} cols, {len(rows)} rows")
            if errors:
                all_errors.extend(errors)
                for e in errors:
                    print(f"    ERROR: {e}")
            else:
                print(f"    OK: valid claim-map schema")
            print()

    if not claim_table_found:
        print("FAIL: No claim-map table found (no table with 'claim_id' column)")
        sys.exit(1)

    if all_errors:
        print(f"RESULT: FAIL ({len(all_errors)} errors)")
        sys.exit(1)
    else:
        print("RESULT: PASS")
        sys.exit(0)


if __name__ == "__main__":
    main()
