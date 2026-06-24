# Pass 21 — Local Source Package Inventory

## Date: 2026-06-23

## Overview

Read-only inspection of local source file/folder existence for Pass 21 candidates. File/folder existence is a source availability signal only — it is NOT canon proof.

## Source Package Inventory Table

| Candidate | Local source package type | Local file/folder signal | Source-index status | Feasibility note | Not proof caveat |
|-----------|--------------------------|-------------------------|--------------------|-----------------|--------------------|
| Columbina | mixed (character_intelligence + AQ-NK-ACT4 provenance ref) | entities/character_intelligence/Columbina.md (10,903 bytes); entities/characters/global/Columbina.md (1,324 bytes); source-index lists AQ-NK-ACT4 coverage | AQ-NK-ACT4 listed in source-index; no dedicated Columbina source ID | Character intelligence is analysis-only. AQ-NK-ACT4 reference exists but no extracted transcript for Columbina-specific claims. No voice line file. No character story. No official profile. | File/folder existence is NOT canon proof. character_intelligence is analysis, not primary source. |
| Skirk | analysis_only (global entity profile shell) | entities/characters/global/Skirk.md (1,390 bytes); source-index notes AQ-NK-ACT7 subquest "Where Our Space and Time Intersect" | source-index explicitly states: "Skirk voice line file does not exist locally. VL-0002 was a placeholder TODO and is NOT a valid source ID. Status: source_missing." | Global entity file is a profile shell with no lore content. AQ-NK-ACT7 mention is a subquest reference, not an extracted transcript. No character_intelligence file exists. | File/folder existence is NOT canon proof. Profile shell is not a source. |
| Capitano | none | Zero files matching "Capitano" in sources/ or entities/character_intelligence/ | No source-index entry found | Completely absent from workspace. Not in character_intelligence directory. No voice lines, no quest references, no profile. | File/folder existence is NOT canon proof. Absence means no local signal exists — not that no canon source exists externally. |
| Alice | analysis_only (historical_figures analysis) | entities/historical_figures/Alice.md (3,496 bytes) | No source-index entry found | Historical figures file is an analysis document. Not a primary source. No voice lines (Alice is not playable). No character story file. No event transcripts. No book extracts. | File/folder existence is NOT canon proof. Analysis files are secondary/tertiary, not primary source. |
| Dainsleif | source_index_entry (AQ-NK-ACT7 provenance ref) | Source-index references AQ-NK-ACT7 subquest "Tracing the Footsteps of the Past" | AQ-NK-ACT7 listed in source-index with Dainsleif mention | Provenance index reference only — no extracted dialogue transcript. No dedicated entity file. No character_intelligence. No voice lines (Dainsleif is not playable in standard sense). | File/folder existence is NOT canon proof. A provenance index reference is a pointer, not extracted evidence. |
| Paimon | none (mentioned in others' files only) | Mentioned in 135+ voice line files as dialogue participant; referenced in AQ-NK-ACT2/ACT3/ACT4/ACT7 provenance indices | No dedicated source-index entry for Paimon | Paimon is extensively mentioned as a dialogue participant but has no dedicated source file of any kind. No character_intelligence, no entity file, no voice line file, no profile. | File/folder existence is NOT canon proof. Being mentioned in others' files does not constitute a local source package. |

## Source Directory Existence Summary

| Directory | Exists? | Relevant to Pass 21 candidates? |
|-----------|---------|-------------------------------|
| sources/voice_lines/characters/ | Yes (102 files) | No — none of the 6 candidates have voice line files here |
| sources/character_stories/ | Yes (Kaeya.md only) | No — none of the 6 candidates have entries |
| sources/story_quests/ | No | N/A |
| sources/archon_quests/ | No | N/A (provenance indices reference AQ acts but full transcripts not stored here) |
| sources/world_quests/ | No | N/A |
| sources/events/ | No | N/A |
| sources/books/ | No | N/A |
| sources/artifacts/ | No | N/A |
| sources/manga/ | No (manga_transcripts/ exists separately) | N/A |
| sources/official_profiles/ | No | N/A |
| sources/fatui/ | No | Would be relevant for Columbina, Capitano |
| sources/hexenzirkel/ | No | Would be relevant for Alice |
| sources/traveler/ | No | Would be relevant for Paimon |
| sources/abyss/ | No | Would be relevant for Skirk, Dainsleif |
| sources/khaenriah/ | No | Would be relevant for Dainsleif |
| sources/nod_krai/ | No (sources/book_texts/nod-krai/ exists with 9 files) | Tangentially — Columbina's Nod-Krai lore |
| entities/character_intelligence/ | Yes (122 files) | Columbina has entry — analysis only, NOT primary source |

## Systemic Gaps Affecting All Pass 21 Candidates

1. **No official_profiles/ directory exists** — affects all candidates requiring profile ingestion.
2. **Only Kaeya has a character story file** — systemic gap persists from Pass 20.
3. **No archon quest transcript directory exists** — AQ references in source-index are provenance metadata pointers, not stored transcripts.
4. **No event/book/artifact source directories exist** — affects Alice's route directly.
5. **No fatui/hexenzirkel/abyss/khaenriah directories exist** — faction-specific sources entirely absent.
6. **character_intelligence is analysis, not source** — explicitly excluded from use as primary evidence per wiki governance.

## Conclusion

Zero Pass 21 candidates have sufficient local source packages for provenance work. All require future ingestion passes before claim mapping can proceed.
