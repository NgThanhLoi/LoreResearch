# Pass 25.6 — Validator Impact Plan

**Date:** 2026-06-25  
**Status:** Plan only — no validators implemented

---

## Planned validators

### 1. check_external_reference_policy.py

| Field | Value |
|-------|-------|
| validator_name | check_external_reference_policy |
| purpose | Ensure no external reference is used as canon evidence without primary-source provenance |
| inputs | All wiki character/lore pages, `_data/external/` manifests |
| what_it_flags | Any wiki page citing `_data/external/` as source without corresponding source-index entry with primary provenance |
| when_to_run | Before any pass that touches character pages or claim mapping |
| required_before_pass | Pass 26 (Priority Claim Mapping Batch A) |

---

### 2. check_alias_index.py

| Field | Value |
|-------|-------|
| validator_name | check_alias_index |
| purpose | Validate alias index integrity: no duplicate aliases mapping to different entities, schema compliance |
| inputs | `_data/indexes/alias_index.json`, `_data/indexes/entity_name_map.json` |
| what_it_flags | Duplicate aliases with different entity mappings, missing required fields, invalid language codes, orphan entity references |
| when_to_run | After alias index build or refresh |
| required_before_pass | Pass 25.7 completion |

---

### 3. check_graph_reference.py

| Field | Value |
|-------|-------|
| validator_name | check_graph_reference |
| purpose | Ensure graph edges are marked as candidates only and not used as evidence |
| inputs | `_data/indexes/relationship_candidate_index.json`, wiki relationship pages |
| what_it_flags | Graph edges with `requires_primary_source: false`, `allowed_use` not set to `candidate_context_only`, wiki pages citing graph edges as evidence |
| when_to_run | After graph import or before claim mapping passes |
| required_before_pass | Pass 25.8 completion |

---

### 4. check_reference_not_used_as_canon.py

| Field | Value |
|-------|-------|
| validator_name | check_reference_not_used_as_canon |
| purpose | Global guard: no file in `_data/external/` referenced as canon proof anywhere in wiki |
| inputs | All wiki pages, all files under `_data/external/` |
| what_it_flags | Any wiki page that references a `_data/external/` path as proof, evidence, or canon source without explicit primary-source chain |
| when_to_run | On every commit that touches wiki pages or _data/external |
| required_before_pass | Any pass that modifies character pages or claims |

---

### 5. check_structured_reference_freshness.py

| Field | Value |
|-------|-------|
| validator_name | check_structured_reference_freshness |
| purpose | Detect stale external references and flag them before use |
| inputs | All `manifest.json` files under `_data/external/` |
| what_it_flags | Sources with `retrieved_at` older than freshness threshold, missing checksums, missing upstream version |
| when_to_run | Before any pass that uses external reference data |
| required_before_pass | Pass 25.7, Pass 25.8, any SR pass |

---

## Validator dependency map

```text
Pass 25.7 requires:
  - check_alias_index.py
  - check_structured_reference_freshness.py

Pass 25.8 requires:
  - check_graph_reference.py
  - check_structured_reference_freshness.py

Pass 25.9 implements:
  - All 5 validators above
  - Integration with CI/pre-commit hooks

Pass 26 requires:
  - check_external_reference_policy.py
  - check_reference_not_used_as_canon.py
  - All freshness validators passing
```

---

## Implementation notes

- Validators are Python scripts in `_tools/validators/`
- Each validator exits with code 0 (pass) or 1 (fail) and outputs a structured report
- Validators do NOT modify any files — they are read-only checks
- Validator implementation is planned for Pass 25.9 (External Reference Validator / Guardrail Patch)
- Until Pass 25.9, manual review serves as the guardrail
