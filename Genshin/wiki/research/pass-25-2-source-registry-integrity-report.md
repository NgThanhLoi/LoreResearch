# Pass 25.2 — Source Registry Integrity Report

## Date

2026-06-25

## Status

COMPLETE — pending human review

---

## Source-Index Audit Summary

| Metric | Value |
|---|---|
| total_source_ids | 54 |
| unique_source_ids | 54 |
| duplicate_source_ids | 0 |
| entries_with_existing_paths | 51 |
| entries_with_missing_paths | 3 |
| intentional_missing_or_retired_entries | 2 |
| stale_or_misleading_entries | 1 |
| entries_patched | 1 |
| entries_not_patched | 0 |

---

## Suspicious Entry Register

### Entry 1: QD-ALL (Intentional — No Patch)

| Field | Value |
|---|---|
| source_id | QD-ALL |
| current_path | `sources/quest_dialogue/` |
| path_exists | NO |
| current_status | legacy_retired / not_source |
| problem_type | intentional_missing |
| recommended_action | preserve as-is; already correctly marked |
| patch_applied | NO |
| notes | Source-index already states "Legacy retired. Folder does not exist." Correctly designated. |

### Entry 2: OF-ALL (Intentional — No Patch)

| Field | Value |
|---|---|
| source_id | OF-ALL |
| current_path | `sources/official/` |
| path_exists | NO |
| current_status | Unusable |
| problem_type | intentional_missing |
| recommended_action | preserve as-is; already correctly marked |
| patch_applied | NO |
| notes | Source-index already states "Thư mục không tìm thấy trong workspace." Correctly designated. |

### Entry 3: TP-0002 (Stale Path — Patched)

| Field | Value |
|---|---|
| source_id | TP-0002 |
| current_path (before) | `topics/nod-krai/Nod_Krai.md` (hoặc tương đương) |
| current_path (after) | `topics/nod-krai/story_summary.md` |
| path_exists (before) | NO |
| path_exists (after) | YES |
| current_status | Low/Medium |
| problem_type | stale_path |
| recommended_action | Replace with verified local file |
| patch_applied | YES |
| notes | `Nod_Krai.md` never existed. `story_summary.md` header is "Tóm Tắt Cốt Truyện Nod-Krai (Story Summary & Archon Quests)" — a direct semantic match to the entry description "Tóm tắt Acts II-VII, version 6.1-6.7". No source ID created; no reliability upgrade. |

---

## Verification Checklist

- [x] source-index inspected
- [x] duplicate source IDs checked (0 duplicates)
- [x] missing paths checked (3 identified; 2 intentional, 1 patched)
- [x] intentional retired/missing source folders preserved (QD-ALL, OF-ALL)
- [x] TP-0002 / stale Nod-Krai topic path resolved (patched to story_summary.md)
- [x] empty dialogue/non-evidence candidates checked
- [x] local source availability summarized
- [x] Pass 22 counts preserved (32 total / 15 evidence_packet_created / 9 still_blocked)
- [x] Pass 23+24 counts preserved (97 / 73 / 29 / 58)
- [x] no character pages modified
- [x] no sources/** modified
- [x] no new source IDs created
- [x] no external/web/API used
- [x] no source ingestion performed
- [x] no claim mapping performed
- [x] no canon/source-status upgrades
- [x] no fanfic content added
