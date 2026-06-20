# Source Gap Report

Generated: 2026-06-20 — Pass 1 Structural Audit

## Purpose

Record gaps that block future claim-level wiki work.

## Source Gap Table

| Gap ID | Topic | Affected files/folders | Missing source/content | Current status | Severity | Why it matters | Next action |
| ------ | ----- | ---------------------- | ---------------------- | -------------- | -------- | -------------- | ----------- |
| SG-0001 | Dottore missing sources | wiki character page blocked | No verified `entities/character_intelligence/Dottore.md`; no primary `sources/voice_lines/characters/Dottore.md`; no dedicated quest/dialogue source; no character story source. Only mentioned indirectly in other characters' voice lines. | blocked_by_missing_source | Critical | Dottore cannot be claim-audited. Must not be used as canon-compliant character until source ingestion is done. Any rank, faction, Segments, experiment, or relationship claim remains source_missing unless a physical source is added. | Add Dottore to source ingestion queue in Pass 2. Human/source decision needed: identify trusted archive for Dottore-related source package. |
| SG-0002 | Sandrone missing sources | wiki character page blocked | No voice lines; no character story; no quest dialogue | blocked_by_missing_source | Critical | Cannot complete Sandrone audit | Human review: determine if Sandrone sources exist anywhere |
| SG-0003 | Columbina source-light | wiki page audited_source_light | No primary `sources/voice_lines/characters/Columbina.md` found in workspace; only indirect `entities/character_intelligence/Columbina.md` summary exists; no direct source for Kuutar/Seelie/Moon Maiden identity; no character story source. | audited_source_light / indirect_source_only | High | Columbina can remain Level 2 source-light. Columbina=Kuutar must remain THEORY/UNVERIFIED. Seelie/Moon Maiden/ancient power claims must not be narrator-confirmed canon. No Level 3 upgrade until primary source is ingested. | Add Columbina primary source package to source ingestion queue in Pass 2. Keep Kuutar/Moon/Seelie claims as theory until verified. |
| SG-0004 | Skirk source missing | No dedicated entity/quest file | No Skirk voice lines, no quest transcript, no character story | missing | High | Skirk/Abyss claims unverifiable; Third Descender theory unsupported | Source ingestion when available |
| SG-0005 | Missing quest_dialogue or weak quest layer | quests/ (56 skeleton files) | Zero quest files have dialogue content | empty_skeleton (all 56) | Critical | Cannot verify ANY quest-based lore claims from quests/ layer | voice_lines/archon_quests/ partially covers; world quest gap remains |
| SG-0006 | Missing official source folder | sources/official/ does not exist | No developer notes, announcements, or official statements | missing | Medium | Cannot verify meta-game or developer-intent claims | Create folder when official sources are identified |
| SG-0007 | Missing character_stories folder | sources/character_stories/ does not exist | Character backstory texts not in workspace | missing | Critical | Blocks character entity pages; character audit cannot advance to Level 3 | Priority ingestion target for Pass 2/3 |
| SG-0008 | Nod-Krai Acts II–VII raw source gap | quests/song_of_the_welkin_moon_nod_krai/ (empty); topics/nod-krai/ (theory-heavy) | No raw dialogue, no quest transcript, no verified source | unverified | Critical | All Nod-Krai lore claims are AU-only; blocks entire Nod-Krai wiki section | Requires game content release or verified transcript source |
| SG-0009 | Power system indirect claims | wiki/synthesis/power-system-governance.md | Some power claims from indirect sources only | partial | Medium | Power-scaling errors possible if indirect claims treated as canon | Cross-reference power claims against weapon/artifact/book sources |
| SG-0010 | Character Intelligence source discipline | entities/character_intelligence/ (109 files) | Mixes canon facts with interpretive analysis; no inline source citations | secondary_only | High | Future agents may cite character_intelligence as primary source | Add source tags; flag interpretive content; cross-reference voice_lines |
| SG-0011 | Quest Layer Skeletons | quests/ (all 56 files) | Navigation placeholders only; zero usable content | empty_skeleton | Critical | Risk of citing empty quest files as proof content exists | Mark all as not_source; do not backfill from memory |
| SG-0012 | Entity Shells / Template-Only Entity Pages | entities/ (~481 template files) | Structural metadata only; no lore claims | template_only | Medium | Risk of treating shell existence as evidence of content | Do not auto-fill; prioritize by project scope |
| SG-0013 | Topic summaries with theory risk | topics/ (9 files, especially nod-krai/) | Indirect analysis; theory contamination; Acts II-VII unverified | summary_only | High | Risk of treating topic syntheses as canon | Verify all topic claims against sources/ before citing |
| SG-0014 | Planning/Foundation historical-only files | planning/ (10) + foundation/ (17) | Governance and brainstorming; not canon | historical_only | Low | Risk of treating old planning as active direction | Already archived per foundation/16; maintain separation |

## Pass 1.1 Consistency Corrections

- SG-0001 corrected: Dottore has no verified character intelligence file or primary voice/source file in the current workspace.
- SG-0003 corrected: Columbina has no primary voice/source file in the current workspace and remains indirect/source-light.
- These corrections align the source-gap report with:
  - wiki/entities/characters/Dottore.md
  - wiki/entities/characters/Columbina.md
  - wiki/entities/characters/character-inventory.md
  - wiki/synthesis/character-audit-backlog.md

## Severity Distribution

| Severity | Count | Gap IDs |
| -------- | ----: | ------- |
| Critical | 6 | SG-0001, SG-0002, SG-0005, SG-0007, SG-0008, SG-0011 |
| High | 4 | SG-0003, SG-0004, SG-0010, SG-0013 |
| Medium | 3 | SG-0006, SG-0009, SG-0012 |
| Low | 1 | SG-0014 |

## Gap Resolution Assessment

| Gap ID | Can Claude continue without it? | Should it block Phase 3.3? | Requires human review? | Recommended Pass 2 action |
| ------ | ------------------------------- | -------------------------- | ---------------------- | ------------------------- |
| SG-0001 | Yes (skip Dottore) | Yes — Dottore blocked | Yes — source archive decision | Document in ingestion queue |
| SG-0002 | Yes (skip Sandrone) | Yes — Sandrone blocked | Yes — source availability unknown | Document in ingestion queue |
| SG-0003 | Yes (mark source_light) | No — already audited at reduced level | No | Monitor for new game content |
| SG-0004 | Yes (skip Skirk) | Partial — blocks Abyss claims | No | Add to ingestion queue when source found |
| SG-0005 | Partially (voice_lines covers archon quests) | Yes — blocks world quest claims | Yes — transcript source decision | Create ingestion framework for quest dialogue |
| SG-0006 | Yes (not urgently needed) | No | Yes — decide if official sources are in scope | Low priority |
| SG-0007 | No — blocks character Level 3 audits | Yes — blocks all Level 3 advancement | Yes — source archive decision | Priority ingestion target |
| SG-0008 | Yes (AU-only for Nod-Krai) | Yes — all Nod-Krai blocked | Yes — requires game release or transcript | Cannot resolve without external source |
| SG-0009 | Yes (use existing governance) | No | No | Cross-reference in Pass 3 |
| SG-0010 | Yes (mark as secondary) | No — already classified | No | Add source tags in Pass 2 framework |
| SG-0011 | Yes (already classified as not_source) | No — already flagged | No | Maintain classification |
| SG-0012 | Yes (shells are just placeholders) | No | No | Do not auto-fill |
| SG-0013 | Yes (already flagged as theory risk) | No — already governed | No | Verify claims in Pass 3 |
| SG-0014 | Yes (already archived) | No | No | Maintain separation |
