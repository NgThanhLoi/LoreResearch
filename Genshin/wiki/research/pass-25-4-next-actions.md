# Pass 25.4 — Next Actions

**Date:** 2026-06-25
**Status:** Complete — awaiting human review

---

## Findings Summary

Pass 25.4 identified:
- 32 hardcoded path instances across 15 tool files (HIGH risk)
- No .gitattributes or .editorconfig (MEDIUM risk for cross-platform)
- 7 network-fetch scripts that must never run in audit passes
- 0 automated validators currently available for Pass 26 needs
- Pass 22 and Pass 23+24 counts are intact and verified

---

## Recommended Next Step

### Option A — Proceed directly to Pass 26 (if acceptable risk)

```text
Pass 26 — Priority Claim Mapping Batch A
```

**Conditions:**
- Human accepts that validators will be manual/agent-driven (no automated scripts)
- Hardcoded paths are documented but not blocking (scripts won't be run in Pass 26)
- Line-ending risk is acknowledged but not actively causing problems

This is viable because Pass 26 is claim-mapping work that does not depend on running _tools/ scripts.

---

### Option B — Pass 25.4.1 Tooling Patch (recommended if time allows)

```text
Pass 25.4.1 — Tooling/Git Hygiene Patch
```

**Scope:**
1. Create `.gitattributes` (line-ending normalization)
2. Create `_tools/validators/check_source_index.py` (P1 validator)
3. Create `_tools/validators/check_claim_map_schema.py` (P1 validator)
4. Add `.gitignore` entry for delivery ZIPs
5. Optionally patch 1–2 tool scripts to use dynamic repo root as proof-of-concept

**Does NOT include:**
- Mass-patching all 32 hardcoded paths
- Running any fetch/mutating scripts
- Character page changes
- Source ingestion

---

## Decision Required

| If... | Then... |
|---|---|
| No P0 blockers for Pass 26 workflow | → Pass 26 directly |
| Human wants validators before claim mapping | → Pass 25.4.1 first |
| Human wants .gitattributes added now | → Pass 25.4.1 first |

---

## Current Source of Truth (after Pass 25.4)

```text
Tooling audit:    wiki/research/pass-25-4-tooling-readiness-audit.md
Path audit:       wiki/research/pass-25-4-hardcoded-path-audit.md
Git hygiene:      wiki/research/pass-25-4-git-hygiene-report.md
Validator plan:   wiki/research/pass-25-4-validator-readiness-plan.md
Risk/guardrail:   wiki/research/pass-25-4-risk-and-guardrail-report.md
Next actions:     wiki/research/pass-25-4-next-actions.md (this file)
```

---

## Do NOT Recommend

- Direct character page update
- Canon/source-status upgrade
- Running fetch scripts
- Mass line-ending normalization
- Claim mapping without human approval of scope
