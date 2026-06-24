# Project State — File Inventory

> **Date:** 2026-06-24 | **Source:** find, ls counts across repo

---

## Top-Level Structure

| Location | Type | Count |
| --- | --- | --- |
| `_data/` | Directory | 1 subfolder |
| `_tools/` | Directory | Scripts |
| `entities/` | Non-wiki entity directory | Multiple subdirs |
| `foundation/` | Historical planning | Legacy |
| `planning/` | Historical planning | Legacy |
| `quests/` | Empty quest skeletons | 56 files (100% empty) |
| `scratch/` | Scratch area | Temp files |
| `sources/` | Raw source files | 620 files |
| `topics/` | Topic analysis | 9+ files |
| `wiki/` | LLM Wiki | 317 files |

**Total repo files:** 2,086

---

## Source Files Breakdown

| Category | Subdirectory | File Count | Notes |
| --- | --- | --- | --- |
| Weapon Stories | sources/weapon_stories/ | 227 | All Vietnamese |
| Artifact Descriptions | sources/artifact_descriptions/ | 61 | All Vietnamese |
| Book Texts | sources/book_texts/ | 79 | Including nod-krai/ subfolder |
| Manga Transcripts | sources/manga_transcripts/ | 21 | Chapters 00–16 + variants |
| Character Stories | sources/character_stories/ | 1 | Kaeya provenance only |
| Provenance (Nod-Krai AQ) | sources/provenance/archon_quests/nod-krai/ | 7 | AQ-NK-ACT2 through ACT8 |
| Voice Lines — Characters | sources/voice_lines/characters/ | 96 | Playable character voice files |
| Voice Lines — Archon Quests | sources/voice_lines/archon_quests/ | 124 | Across 34 quest arcs |
| Voice Lines — World Quests | sources/voice_lines/world_quests/ | 4 | 2 quest groups |
| **Total** | | **620** | |

---

## Wiki File Breakdown

| Category | Subdirectory | File Count |
| --- | --- | --- |
| Character Pages | wiki/entities/characters/ | 99 (incl. templates) |
| Synthesis/Governance | wiki/synthesis/ | 14 |
| Source Governance | wiki/sources/ | 6+ |
| Research Reports | wiki/research/ | 156 |
| Workflows | wiki/workflows/ | 7+ |
| Projects | wiki/projects/ | 1+ |
| Core Files | wiki/ | 4 (index, SCHEMA, README, log) |
| **Total** | | **~317** |

---

## Non-Wiki Entity Files

| Category | Entity Type | File Count |
| --- | --- | --- |
| Character Intelligence | entities/character_intelligence/ | 109 |
| Weapons | entities/weapons/ | 227 |
| Artifact Sets | entities/artifact_sets/ | (not counted) |
| Books | entities/books/ | (not counted) |
| Celestial Beings | entities/celestial_beings/ | (not counted) |
| Dragon Sovereigns | entities/dragon_sovereigns/ | (not counted) |
| Gods and Archons | entities/gods_and_archons/ | (not counted) |
| Historical Figures | entities/historical_figures/ | (not counted) |
| Nations | entities/nations/ | (not counted) |
| Organizations | entities/organizations/ | (not counted) |

*Note: Many entity folders contain template shells (CON-0006 — "more than 70% are empty templates").*

---

## Research Reports by Pass

| Pass Group | Count Range | Notes |
| --- | --- | --- |
| Pass 1–1.1 (CC) | 13 | Workspace audit |
| Pass 2–2.1 (CC) | 12 | Source framework |
| Pass 3 (CC) | 4 | Source tool tests |
| Pass 4–4.1.1 (CC) | 9 | VLAQ mapping |
| Pass 5 (CC) | 5 | Deep read |
| Pass 6 (CC) | 4 | Human review |
| Pass 7 (CC/Codex) | 5 | Ingestion test |
| Pass 8–8.1 (Codex) | 8 | Fandom API test |
| Pass 9 (Codex) | 4 | Kaeya claim mapping |
| Pass 10 (Codex) | 3 | Kaeya update |
| Pass 11 (Codex) | 5 | Full character plan |
| Pass 12 (Codex) | 3 | Template v2 |
| Pass 13 (Codex) | 5 | Mondstadt |
| Pass 14 (Codex) | 5 | Liyue |
| Pass 15 (Codex) | 5 | Inazuma |
| Pass 16 (Codex) | 5 | Sumeru |
| Pass 17 (Codex) | 5 | Fontaine |
| Pass 18–18.2 (Codex) | 7 | Natlan |
| NK-01 (Codex) | 5 | Nod-Krai source recon |
| NK-02 (Codex) | 7 | Nod-Krai provenance |
| NK-03 (Codex) | 8 | Nod-Krai governance |
| NK-04 (Codex) | 7 | Nod-Krai inventory |
| NK-05–05.1a (Codex) | 14 | Nod-Krai source search + patches |
| NK-06–06.1 (Codex) | 9 | Nod-Krai provenance ingestion |
| NK-07 (Codex) | 8 | Nod-Krai deep read |
| **Total** | **~156** | |

---

## Key Ratios

| Metric | Value |
| --- | --- |
| Source files : Wiki pages | 620 : 317 (1.96:1) |
| Character pages : Character intelligence | 99 : 109 (0.91:1) |
| Character pages : All characters tracked | 99 : 112 (0.88:1) |
| Research reports : Logged passes | 156 : ~40 (3.9 per pass) |
| Weapon stories : All sources | 227 : 620 (36.6%) |
| Empty quest files | 56 out of 56 (100%) |
