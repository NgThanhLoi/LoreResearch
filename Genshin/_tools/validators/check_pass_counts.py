#!/usr/bin/env python3
"""
check_pass_counts.py — Pass 25.4.1 Validator

Purpose: Verify that key preserved audit counts from Pass 22 and
Pass 23+24 remain present in current reports/logs.

Expected counts:
  Pass 22: 32 total / 15 evidence_packet_created / 9 still_blocked
  Pass 23+24: 97 candidates / 73 inventory rows / 29 packages / 58 gaps

Read-only. No network. No file modification.
Exit 0 = pass, Exit 1 = fail.
"""

import sys
from pathlib import Path


def find_repo_root():
    """Derive repo root from this script's location (_tools/validators/)."""
    script_dir = Path(__file__).resolve().parent
    return script_dir.parent.parent


# Counts to verify and which files should contain them
EXPECTED_COUNTS = [
    {
        "label": "Pass 22 — 32 total claims",
        "pattern": "32",
        "context_patterns": ["32 total", "32 claim", "32/15/9"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-22-claim-support-status-matrix.md",
        ],
    },
    {
        "label": "Pass 22 — 15 evidence_packet_created",
        "pattern": "15",
        "context_patterns": ["15 evidence", "15 evidence_packet", "32/15/9"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-22-claim-support-status-matrix.md",
        ],
    },
    {
        "label": "Pass 22 — 9 still_blocked",
        "pattern": "9",
        "context_patterns": ["9 still_blocked", "9 still blocked", "32/15/9"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-22-claim-support-status-matrix.md",
        ],
    },
    {
        "label": "Pass 23+24 — 97 candidates",
        "pattern": "97",
        "context_patterns": ["97 candidates", "97 candidate", "97/73/29/58"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-23-24-combined-source-preparation-report.md",
        ],
    },
    {
        "label": "Pass 23+24 — 73 inventory rows",
        "pattern": "73",
        "context_patterns": ["73 inventory", "73 row", "97/73/29/58"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-23-24-combined-source-preparation-report.md",
        ],
    },
    {
        "label": "Pass 23+24 — 29 packages",
        "pattern": "29",
        "context_patterns": ["29 package", "29 evidence", "97/73/29/58"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-23-24-combined-source-preparation-report.md",
        ],
    },
    {
        "label": "Pass 23+24 — 58 gaps",
        "pattern": "58",
        "context_patterns": ["58 gap", "58 source gap", "97/73/29/58"],
        "search_files": [
            "wiki/log.md",
            "wiki/research/pass-23-24-combined-source-preparation-report.md",
        ],
    },
]


def check_count(repo_root, count_spec):
    """Check if a count is preserved in at least one expected file."""
    for rel_path in count_spec["search_files"]:
        full_path = repo_root / rel_path
        if not full_path.exists():
            continue
        content = full_path.read_text(encoding="utf-8", errors="replace")
        for ctx in count_spec["context_patterns"]:
            if ctx in content:
                return True, rel_path
    return False, None


def main():
    repo_root = find_repo_root()

    print("=" * 60)
    print("check_pass_counts.py — Preserved Count Validation")
    print("=" * 60)
    print()

    failures = []
    passes = []

    for spec in EXPECTED_COUNTS:
        found, in_file = check_count(repo_root, spec)
        if found:
            passes.append(f"{spec['label']} -> found in {in_file}")
            print(f"  OK: {spec['label']}")
        else:
            failures.append(spec["label"])
            print(f"  FAIL: {spec['label']} — not found in expected files")

    print()
    print("-" * 60)
    print(f"  Passed: {len(passes)}/{len(EXPECTED_COUNTS)}")
    print(f"  Failed: {len(failures)}/{len(EXPECTED_COUNTS)}")

    if failures:
        print()
        print("MISSING COUNTS:")
        for f in failures:
            print(f"  - {f}")
        print()
        print("RESULT: FAIL")
        sys.exit(1)
    else:
        print()
        print("RESULT: PASS")
        print("  Pass 22: 32 total / 15 evidence_packet_created / 9 still_blocked [OK]")
        print("  Pass 23+24: 97 candidates / 73 inventory rows / 29 packages / 58 gaps [OK]")
        sys.exit(0)


if __name__ == "__main__":
    main()
