# Pass 1 Next Actions

Generated: 2026-06-20 — Pass 1 Structural Audit

## Pass 1 Summary

Pass 1 mapped the complete workspace (1,820 files across 10 top-level folders) and produced structural classifications:

- **612 source files** — all source-rich, primary material (weapon stories, artifacts, books, voice lines, manga)
- **56 quest files** — 100% empty skeletons, zero usable content
- **649 entity files** — 74% template-only; only nations/celestial_beings/character_intelligence have substance
- **9 topic files** — indirect syntheses with theory risk (especially Nod-Krai)
- **73 wiki files** — well-governed synthesis layer with 18 audited character pages
- **27 foundation/planning files** — historical governance only
- **3 missing critical source folders** — character_stories, quest_dialogue, official

The wiki governance layer is comprehensive and well-maintained. The source layer is strong in weapons/artifacts/books/voice_lines but has critical gaps in character stories and world quest dialogue.

## Recommended Pass 2

**Pass 2 should be: Source Ingestion Framework + Priority Queue**

Pass 2 should NOT be full lore backfill. The workspace needs structural preparation before any content creation.

### Pass 2 Tasks

| # | Task | Description | Blocks |
| - | ---- | ----------- | ------ |
| 1 | Create source ingestion templates | Standard format for new source files (character_stories, quest_dialogue) | All source ingestion |
| 2 | Create source ID rules | Naming conventions, ID assignment for new source files | Source index consistency |
| 3 | Create source ingestion queue | Priority-ordered list of sources to ingest | Pass 3 planning |
| 4 | Create priority claim-source map | Which wiki claims need which sources | Character Level 3 audits |
| 5 | Prepare external source candidate rules | Policy for accepting external transcripts/wiki data | Human decision needed |
| 6 | Validate voice_lines coverage | Check which archon quest voice_lines match which quest skeletons | Quest layer usability |

### Pass 2 Rules

- Do NOT ingest unverified web summaries as canon
- Do NOT fill quest skeletons from memory
- Do NOT auto-generate source content
- Source templates must define required metadata fields
- All new source IDs must follow existing wiki/sources/source-index.md conventions

## Recommended Pass 3

**Pass 3: Research and Ingest P0 Source Packages**

Only after Pass 2 framework is in place:

| Priority | Package | Source type needed | Impact |
| -------- | ------- | ------------------ | ------ |
| P0 | Dottore | Voice lines, story quest dialogue, character story | Unblocks Dottore audit |
| P0 | Sandrone | Voice lines, story quest dialogue, character story | Unblocks Sandrone audit |
| P0 | Skirk | Quest dialogue, character interactions | Unblocks Abyss/Third Descender claims |
| P0 | Nod-Krai Acts II–VII | Full quest transcript | Unblocks entire Nod-Krai section |
| P1 | Fontaine final AQ | Quest dialogue (verify voice_lines coverage) | Furina/Focalors/Neuvillette claims |
| P1 | Wanderer Irminsul Interlude | Quest dialogue (verify voice_lines coverage) | Irminsul rewrite claims |
| P1 | Nahida/Rukkhadevata | Quest dialogue (verify voice_lines coverage) | Memory/Irminsul claims |
| P1 | Raiden Ei/Shogun | Quest dialogue (verify voice_lines coverage) | Puppet/consciousness claims |
| P2 | Traveler/Abyss sibling | Cross-quest compilation | Sibling arc claims |
| P2 | Character stories (bulk) | Dedicated character_stories/ folder | Character Level 3 audits |

## What Not To Do Yet

| Do NOT | Reason |
| ------ | ------ |
| Fill 56 quest files from memory | No verifiable source; would create fake canon |
| Fill all 481 entity template shells | Wasted effort without project scope |
| Write story | No premise chosen; no outline exists |
| Choose premise | Foundation/16 explicitly defers this |
| Create outline | Depends on premise selection |
| Upgrade source-light claims | Missing sources; would create unverified canon |
| Backfill Dottore/Sandrone | Blocked until source packages exist |
| Fill Nod-Krai from memory | Acts II–VII explicitly UNVERIFIED in governance |
| Treat character_intelligence as primary | Secondary/interpretive layer only |
| Auto-generate source IDs for missing files | Creates false index entries |

## Suggested Human Review Questions

These decisions require user input before Pass 2 can proceed:

1. **Source archive trust:** Which external source archive should be trusted for quest transcripts? (e.g., Genshin wiki transcription, official data, community compilations)
2. **External ingestion policy:** Should Claude Code ingest external wiki transcription or only work from local files already in the workspace?
3. **Dottore/Sandrone blocking:** Should these characters remain blocked until official source files are imported, or should partial sources be accepted?
4. **Region priority:** Which region/faction should Phase 3.3 prioritize after source audit? (Mondstadt, Liyue, Inazuma, Sumeru, Fontaine, Natlan, Snezhnaya, Nod-Krai)
5. **World quest scope:** Should world quest dialogue be ingested comprehensively, or only for lore-critical quests?
6. **Character stories source:** Where should character_stories/ content come from? (In-game extraction, wiki transcription, manual input)
