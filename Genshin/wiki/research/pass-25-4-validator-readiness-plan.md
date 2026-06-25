# Pass 25.4 — Validator Readiness Plan

**Date:** 2026-06-25
**Status:** Complete — awaiting human review

---

## Current Validator Coverage

| Validator Need | Existing Tool | Coverage | Gap | Priority |
|---|---|---|---|---|
| Source-index duplicate Source ID check | none | 0% | Full gap | P1 (before Pass 26) |
| Source-index path existence check | none | 0% | Full gap | P1 (before Pass 26) |
| Empty/non-evidence source detection | none (manual in Pass 25.2) | partial | No automation | P2 |
| Project-state supersession check | none (manual in Pass 25.1) | partial | No automation | P2 |
| Absolute link check (current wiki) | validate_links.ps1 | ~70% | Hardcoded path, no CI | P2 |
| Encoding/mojibake scan | none (manual in Pass 25.3) | partial | No automation | P3 |
| Pass count consistency check | none | 0% | Full gap | P2 |
| Claim-map schema validation | none | 0% | Full gap | P1 (before Pass 26) |
| Character inventory/page consistency | none | 0% | Full gap | P2 |
| Template-v2 section coverage | none | 0% | Full gap | P3 |

---

## Existing Tool Assessment

### validate_links.ps1

- **What it does:** scans all .md files for `file:///` links, checks if targets exist
- **Limitations:** hardcoded to `d:\LoreResseach\Genshin`, no relative-path support, no CI integration
- **Usable for Pass 26?** Yes, if run manually on the correct machine. Not portable.
- **Verdict:** Functional but fragile. Future replacement should use relative paths.

---

## Proposed Validator Plan (Pass 26+ / Pass 31)

### Recommended scripts

```text
_tools/validators/check_source_index.py
_tools/validators/check_pass_counts.py
_tools/validators/check_current_state.py
_tools/validators/check_claim_map_schema.py
_tools/validators/check_character_inventory.py
_tools/validators/check_absolute_links.py
_tools/validators/check_encoding_risks.py
```

### Design Principles

1. **Derive repo root dynamically** — never hardcode paths
2. **Read-only by default** — validators report, never modify
3. **Exit codes** — 0 = pass, 1 = findings, 2 = error
4. **JSON + markdown output** — machine-readable + human-readable
5. **No external dependencies** — stdlib only (Python 3.8+)
6. **Composable** — each validator is standalone, can run individually or as suite

---

### Validator Specifications

#### 1. check_source_index.py (P1)

**Input:** `wiki/sources/source-index.md`
**Checks:**
- No duplicate Source IDs
- All referenced file paths exist on disk
- Source ID format matches `SRC-XXXX-NNN` pattern
- No orphaned entries (path exists but file is empty AND not registered as empty)

**Output:** JSON array of findings + summary markdown

---

#### 2. check_pass_counts.py (P2)

**Input:** `wiki/research/pass-*` files
**Checks:**
- Pass 22: total=32, evidence_packet_created=15, still_blocked=9
- Pass 23+24: candidates=97, inventory=73, packages=29, gaps=58
- Future passes preserve or explicitly supersede prior counts
- Pass status matrix entries match existing pass reports

**Output:** Table of expected vs actual counts

---

#### 3. check_current_state.py (P2)

**Input:** `wiki/research/pass-*-current-source-of-truth.md`, `pass-*-next-actions.md`
**Checks:**
- Only one "current source of truth" file is active (latest pass)
- Superseded reports are correctly marked
- Next-actions from latest pass are not contradicted by newer pass

**Output:** Supersession chain + conflict list

---

#### 4. check_claim_map_schema.py (P1)

**Input:** Future claim-map outputs (Pass 26+)
**Checks:**
- Each claim has: claim_id, character, domain, evidence_type, source_ids[], confidence
- source_ids reference valid entries in source-index
- confidence ∈ {confirmed, strongly_implied, implied, speculative, contradicted}
- No claim references non-existent character page

**Output:** Schema validation report

---

#### 5. check_character_inventory.py (P2)

**Input:** `entities/characters/`, `wiki/` character references
**Checks:**
- Every character folder has expected template sections
- Character names in wiki cross-references match actual folder names
- No orphaned character folders (exist but never referenced)

**Output:** Consistency matrix

---

#### 6. check_absolute_links.py (P2)

**Input:** All `.md` files under `wiki/`
**Checks:**
- No `file:///` absolute links
- No `D:\` or `d:\` drive-letter paths in content
- Relative links resolve to existing files
- No broken internal cross-references

**Output:** Link audit report (replaces validate_links.ps1 long-term)

---

#### 7. check_encoding_risks.py (P3)

**Input:** All `.md` files in repo
**Checks:**
- UTF-8 validity (no invalid byte sequences)
- Mojibake patterns (common Vietnamese/CJK corruption signatures)
- BOM detection
- Mixed line endings within single file

**Output:** Encoding risk register

---

## Implementation Timeline

| Phase | Validators | When |
|---|---|---|
| Before Pass 26 | check_source_index, check_claim_map_schema | Immediate priority |
| Before Pass 31 QA | check_pass_counts, check_current_state, check_character_inventory | After Pass 26 delivery |
| Ongoing hygiene | check_absolute_links, check_encoding_risks | Can be built anytime |

---

## Note

These validators are **specifications only** in this pass. No scripts are created. Implementation requires explicit human approval and should be a dedicated tooling pass (Pass 25.4.1 or separate).
