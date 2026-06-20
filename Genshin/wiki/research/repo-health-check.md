# Repository Health Check

Generated: 2026-06-20 — Pass 1 Structural Audit

## Folder Status Table

| Folder | Exists? | Content quality | Usable as source? | Main risks | Notes |
| ------ | ------- | --------------- | ----------------- | ---------- | ----- |
| sources/weapon_stories/ | Yes | source_rich | primary_source_candidate | None identified | 227 files, full in-game weapon narratives (Vietnamese) |
| sources/artifact_descriptions/ | Yes | source_rich | primary_source_candidate | None identified | 61 files, full artifact set lore |
| sources/book_texts/ | Yes | source_rich | primary_source_candidate | None identified | 79 files, in-game book/scroll content |
| sources/voice_lines/characters/ | Yes | source_rich | primary_source_candidate | None identified | 96 files, character dialogue indexed by type |
| sources/voice_lines/archon_quests/ | Yes | source_rich | primary_source_candidate | None identified | 124 files, main story quest dialogue transcripts |
| sources/voice_lines/world_quests/ | Yes | source_rich | primary_source_candidate | Very limited coverage | Only 4 files vs 124 archon quest files |
| sources/manga_transcripts/ | Yes | source_rich | primary_source_candidate | Summary-level, not full dialogue | 21 files, metadata + plot summaries |
| sources/character_stories/ | **No** | missing | missing | Critical gap | Character story texts not present in workspace |
| sources/quest_dialogue/ | **No** | missing | missing | Partially covered by voice_lines/ | No dedicated quest_dialogue folder |
| sources/official/ | **No** | missing | missing | No official announcements/developer notes | Not present |
| quests/ | Yes | skeleton_only | not_source | 100% empty skeletons | 56 files, zero raw dialogue content |
| entities/ | Yes | template_only (74%) | indirect_only (most) | Shells treated as content | 649 files; only nations/celestial_beings/char_intelligence have substance |
| entities/character_intelligence/ | Yes | partial | secondary_only | Mixes canon with interpretation | 109 psychology profiles; not primary source |
| topics/ | Yes | summary_only | indirect_only | Theory contamination risk | 9 files; Nod-Krai analysis + relationships |
| wiki/ | Yes | claim_level | source_index_only | Governance layer, not raw source | 73 files; well-governed synthesis |
| foundation/ | Yes | summary_only | not_source | Historical governance only | 17 governance docs |
| planning/ | Yes | template_only | not_source | Archived brainstorming | 10 files, explicitly archived |
| scratch/ | Yes | unknown | not_source | Temporary utility scripts | 10 PS1 scripts |

## High-Level Findings

### Strongest Source Areas
- **sources/weapon_stories/** (227 files) — comprehensive, source-rich
- **sources/voice_lines/archon_quests/** (124 files) — main story dialogue
- **sources/voice_lines/characters/** (96 files) — character voice lines
- **sources/book_texts/** (79 files) — in-game books
- **sources/artifact_descriptions/** (61 files) — artifact lore

### Weakest Source Areas
- **sources/voice_lines/world_quests/** — only 4 files (massive gap)
- **sources/character_stories/** — missing entirely
- **sources/quest_dialogue/** — missing entirely
- **sources/official/** — missing entirely

### Missing Folders
- sources/character_stories/
- sources/quest_dialogue/
- sources/official/

### Empty/Template-Heavy Folders
- quests/ — 100% empty (56 skeleton files)
- entities/weapons/ — 98% template (234 files)
- entities/artifact_sets/ — 100% template (61 files)
- entities/characters/ — 95% template (119 files)
- entities/books/ — 95% template (70 files)
- entities/gods_and_archons/ — 85% template (13 files)
- entities/items_and_materials/ — empty directory
- entities/races/ — empty directory

### Urgent Source Gaps
1. Character stories (personal backstory text) — missing folder
2. World quest dialogue — only 4 of potentially hundreds of quests
3. Nod-Krai Acts II–VII — referenced but no source files exist
4. Dottore/Sandrone — blocked in wiki audit due to missing sources

## Do Not Use As Source

The following folders/file groups must NOT be used as canon proof:

| Folder/Group | Reason |
| ------------ | ------ |
| quests/ (all 56 files) | Empty skeletons with no dialogue content |
| entities/weapons/ (234 files) | Template metadata only; link to sources/ for actual lore |
| entities/artifact_sets/ (61 files) | Template metadata only |
| entities/characters/ (119 files) | Template metadata only |
| entities/books/ (70 files) | Template metadata only |
| entities/gods_and_archons/ (most) | 85% template-only shells |
| entities/items_and_materials/ | Empty directory |
| entities/races/ | Empty directory |
| planning/ (all 10 files) | Archived brainstorming, not canon |
| foundation/ (all 17 files) | Governance docs, not canon claims |
| scratch/ (all 10 files) | Temporary utility scripts |
| topics/ (all 9 files) | Indirect analysis with theory risk; verify against sources/ |
