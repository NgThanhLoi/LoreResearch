# Source Ingestion Queue

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Purpose

Priority-ordered list of source packages to ingest in future passes.

## P0 — Critical Blockers

| Package ID | Topic | Needed source type | Candidate sources | Blocks | Safe before ingestion? | Human decision needed? | Notes |
| ---------- | ----- | ------------------ | ----------------- | ------ | ---------------------- | ---------------------- | ----- |
| PKG-P0-001 | Character stories source package | Character story texts for all characters | EX-API-001 (genshin-db), EX-API-003 (Fandom API) | All Level 3 character audits; character_stories/ folder missing | No — blocks Level 3 | Yes — which source archive to trust | Create sources/character_stories/ folder only when content is ready |
| PKG-P0-002 | Dottore source package | Direct quest/dialogue appearances if any; official manga/profile/post if any; mentions in other characters' voice lines; reliable transcript candidate; character story only if a physical source exists | EX-API-001, EX-API-003, EX-DB-002 | Dottore audit unblock | No — Dottore remains blocked | Yes — identify Dottore source availability | No local files exist for Dottore currently. Do not create VL-DOTTORE-* or CS-DOTTORE-* unless corresponding physical source files are locally ingested. |
| PKG-P0-003 | Sandrone source package | Direct quest/dialogue appearances if any; official profile/post if any; mentions in other characters' voice lines; reliable transcript candidate; character story only if a physical source exists | EX-API-001, EX-API-003 | Sandrone audit unblock | No — Sandrone remains blocked | Yes — identify if Sandrone sources exist | Very limited Sandrone content may exist in-game. Do not create VL-SANDRONE-* or CS-SANDRONE-* unless corresponding physical source files are locally ingested. |
| PKG-P0-004 | Skirk / Gnosis / Third Descender | Quest dialogue, character interactions, story context | EX-API-003 (Fandom quest transcripts) | Skirk claims, Abyss verification, Descender theory | Only as theory — cannot confirm | No — can proceed when source found | Source likely in archon quest dialogue |
| PKG-P0-005 | Nod-Krai Acts II–VII source package | Full quest transcripts, dialogue, scene descriptions | EX-API-003, EX-DB-001 | All Nod-Krai lore claims; currently AU-only | Only as AU — cannot use as canon | Yes — requires game release verification | Acts may not all be released yet |
| PKG-P0-006 | Quest dialogue ingestion framework | Template + process for ingesting quest transcripts | N/A (internal framework) | All quest-based claim verification | Partially — voice_lines covers some | No | Define how to transform external transcripts into local source files |

## P0-Internal Cleanup — Required Before Large-Scale Ingestion

| Package ID | Task | Description | Blocks | Is lore blocker? | Notes |
| ---------- | ---- | ----------- | ------ | ---------------- | ----- |
| PKG-P0I-001 | Add MG-ALL | Add folder-level ID for `sources/manga_transcripts/` (21 files) | Clean source referencing | No | Indexing hygiene |
| PKG-P0I-002 | Add VLAQ-ALL | Add folder-level ID for `sources/voice_lines/archon_quests/` (124 files) | Clean source referencing | No | Indexing hygiene |
| PKG-P0I-003 | Add VLWQ-ALL | Add folder-level ID for `sources/voice_lines/world_quests/` (4 files) | Clean source referencing | No | Indexing hygiene |
| PKG-P0I-004 | Retire QD-ALL | Mark QD-ALL as legacy_retired in source-index | Clean source referencing | No | Legacy placeholder |
| PKG-P0I-005 | Remove/downgrade Skirk TODO | Remove VL-0002 Skirk placeholder from TODOs | Prevent phantom IDs | No | File does not exist |
| PKG-P0I-006 | Confirm no Dottore/Sandrone/Columbina/Skirk IDs | Ensure no VL/CS IDs exist for missing files | Prevent false source claims | No | Workspace verification |

Note: P0-Internal Cleanup is NOT a lore blocker. It is indexing hygiene required before large-scale ingestion to prevent ID conflicts and phantom references.

## P1 — High Priority Lore Mapping

