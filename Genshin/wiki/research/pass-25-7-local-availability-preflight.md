# Pass 25.7 — Local Availability Preflight

**Date:** 2026-06-25  
**Purpose:** Check local availability of external data sources before controlled import.

---

## Checks performed

| Path | Status |
|------|--------|
| `_data/external/alias_reference/genshin-langdata/` | ❌ missing |
| `_data/external/alias_reference/genshin-langdata/raw/` | ❌ missing |
| `_data/external/alias_reference/genshin-langdata/manifest.json` | ❌ missing |
| `_data/external/structured_reference/genshin-lore-graph/` | ❌ missing |
| `_data/external/structured_reference/genshin-lore-graph/lookup_by_name.json` | ❌ missing |
| `_data/indexes/` | ❌ missing |
| `_tools/validators/` | ✅ exists (4 validators present) |

---

## Existing validators

```text
_tools/validators/check_claim_map_schema.py
_tools/validators/check_current_state.py
_tools/validators/check_pass_counts.py
_tools/validators/check_source_index.py
```

---

## Search for langdata/xicri content in repo

- No raw genshin-langdata files found anywhere in repo.
- References to "langdata" appear only in Pass 25.5/25.6 planning documents.
- Reference to "xicri" appears only in `pass-25-5-external-source-candidate-register.md`.
- No local clone, no cached data, no partial extracts found.

---

## Conclusions

| Source | Locally available | Network retrieval used | Can proceed with controlled import |
|--------|------------------|----------------------|-----------------------------------|
| genshin-langdata | No | No | **No** — deferred, schema-only mode |
| Genshin Lore Graph lookup_by_name | No | No | **No** — deferred to Pass 25.8 |

---

## Decision

Pass 25.7 proceeds in **deferred mode**:

- Create planned manifest template (marked `import_status: deferred_missing_local_data`)
- Create schema files for alias_index, entity_name_map, term_multilang_map
- Create all reports in deferred/planned state
- Create check_alias_index.py validator (can validate schema compliance once data arrives)

**No network retrieval performed. No external data fetched.**

To complete the actual import, the human must provide:
1. A local clone of `github.com/xicri/genshin-langdata` placed at `_data/external/alias_reference/genshin-langdata/raw/`
2. Or explicit approval to run a git clone command

This will be addressed in **Pass 25.7.1 — genshin-langdata Local Data Provision / Alias Import Patch**.
