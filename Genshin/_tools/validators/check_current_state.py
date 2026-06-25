#!/usr/bin/env python3
"""
check_current_state.py — Pass 25.4.1 Validator

Purpose: Validate that project-state files are properly superseded and
current source-of-truth files exist.

Checks:
  - project-state-* files contain supersession banner
  - Current source-of-truth files exist on disk
  - Stale phrases like "Pass 19 NOT STARTED" are not in active files

Read-only. No network. No file modification.
Exit 0 = pass, Exit 1 = fail.
"""

import re
import sys
from pathlib import Path


def find_repo_root():
    """Derive repo root from this script's location (_tools/validators/)."""
    script_dir = Path(__file__).resolve().parent
    return script_dir.parent.parent


# Files that MUST exist as current source of truth
REQUIRED_CURRENT_FILES = [
    "wiki/research/pass-25-1-current-source-of-truth.md",
]

# Files that should be superseded (contain supersession banner)
PROJECT_STATE_PATTERN = "project-state-*.md"

# Supersession banner phrases (any one is sufficient)
SUPERSESSION_MARKERS = [
    "superseded",
    "SUPERSEDED",
    "historical only",
    "HISTORICAL ONLY",
    "no longer current",
    "replaced by",
    "see pass-25",
]

# Stale phrases that should NOT appear in non-superseded active files
STALE_PHRASES = [
    r"Pass 19\s+NOT STARTED",
    r"Pass 20\s+NOT STARTED",
    r"Pass 21\s+NOT STARTED",
    r"Pass 22\s+NOT STARTED",
    r"Pass 23\s+NOT STARTED",
    r"Pass 24\s+NOT STARTED",
    r"Pass 25\s+NOT STARTED",
]


def main():
    repo_root = find_repo_root()
    research_dir = repo_root / "wiki" / "research"

    failures = []
    warnings = []

    # Check 1: Required current-state files exist
    print("=" * 60)
    print("check_current_state.py — Current State Validation")
    print("=" * 60)
    print()
    print("--- Check 1: Required current-state files ---")

    for rel_path in REQUIRED_CURRENT_FILES:
        full_path = repo_root / rel_path
        if full_path.exists():
            print(f"  OK: {rel_path}")
        else:
            failures.append(f"Missing required file: {rel_path}")
            print(f"  MISSING: {rel_path}")

    # Check 2: project-state-* files have supersession markers
    print()
    print("--- Check 2: project-state-* supersession banners ---")

    ps_files = sorted(research_dir.glob(PROJECT_STATE_PATTERN))
    if not ps_files:
        warnings.append("No project-state-* files found (may have been removed)")
        print("  WARN: No project-state-* files found")
    else:
        for ps_file in ps_files:
            content = ps_file.read_text(encoding="utf-8", errors="replace")
            has_marker = any(m in content for m in SUPERSESSION_MARKERS)
            rel = ps_file.relative_to(repo_root)
            if has_marker:
                print(f"  OK (superseded): {rel}")
            else:
                failures.append(f"No supersession banner: {rel}")
                print(f"  FAIL (no banner): {rel}")

    # Check 3: Stale phrases in active research files
    print()
    print("--- Check 3: Stale phrases in non-superseded files ---")

    # Active files = research files that are NOT project-state-*
    active_files = [
        f for f in research_dir.glob("*.md")
        if not f.name.startswith("project-state-")
    ]

    stale_found = []
    for af in active_files:
        content = af.read_text(encoding="utf-8", errors="replace")
        # Skip files that are themselves superseded
        if any(m in content for m in SUPERSESSION_MARKERS):
            continue
        for pattern in STALE_PHRASES:
            if re.search(pattern, content):
                rel = af.relative_to(repo_root)
                stale_found.append(f"{rel}: matches '{pattern}'")

    if stale_found:
        for s in stale_found:
            print(f"  WARN: {s}")
        warnings.extend(stale_found)
    else:
        print("  OK: No stale phrases in active files")

    # Summary
    print()
    print("-" * 60)
    print(f"  Failures: {len(failures)}")
    print(f"  Warnings: {len(warnings)}")

    if failures:
        print()
        print("FAILURES:")
        for f in failures:
            print(f"  - {f}")
        print()
        print("RESULT: FAIL")
        sys.exit(1)
    else:
        print()
        print("RESULT: PASS")
        if warnings:
            print(f"  ({len(warnings)} warnings — review recommended)")
        sys.exit(0)


if __name__ == "__main__":
    main()
