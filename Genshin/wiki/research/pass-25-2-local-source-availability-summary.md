# Pass 25.2 — Local Source Availability Summary

## Date

2026-06-25

---

## Source Folders Present

| Folder | File Count | Notes |
|---|---|---|
| `sources/artifact_descriptions/` | 61 | Matches source-index claim (AR-ALL: 61 files) |
| `sources/book_texts/` | 79 | 64 main + 9 Nod-Krai sub + others |
| `sources/character_stories/` | 1 | Only Kaeya (CS-KAEYA-001) |
| `sources/manga_transcripts/` | 21 | Matches source-index claim (MG-ALL: 21 files) |
| `sources/provenance/` | 7 | All under `archon_quests/nod-krai/` (AQ-NK-ACT2 through ACT8) |
| `sources/voice_lines/` | — | Parent folder; contents below |
| `sources/voice_lines/characters/` | 96 | Character voice-line files |
| `sources/voice_lines/archon_quests/` | 124 | Across 26 quest subdirectories |
| `sources/voice_lines/world_quests/` | 4 | 2 quest groups (Enkanomiya + promise quest) |
| `sources/weapon_stories/` | 227 | Matches source-index claim (WS-ALL: 227 files) |

**Total local source files: ~620**

---

## Source Folders Missing (Confirmed Absent)

| Folder | Status | Notes |
|---|---|---|
| `sources/quest_dialogue/` | MISSING | Intentional. Legacy retired. Source-index correctly marks as `legacy_retired / not_source`. |
| `sources/official/` | MISSING | Intentional. Not locally available. Source-index correctly marks as `Unusable`. |
| `sources/event/` | MISSING | Not created. No event source files exist. |
| `sources/events/` | MISSING | Not created. No events source files exist. |

---

## Provenance Subdirectory Detail

| Path | Files |
|---|---|
| `sources/provenance/archon_quests/nod-krai/` | 7 (AQ-NK-ACT2 through AQ-NK-ACT8) |

These are metadata/revision index files only — no full transcripts stored locally.

---

## Topics Folder (Non-Source Reference)

| Path | Files |
|---|---|
| `topics/nod-krai/` | 7 (story_summary, mythology, geography, factions_deep_dive, timeline, connections_to_other_regions, missing_coverage_report) |
| `topics/relationships/` | present (not audited this pass) |

---

## Cross-Reference with Source-Index Claims

| Source-Index Claim | Claimed Count | Actual Count | Match? |
|---|---|---|---|
| WS-ALL: 227 files | 227 | 227 | ✅ |
| AR-ALL: 61 files | 61 | 61 | ✅ |
| MG-ALL: 21 files | 21 | 21 | ✅ |
| VLAQ-ALL: 124+ files | 124+ | 124 | ✅ |
| VLWQ-ALL: 4 files | 4 (implied) | 4 | ✅ |

---

## Notes

- Missing folders are NOT treated as proof of source absence for claims.
- Folder existence alone does not constitute evidence.
- Empty/near-empty files within existing folders are registered separately (see pass-25-2-empty-dialogue-and-non-evidence-register.md).
