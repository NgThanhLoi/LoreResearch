# Source Index Alignment Report

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Purpose

Compare `wiki/sources/source-index.md` with the actual `sources/` folder structure and identify mismatches.

## Current Source Folder Inventory

| Folder | Exists? | File count | Markdown count | Expected prefix | Current index coverage | Alignment status | Notes |
| ------ | ------- | ---------: | -------------: | --------------- | ---------------------- | ---------------- | ----- |
| sources/weapon_stories/ | Yes | 227 | 227 | WS | WS-ALL + 5 file-level (WS-0001–0005) | partially_aligned | 222 files unindexed at file level |
| sources/artifact_descriptions/ | Yes | 61 | 61 | AR | AR-ALL + 4 file-level (AR-0001–0004) | partially_aligned | 57 files unindexed at file level |
| sources/book_texts/ | Yes | 79 | 79 | BK | BK-ALL + 4 file-level (BK-0001–0004) | partially_aligned | 75 files unindexed at file level |
| sources/voice_lines/ | Yes | 224 | 224 | VL/VLAQ/VLWQ | VL-ALL + 1 file-level (VL-0001) | partially_aligned | Vast majority unindexed |
| sources/voice_lines/characters/ | Yes | 96 | 96 | VL | 1 indexed (VL-0001 Kaeya) | partially_aligned | 95 files unindexed |
| sources/voice_lines/archon_quests/ | Yes | 124 | 124 | VLAQ | None indexed at file level | folder_exists_but_unindexed | No VLAQ IDs assigned yet |
| sources/voice_lines/world_quests/ | Yes | 4 | 4 | VLWQ | None indexed | folder_exists_but_unindexed | Only 4 files; coverage gap |
| sources/manga_transcripts/ | Yes | 21 | 21 | MG | Not in current index | missing_from_index | Folder exists but no MG-ALL or file-level IDs |
| sources/character_stories/ | **No** | 0 | 0 | CS | Not in index | index_points_to_missing_folder | Folder does not exist |
| sources/quest_dialogue/ | **No** | 0 | 0 | AQ/WQ/SQ/IQ if full transcript folder is later created; legacy QD retired | QD-ALL in index marked "Unusable" | index_points_to_missing_folder | sources/quest_dialogue/ does not exist. Legacy QD/QD-ALL must not be used as proof. Existing quest source material currently lives under sources/voice_lines/archon_quests/ and sources/voice_lines/world_quests/. |
| sources/official/ | **No** | 0 | 0 | OF | OF-ALL in index marked "Unusable" | index_points_to_missing_folder | Already flagged in index |

## Mismatches

| Issue ID | Type | Source index entry | Actual file/folder state | Risk | Recommended fix |
| -------- | ---- | ------------------ | ------------------------ | ---- | --------------- |
| SA-001 | legacy_placeholder_missing_folder | QD-ALL legacy placeholder | sources/quest_dialogue/ does not exist | Medium | Retire QD-ALL. Use VLAQ/VLWQ for existing voice-line quest sources; use AQ/WQ/SQ/IQ only if full transcript files are later ingested. |
| SA-002 | missing_folder | OF-ALL → `sources/official/` | Folder does not exist | Medium | Already marked "Unusable" — keep as-is |
| SA-003 | folder_exists_but_unindexed | N/A | `sources/manga_transcripts/` (21 files) | Low | Add MG-ALL folder-level entry in Pass 3 |
| SA-004 | folder_exists_but_unindexed | N/A | `sources/voice_lines/archon_quests/` (124 files) | Medium | Needs VLAQ sub-index; currently only VL-ALL covers parent |
| SA-005 | folder_exists_but_unindexed | N/A | `sources/voice_lines/world_quests/` (4 files) | Low | Needs VLWQ sub-index |
| SA-006 | placeholder_source_id | VL-0002 (Skirk) mentioned in TODOs | No Skirk file exists | High | Remove from TODOs or mark explicitly as source_missing |
| SA-007 | folder_level_claim | EN-ALL → `entities/` | 74% of entities/ is template-only | Medium | EN-ALL reliability should note most files are not source |
| SA-008 | folder_level_claim | TP-ALL → `topics/` | Theory-heavy content, not primary | Low | Already marked Low/Medium reliability |

## Key Corrections Needed

