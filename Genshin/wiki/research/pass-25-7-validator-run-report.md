# Pass 25.7 — Validator Run Report

**Date:** 2026-06-25

---

## Validators executed

| Validator | Command | Result | Notes |
|-----------|---------|--------|-------|
| check_alias_index.py | `py _tools/validators/check_alias_index.py` | ✅ PASS (deferred) | Schema exists, awaiting local data provision |
| check_current_state.py | `py _tools/validators/check_current_state.py` | ✅ PASS | All current-state files valid, supersession banners present, no stale phrases |
| check_pass_counts.py | `py _tools/validators/check_pass_counts.py` | ✅ PASS | All 7 counts verified correct |

---

## Detailed results

### check_alias_index.py

```text
[check_alias_index] Found schema file (deferred mode): _data/indexes/alias_index.schema.json
PASS (deferred): alias index deferred — schema exists, awaiting local data provision.
```

### check_current_state.py

```text
--- Check 1: Required current-state files --- OK
--- Check 2: project-state-* supersession banners --- OK (8 superseded)
--- Check 3: Stale phrases in non-superseded files --- OK
```

### check_pass_counts.py

```text
Pass 22: 32 total / 15 evidence_packet_created / 9 still_blocked [OK]
Pass 23+24: 97 candidates / 73 inventory rows / 29 packages / 58 gaps [OK]
Passed: 7/7, Failed: 0/7
RESULT: PASS
```

---

## Validators not run

| Validator | Reason |
|-----------|--------|
| check_claim_map_schema.py | Not relevant to this pass — no claim mapping performed |
| check_source_index.py | Not relevant to this pass — no source-index modified |

---

## Summary

All relevant validators pass. Pass 25.7 is in a clean deferred state with no schema violations.