| Package ID | Topic | Needed source type | Candidate sources | Blocks | Safe before ingestion? | Human decision needed? | Notes |
| ---------- | ----- | ------------------ | ----------------- | ------ | ---------------------- | ---------------------- | ----- |
| PKG-P1-001 | Fontaine final AQ / Furina-Focalors-Neuvillette | Quest transcript verification | Check voice_lines/archon_quests/ coverage; EX-API-003 | Furina/Focalors/Neuvillette claim accuracy | Partially — voice_lines may cover | No | Verify if existing VLAQ files include this content |
| PKG-P1-002 | Wanderer Interlude / Irminsul rewrite | Interlude quest transcript | Check voice_lines/archon_quests/ coverage; EX-API-003 | Irminsul memory claims, Wanderer identity | Partially — voice_lines may cover | No | Critical for memory/identity governance |
| PKG-P1-003 | Sumeru Irminsul / Rukkhadevata / Nahida | Quest transcript verification | Check voice_lines/archon_quests/ coverage | Irminsul mechanism claims, Nahida/Rukkhadevata | Partially — voice_lines may cover | No | Already have voice_lines for Nahida |
| PKG-P1-004 | Inazuma Raiden Ei / Shogun puppet | Quest transcript verification | Check voice_lines/archon_quests/ coverage | Ei vs Shogun consciousness claims | Partially — voice_lines may cover | No | Already have Raiden Shogun voice lines |
| PKG-P1-005 | Traveler / Abyss sibling revelations | Cross-quest compilation | Multiple VLAQ files; EX-API-003 | Sibling arc claims, Traveler identity | Partially — scattered across quests | No | Needs compilation from multiple sources |
| PKG-P1-006 | Columbina primary source package | Voice lines (if exist), character story, quest dialogue | EX-API-001, EX-API-003 | Columbina Level 3; Kuutar theory resolution | Only as source-light — current level acceptable | No | May have very limited in-game presence |
| PKG-P1-007 | Genshin Web Manga source package | Verify/expand manga_transcripts/ | EX-OFFICIAL-003 (official manga URL) | Manga-based character claims (Diluc, Kaeya, Amber) | Yes — local transcripts exist (21 files) | No | Compare local vs official for completeness |

## P2 — Source Coverage Expansion

| Package ID | Topic | Needed source type | Candidate sources | Priority | Notes |
| ---------- | ----- | ------------------ | ----------------- | -------- | ----- |
| PKG-P2-001 | World quest dialogue expansion | World quest transcripts | EX-API-003 (Fandom quest pages) | Medium | Only 4 VLWQ files currently; hundreds of world quests exist |
| PKG-P2-002 | Official source folder creation | Official posts, announcements | EX-OFFICIAL-001, EX-OFFICIAL-002 | Medium | Create sources/official/ when content is identified |
| PKG-P2-003 | Project Amber / Ambr.top test ingestion | Character/weapon metadata | EX-DB-002 | Medium | Test for metadata accuracy, not transcript |
| PKG-P2-004 | Honey Impact test ingestion | Quest text, character data | EX-DB-001 | Medium | Datamined content needs careful verification |
| PKG-P2-005 | Fandom API quest transcript test | One safe quest page | EX-API-003 | Medium | Start with already-covered quest for comparison |
| PKG-P2-006 | genshin-db metadata test | Character/voice/story data | EX-API-001, EX-API-002 | Medium | Test npm package locally for data availability |

## P3 — Nice To Have

| Package ID | Topic | Candidate sources | Priority | Notes |
| ---------- | ----- | ----------------- | -------- | ----- |
| PKG-P3-001 | GameWith / Icy Veins routing | EX-WIKI-002, EX-WIKI-003 | Low | Guide-only navigation, no lore ingestion |
| PKG-P3-002 | Wikipedia version history | EX-WIKI-005 | Low | Meta-timeline only, not lore canon |
| PKG-P3-003 | Community theory monitoring | TH-REDDIT-001, TH-COMMUNITY-001 | Low | Identify new theories for unverified register |
| PKG-P3-004 | TvTropes OOC/fanon risk mapping | TH-COMMUNITY-003 | Low | Cross-reference with headcanon-fanon-policy |

## Never / Quarantine

| Package ID | Topic | Source | Status | Notes |
| ---------- | ----- | ------ | ------ | ----- |
| PKG-NEVER-001 | Leak content | LQ-LEAK-001 (r/Genshin_Impact_Leaks) | leak_quarantined | Future-watch only; never canon |
