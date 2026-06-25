#!/usr/bin/env python3
"""
check_source_index.py — Pass 25.4.1 Validator

Purpose: Validate wiki/sources/source-index.md for:
  - Duplicate Source IDs
  - Missing local paths (files referenced but not on disk)
  - Intentional missing/retired entries (allowed)
  - Stale active paths that should remain retired

Read-only. No network. No file modification.
Exit 0 = pass, Exit 1 = fail.
"""

import os
import re
import sys
from pathlib import Path


def find_repo_root():
    """Derive repo root from this script's location (_tools/validators/)."""
    script_dir = Path(__file__).resolve().parent
    # _tools/validators/ -> repo root is two levels up
    return script_dir.parent.parent


def parse_table_rows(content):
    """Extract all markdown table rows (skip header and separator)."""
    rows = []
    in_table = False
    for line in content.splitlines():
        stripped = line.strip()
        if stripped.startswith("|") and stripped.endswith("|"):
            # Check if separator row
            cells = [c.strip() for c in stripped.split("|")[1:-1]]
            if all(re.match(r'^[-:]+$', c) for c in cells if c):
                in_table = True
                continue
            if in_table:
                rows.append(cells)
            elif any("Source ID" in c for c in cells):
                # Header row — next separator starts the table
                in_table = False
                continue
            else:
                in_table = False
        else:
            in_table = False
    return rows


def is_intentional_missing(row_text):
    """Check if row is marked as retired/missing/unusable intentionally."""
    markers = [
        "legacy_retired",
        "not_source",
        "unusable",
        "không tồn tại",
        "does not exist",
        "legacy retired",
        "NOT a valid source ID",
        "Do not treat",
        "source_missing",
        "TODO",
        "retired",
    ]
    lower = row_text.lower()
    return any(m.lower() in lower for m in markers)


STALE_ACTIVE_PATHS = [
    "topics/nod-krai/Nod_Krai.md",
]


def main():
    repo_root = find_repo_root()
    source_index_path = repo_root / "wiki" / "sources" / "source-index.md"

    if not source_index_path.exists():
        print(f"FAIL: source-index.md not found at {source_index_path}")
        sys.exit(1)

    content = source_index_path.read_text(encoding="utf-8")

    # Parse all tables
    rows = parse_table_rows(content)

    # Extract Source IDs and paths
    source_ids = []
    missing_paths = []
    intentional_missing = []
    stale_active = []
    duplicate_ids = []

    seen_ids = {}

    for row in rows:
        if len(row) < 2:
            continue

        # Source ID is first column (strip bold markers)
        sid = row[0].strip().strip("*").strip()
        path_cell = row[1].strip().strip("`").strip()

        if not sid or sid == "Source ID":
            continue

        # Track duplicates
        if sid in seen_ids:
            duplicate_ids.append(sid)
        else:
            seen_ids[sid] = path_cell

        # Check path existence
        row_text = " | ".join(row)

        if is_intentional_missing(row_text):
            intentional_missing.append(f"{sid}: {path_cell}")
            continue

        # Check stale paths that should not be active
        for stale in STALE_ACTIVE_PATHS:
            if stale in path_cell:
                stale_active.append(f"{sid}: {path_cell}")

        # Check if path exists on disk (only for file-level entries with actual paths)
        if path_cell and not path_cell.endswith("/") and "/" in path_cell:
            full_path = repo_root / path_cell
            if not full_path.exists():
                missing_paths.append(f"{sid}: {path_cell}")

    # Summary
    total_ids = len(seen_ids) + len(duplicate_ids)
    print("=" * 60)
    print("check_source_index.py — Source Index Validation")
    print("=" * 60)
    print(f"  total_source_ids:              {total_ids}")
    print(f"  unique_source_ids:             {len(seen_ids)}")
    print(f"  duplicate_ids:                 {len(duplicate_ids)}")
    print(f"  missing_paths:                 {len(missing_paths)}")
    print(f"  intentional_missing_or_retired:{len(intentional_missing)}")
    print(f"  stale_active_paths:            {len(stale_active)}")
    print()

    has_failure = False

    if duplicate_ids:
        has_failure = True
        print("DUPLICATE IDs:")
        for d in duplicate_ids:
            print(f"  - {d}")
        print()

    if missing_paths:
        print("MISSING PATHS (file-level entries not found on disk):")
        for m in missing_paths[:20]:
            print(f"  - {m}")
        if len(missing_paths) > 20:
            print(f"  ... and {len(missing_paths) - 20} more")
        print()

    if stale_active:
        has_failure = True
        print("STALE ACTIVE PATHS (should be retired):")
        for s in stale_active:
            print(f"  - {s}")
        print()

    if intentional_missing:
        print(f"INTENTIONAL MISSING/RETIRED: {len(intentional_missing)} entries (OK)")
        print()

    # Pass/fail logic: fail on duplicate IDs or stale active paths
    # Missing paths are informational (many source files may not exist yet)
    if has_failure:
        print("RESULT: FAIL")
        sys.exit(1)
    else:
        print("RESULT: PASS")
        sys.exit(0)


if __name__ == "__main__":
    main()
