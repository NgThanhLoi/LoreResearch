# Pass 25.6 — Structured Reference Controlled Import Plan

**Date:** 2026-06-25  
**Status:** Plan only — no raw data imported  
**Prerequisite:** Pass 25.5 External Reference Intelligence Layer Bootstrap (accepted)

---

## Doctrine reminder

- Graph edge is not proof.
- Dictionary entry is not lore evidence.
- Structured references guide; they do not prove.
- No external reference may be used as canon without primary-source provenance, claim mapping, and human review.

---

## 1. Genshin Lore Graph

| Field | Value |
|-------|-------|
| source_name | Genshin Lore Graph |
| tier | structured_reference / graph_reference |
| purpose | Relationship candidate discovery, entity context, worldview concept lookup |
| expected_input_files_or_endpoints | `character_graph.json`, `lookup_by_name.json`, `relationships.jsonl`, `ontology_model.json` |
| recommended_import_mode | **manifest_only** now; **controlled_subset** in Pass 25.8 |
| recommended_storage_location | `_data/external/structured_reference/genshin-lore-graph/` |
| raw_data_policy | Raw files stored in `raw/` subfolder, never referenced directly by wiki pages |
| normalized_data_policy | Normalized indexes in `normalized/` after schema mapping review |
| index_outputs | `graph_entity_lookup.json`, `worldview_concept_lookup.json`, `relationship_candidate_index.json` |
| version_metadata_required | upstream commit hash, retrieved_at timestamp |
| checksum_required | SHA-256 per file |
| freshness_policy | Refresh check monthly or before major claim batches |
| repo_bloat_risk | Medium — 613 nodes + 585 edges + 135 concepts + 818 aliases; manageable if subset |
| license/copyright_review_needed | Yes — must verify license before any import |
| recommended_followup_pass | Pass 25.8 — Graph Reference Controlled Import |
| not_allowed_uses | Canon proof, source-status upgrade, claim mapping without primary source |

---

## 2. genshin-langdata

| Field | Value |
|-------|-------|
| source_name | genshin-langdata |
| tier | alias_reference / terminology_reference |
| purpose | Multilingual alias resolution, terminology normalization, entity name mapping |
| expected_input_files_or_endpoints | 36 dictionary files covering characters, artifacts, weapons, items, quests, dialogue, locations, organizations, story terms |
| recommended_import_mode | **manifest_only** now; **controlled_subset** in Pass 25.7 (characters/organizations/locations/story terms first) |
| recommended_storage_location | `_data/external/alias_reference/genshin-langdata/` |
| raw_data_policy | Raw dictionary files in `raw/`, organized by category |
| normalized_data_policy | Alias index entries extracted to `normalized/` with conflict flags |
| index_outputs | `alias_index.json`, `entity_name_map.json`, `term_multilang_map.json` |
| version_metadata_required | upstream commit hash, retrieved_at timestamp |
| checksum_required | SHA-256 per file |
| freshness_policy | Refresh check before alias-index rebuild; alias conflict review required after each refresh |
| repo_bloat_risk | Low-Medium — dictionary files are text/JSON, but 36 files across languages can grow |
| license/copyright_review_needed | Yes — must verify license before import |
| recommended_followup_pass | Pass 25.7 — Alias / Terminology Index Build |
| not_allowed_uses | Lore evidence, canon proof, source-status upgrade, relationship claims |

---

## 3. Project Amber

| Field | Value |
|-------|-------|
| source_name | Project Amber (gi.yatta.moe) |
| tier | structured_database_reference |
| purpose | Item/book/artifact/weapon metadata lookup, source-gap cross-check support |
| expected_input_files_or_endpoints | API endpoints for items, books, artifacts, weapons metadata |
| recommended_import_mode | **metadata_only** — controlled lookup plan, no bulk dump |
| recommended_storage_location | `_data/external/structured_reference/project-amber/` |
| raw_data_policy | No bulk raw dump; selective metadata snapshots only |
| normalized_data_policy | Normalized lookup tables for cross-reference only |
| index_outputs | Item/book/artifact/weapon metadata indexes (deferred) |
| version_metadata_required | API version or snapshot date, retrieved_at timestamp |
| checksum_required | SHA-256 per snapshot file |
| freshness_policy | Refresh only for item/book/artifact/weapon pass; no auto-canon upgrade |
| repo_bloat_risk | Low if metadata_only; high if bulk dump (not planned) |
| license/copyright_review_needed | Yes — API terms of use review required |
| recommended_followup_pass | SR-04 / item-book-artifact cross-check pass |
| not_allowed_uses | Primary proof, canon evidence, source-status upgrade without provenance |

---

## 4. GenshinTextSearch

| Field | Value |
|-------|-------|
| source_name | GenshinTextSearch |
| tier | tooling_reference / search_utility |
| purpose | Multilingual text/voice search for candidate discovery |
| expected_input_files_or_endpoints | Local tool setup; search index files |
| recommended_import_mode | **local_tool_only** — feasibility assessment, no data import |
| recommended_storage_location | `_data/external/tooling_reference/genshin-text-search/` |
| raw_data_policy | No raw data import; tool documentation and setup notes only |
| normalized_data_policy | N/A — tool produces search results, not stored data |
| index_outputs | None stored; search results are ephemeral candidates |
| version_metadata_required | Tool version, last index update date, Genshin patch version covered |
| checksum_required | N/A for tool; checksum for any cached result sets if stored |
| freshness_policy | Must compare to current Genshin version; if stale by major patch range, use only as fallback |
| repo_bloat_risk | None if tool-only; risk only if search indexes stored locally |
| license/copyright_review_needed | Yes — tool license review |
| recommended_followup_pass | SR-06 / local search feasibility |
| not_allowed_uses | Evidence, canon proof, any claim based solely on search hit |

---

## Sources mentioned but not planned for deep import now

| Source | Tier | Reason deferred |
|--------|------|-----------------|
| HoYoWiki | official_site_support | Separate SR-03 / official provenance pass |
| GenshinLore | secondary_synthesis | Separate SR-05 / quarantine policy |
| BWiki | CN community cross-check | Separate SR-05 |
| Moegirl, Baidu, Bilibili, World Tree | quarantine / research hint | Quarantine tier only |
| @mihoyo-kit/genshin-api | low-priority | Skip for LoreResearch |

---

## Verification checklist

- [x] Pass 25.5 _data/external README paths verified
- [x] Genshin Lore Graph import plan created
- [x] genshin-langdata import plan created
- [x] Project Amber import plan created
- [x] GenshinTextSearch import/tool plan created
- [x] storage layout defined
- [x] manifest schema defined
- [x] alias index schema defined
- [x] graph edge schema defined
- [x] versioning policy defined
- [x] checksum policy defined
- [x] freshness policy defined
- [x] validator impact plan created
- [x] no full external data import performed
- [x] no source-index modified
- [x] no source IDs created
- [x] no character pages modified
- [x] no sources/** modified
- [x] no claim mapping performed
- [x] no canon/source-status upgrades
- [x] Pass 22 counts preserved (32 total / 15 evidence_packet_created / 9 still_blocked)
- [x] Pass 23+24 counts preserved (97 candidates / 73 inventory rows / 29 packages / 58 gaps)
- [x] no fanfic content added
