# Pass 25.4.1 — Next Actions

> **Date:** 2026-06-25
> **Prerequisite:** Pass 25.4.1 accepted

## Immediate Next

### Option A — Pass 26: Priority Claim Mapping Batch A

**Conditions:** Pass 25.4.1 accepted, human confirms tooling risk acceptable.

- Begin claim mapping for highest-priority character clusters
- Use `check_claim_map_schema.py` to validate output tables
- Expected output: claim-map markdown tables with 10 required columns

### Option B — Pass 25.4.2: Validator Fix Patch

**Conditions:** Only if validators revealed blocking issues (they did not).

- Not currently needed — all validators pass
- Reserved for future use if Pass 26 claim-map validator reveals schema issues

## Deferred Work

| Item | Priority | When |
|------|----------|------|
| Run `git add --renormalize .` for line-ending consistency | P2 | After human reviews .gitattributes on all platforms |
| Patch 32 hardcoded paths in _tools/ | P2 | Tooling sprint or Pass 25.4.2 |
| Create remaining validators (check_character_inventory, check_absolute_links, check_encoding_risks) | P3 | Before Pass 31 QA |
| Consolidate duplicate generate_manual_profiles scripts | P3 | Tooling sprint |

## Recommended

**Pass 26 — Priority Claim Mapping Batch A** is the recommended next step. The tooling baseline is now sufficient to support claim mapping work with schema validation.