1. **`quests/` is NOT a source layer.** Quest source material lives under `sources/voice_lines/archon_quests/` (124 files). The 56 empty quest skeleton files under `quests/` provide zero source value.

2. **`sources/voice_lines/archon_quests/` needs its own sub-index.** Currently hidden under VL-ALL umbrella. This is the primary source for archon quest dialogue claims.

3. **`sources/voice_lines/world_quests/` coverage is tiny.** Only 4 files exist. World quest lore claims cannot be sourced from this layer.

4. **`sources/character_stories/` is missing.** No CS-prefixed IDs can be created. Character Level 3 audits are blocked.

5. **`sources/official/` is missing.** No OF-prefixed IDs can be created beyond external candidates.

6. **`sources/manga_transcripts/` is unindexed.** 21 files exist but have no folder-level or file-level IDs in source-index.

7. **Do NOT create IDs for missing files:**
   - No VL-DOTTORE-001 (file does not exist)
   - No VL-SANDRONE-001 (file does not exist)
   - No VL-COLUMBINA-001 (file does not exist)
   - No VL-SKIRK-001 (file does not exist)
   - No CS-* IDs (folder does not exist)

## Recommended Source Index Changes For Pass 3

| Change | Type | Risk | Notes |
| ------ | ---- | ---- | ----- |
| Add MG-ALL for manga_transcripts/ | Add folder-level ID | Low | 21 existing files |
| Add VLAQ-ALL for voice_lines/archon_quests/ | Add folder-level ID | Low | 124 existing files |
| Add VLWQ-ALL for voice_lines/world_quests/ | Add folder-level ID | Low | 4 existing files |
| Remove VL-0002 Skirk TODO | Remove placeholder | Low | File does not exist |
| Continue file-level indexing for VL characters | Incremental indexing | Low | 95 files awaiting IDs |
| Continue file-level indexing for WS/AR/BK | Incremental indexing | Low | Hundreds of files |

Do NOT perform large-scale rewrite of source-index.md in Pass 2. These are recommendations for Pass 3 incremental updates.

## Pass 3 Cleanup Result

| Cleanup item | Status | Files changed | Notes |
| ------------ | ------ | ------------- | ----- |
| Add MG-ALL for manga_transcripts/ | ✓ Done | wiki/sources/source-index.md | Added folder-level entry; 21 files; Medium reliability |
| Add VLAQ-ALL for voice_lines/archon_quests/ | ✓ Done | wiki/sources/source-index.md | Added folder-level entry; 124+ files; High reliability |
| Add VLWQ-ALL for voice_lines/world_quests/ | ✓ Done | wiki/sources/source-index.md | Added folder-level entry; 4 files; coverage limited |
| Retire QD-ALL as legacy_retired / not_source | ✓ Done | wiki/sources/source-index.md | Status changed from "Unusable" to "legacy_retired / not_source" |
| Downgrade VL-0002 Skirk TODO | ✓ Done | wiki/sources/source-index.md | Marked as non-valid placeholder; source_missing; no file exists |
| Confirm no VL-DOTTORE-* IDs in use | ✓ Confirmed | None needed | Only appears in "Bad Source IDs" example table in SOURCE_ID_RULES.md |
| Confirm no CS-DOTTORE-* IDs in use | ✓ Confirmed | None needed | Not found anywhere |
| Confirm no VL-SANDRONE-* IDs in use | ✓ Confirmed | None needed | Not found anywhere |
| Confirm no CS-SANDRONE-* IDs in use | ✓ Confirmed | None needed | Not found anywhere |
| Confirm no VL-COLUMBINA-* IDs in use | ✓ Confirmed | None needed | Only appears in "Bad Source IDs" example table |
| Confirm no CS-COLUMBINA-* IDs in use | ✓ Confirmed | None needed | Not found anywhere |
| Confirm no VL-SKIRK-* IDs in use | ✓ Confirmed | None needed | Only appears in "Bad Source IDs" example table |
| Confirm no CS-SKIRK-* IDs in use | ✓ Confirmed | None needed | Not found anywhere |

### Summary

All P0-Internal Cleanup items from PKG-P0I-001 through PKG-P0I-006 have been completed. No phantom source IDs are in active use. The source-index now correctly reflects the real folder structure.
