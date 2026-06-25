# Pass 25.4.1 — Validator Run Report

> **Date:** 2026-06-25
> **Type:** Execution results

## Run Environment

- Python 3.12
- Windows 10 Pro
- Encoding: cp1252 console (UTF-8 file I/O)

## Results Summary

| Validator | Exit Code | Result | Duration |
|-----------|-----------|--------|----------|
| check_source_index.py | 0 | PASS | <1s |
| check_current_state.py | 0 | PASS | <1s |
| check_claim_map_schema.py | 0 | No-op (no file) | <1s |
| check_pass_counts.py | 0 | PASS | <1s |

## Detailed Output

### check_source_index.py

```
============================================================
check_source_index.py — Source Index Validation
============================================================
  total_source_ids:              54
  unique_source_ids:             54
  duplicate_ids:                 0
  missing_paths:                 0
  intentional_missing_or_retired:2
  stale_active_paths:            0

INTENTIONAL MISSING/RETIRED: 2 entries (OK)

RESULT: PASS
```

### check_current_state.py

```
============================================================
check_current_state.py — Current State Validation
============================================================

--- Check 1: Required current-state files ---
  OK: wiki/research/pass-25-1-current-source-of-truth.md

--- Check 2: project-state-* supersession banners ---
  OK (superseded): project-state-character-coverage-summary.md
  OK (superseded): project-state-file-inventory.md
  OK (superseded): project-state-loreresearch-current-report.md
  OK (superseded): project-state-next-actions.md
  OK (superseded): project-state-pass-status-matrix.md
  OK (superseded): project-state-qa-findings.md
  OK (superseded): project-state-source-governance-summary.md
  OK (superseded): project-state-source-missing-and-risk-register.md

--- Check 3: Stale phrases in non-superseded files ---
  OK: No stale phrases in active files

------------------------------------------------------------
  Failures: 0
  Warnings: 0

RESULT: PASS
```

### check_claim_map_schema.py

```
check_claim_map_schema.py — Claim Map Schema Validator

Usage: python check_claim_map_schema.py --file <path>

No file specified. No-op mode. Exit 0.

Required columns: claim_id, claim_group, subject, claim_text, source_evidence_id,
  source_file, support_status, risk_level, human_review_required, recommended_action
Allowed support_status values: direct_support_candidate, partial_support_only,
  context_only, evidence_found_guarded, requires_human_review, ...
```

### check_pass_counts.py

```
============================================================
check_pass_counts.py — Preserved Count Validation
============================================================

  OK: Pass 22 — 32 total claims
  OK: Pass 22 — 15 evidence_packet_created
  OK: Pass 22 — 9 still_blocked
  OK: Pass 23+24 — 97 candidates
  OK: Pass 23+24 — 73 inventory rows
  OK: Pass 23+24 — 29 packages
  OK: Pass 23+24 — 58 gaps

------------------------------------------------------------
  Passed: 7/7
  Failed: 0/7

RESULT: PASS
  Pass 22: 32 total / 15 evidence_packet_created / 9 still_blocked [OK]
  Pass 23+24: 97 candidates / 73 inventory rows / 29 packages / 58 gaps [OK]
```

## Issues Found

None. All validators pass or operate in expected no-op mode.

## Actionable Items for Future Passes

- Run `check_claim_map_schema.py --file <path>` once Pass 26 produces claim-map output.
- Consider adding `check_character_inventory.py`, `check_absolute_links.py`, `check_encoding_risks.py` in a future tooling pass.
