# Pass 25.3 — Next Actions

**Date:** 2026-06-25  
**Type:** Planning  
**Scope:** Recommended actions after Pass 25.3 acceptance

---

## Immediate Next Pass

**Pass 25.4 — Tooling / Git Hygiene / Validator Readiness Audit**

Scope:
- Audit _tools/ scripts for correctness and relevance
- Check git hygiene (large files, binary blobs, .gitignore completeness)
- Assess validator/linter readiness for automated checks
- Review delivery zip file sizes and necessity
- Confirm no orphaned temp files in scratch/

---

## Deferred Maintenance Actions (from Pass 25.3 findings)

### Priority 1 — Wiki Entity Link Fix

| File | Issue | Effort |
|------|-------|--------|
| wiki/entities/characters/Venti.md | 6 absolute links → relative | small |

### Priority 2 — Source Header Encoding Fix

| Files | Issue | Effort |
|-------|-------|--------|
| sources/book_texts/nod-krai/*.md (7 files) | Vietnamese header mojibake | small |

### Priority 3 — Wiki Annotation Encoding Fix

| Files | Issue | Effort |
|-------|-------|--------|
| wiki/entities/characters/Kinich.md | Vietnamese annotation mojibake | trivial |
| wiki/entities/characters/Nahida.md | Vietnamese annotation mojibake | trivial |
| wiki/synthesis/contradiction-register.md | Vietnamese text mojibake | trivial |

### Priority 4 — Research Report Links (Cosmetic)

| Files | Issue | Effort |
|-------|-------|--------|
| wiki/research/pass-nk-*.md (17 files) | Absolute path references | cosmetic only |

### No Action Required

| Layer | Reason |
|-------|--------|
| _Index.md | Legacy generated — will not be maintained |
| entities/ (456 files) | Raw layer — links are artifacts of generation |
| quests/ (28 files) | Legacy skeleton — historical only |
| foundation/ (8 files) | Superseded — historical only |

---

## After Pass 25.4

**Pass 26 — Priority Claim Mapping Batch A** (requires human review decision)

Pass 26 should NOT begin until:
1. Pass 25.4 is completed and accepted
2. Human explicitly authorizes progression to claim mapping
3. Pass 22 evidence packets have been reviewed

---

## Decision Required

No human decision required for Pass 25.4 to proceed. It is the natural next stabilization step.

Pass 26 requires explicit human authorization.
