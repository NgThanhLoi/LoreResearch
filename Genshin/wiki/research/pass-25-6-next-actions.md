# Pass 25.6 — Next Actions

**Date:** 2026-06-25

---

## Recommended next pass

**Pass 25.7 — Alias / Terminology Index Build**

---

## Pass 25.7 scope

### Primary focus

- genshin-langdata controlled subset import (characters, organizations, locations, story terms)
- Genshin Lore Graph `lookup_by_name.json` import (if license permits)
- Build `alias_index.json`
- Build `entity_name_map.json`
- Build `term_multilang_map.json`
- Alias conflict report
- Implement `check_alias_index.py` validator

### Prerequisites

- Verify genshin-langdata license (blocking)
- Verify Genshin Lore Graph license for lookup_by_name (blocking for that subset)
- Human approval for controlled import (required)

### Expected outputs

```text
_data/external/alias_reference/genshin-langdata/manifest.json
_data/external/alias_reference/genshin-langdata/source-metadata.md
_data/external/alias_reference/genshin-langdata/schema-map.md
_data/external/alias_reference/genshin-langdata/raw/          (subset)
_data/external/alias_reference/genshin-langdata/normalized/   (cleaned entries)
_data/indexes/alias_index.json
_data/indexes/entity_name_map.json
_data/indexes/term_multilang_map.json
_tools/validators/check_alias_index.py
wiki/research/pass-25-7-alias-index-build-report.md
wiki/research/pass-25-7-alias-conflict-report.md
```

### Hard gates for Pass 25.7

```text
- no character page edits
- no source-index changes
- no canon/source-status upgrades
- no claim mapping
- alias index is reference only, never evidence
- dictionary entry is not lore evidence
- human review required for alias conflicts
```

---

## Later passes

| Pass | Focus | Depends on |
|------|-------|-----------|
| Pass 25.8 | Graph Reference Controlled Import | Pass 25.7, license verification |
| Pass 25.9 | External Reference Validator / Guardrail Patch | Pass 25.7, Pass 25.8 |
| Pass 26 | Priority Claim Mapping Batch A | Pass 25.9 validators passing |
| SR-03 | HoYoWiki Official Provenance | Independent |
| SR-04 | Project Amber Cross-Check | Independent, needs API terms |
| SR-05 | Secondary Synthesis / Community Quarantine | Independent |
| SR-06 | GenshinTextSearch Local Feasibility | Independent |

---

## Open questions for human review

1. Should Pass 25.7 proceed with genshin-langdata license check as first step?
2. Priority categories for alias import: characters + organizations + locations + story terms — correct order?
3. Should Genshin Lore Graph lookup_by_name be included in Pass 25.7 or deferred to Pass 25.8?
4. Acceptable alias conflict threshold before human escalation?
