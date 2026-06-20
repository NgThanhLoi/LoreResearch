# Source ID Rules

## Purpose

Define naming conventions and assignment rules for Source IDs used in the wiki.

## Required Prefixes

| Prefix | Source type | Example |
| ------ | ---------- | ------- |
| VL | Character voice lines | VL-KAEYA-001 |
| VLAQ | Archon quest voice lines | VLAQ-FONTAINE-001 |
| VLWQ | World quest voice lines | VLWQ-INAZUMA-001 |
| CS | Character stories | CS-KAEYA-001 |
| AQ | Archon quest transcript | AQ-PROLOGUE-001 |
| WQ | World quest transcript | WQ-FONTAINE-001 |
| SQ | Story quest transcript | SQ-ZHONGLI-001 |
| IQ | Interlude quest transcript | IQ-WANDERER-001 |
| BK | Book text | BK-0001 |
| WS | Weapon story | WS-0001 |
| AR | Artifact description | AR-0001 |
| MG | Manga transcript | MG-0001 |
| OF | Official post / official website | OF-0001 |
| TR | Trailer / official video | TR-0001 |
| DB | Structured game database | DB-GENSHINDB-001 |
| API | API-derived source | API-FANDOM-001 |
| EN | Entity summary (not primary) | EN-0001 |
| TP | Topic summary (not primary) | TP-0001 |
| EX | External candidate (unverified) | EX-FANDOM-QUEST-001 |
| TH | Theory/community source | TH-REDDIT-001 |
| LQ | Leak quarantine | LQ-REDDIT-LEAK-001 |

## ID Format

```
[PREFIX]-[IDENTIFIER]-[SEQUENCE]
```

Where:
- PREFIX: from table above
- IDENTIFIER: optional qualifier (character name, region, quest name)
- SEQUENCE: 3-digit number (001, 002, etc.)

## Assignment Rules

### MUST

1. Source ID must point to a real local file OR a registered external candidate.
2. Source ID must be unique across the entire index.
3. New source IDs must be registered in `wiki/sources/source-index.md`.
4. One source ID maps to one concrete source file/page/video/transcript.
5. External candidates must use EX/TH/LQ prefixes until locally ingested.

### MUST NOT

1. Do NOT create source IDs for files that do not physically exist.
2. Do NOT use folder-level IDs as proof of file-level content.
3. Do NOT use "if exists" or placeholder source IDs.
4. Do NOT use empty quest files as source IDs.
5. Do NOT use empty entity shells as source IDs.
6. Do NOT assign VL/CS/AQ IDs for characters whose source files are missing.
7. Leaks must ALWAYS use LQ prefix and never appear in canon claim mapping.

### SHOULD

1. Prefer file-level IDs over folder-level IDs for claim mapping.
2. Keep folder-level IDs (e.g. WS-ALL) only for aggregate references.
3. Split multi-unit external pages into separate IDs during ingestion.
4. Use character names in IDs for voice lines and character stories.
5. Use region names in IDs for quest-related sources.

## Examples

### Good Source IDs

| ID | Points to | Status |
| -- | --------- | ------ |
| WS-0001 | `sources/weapon_stories/Kiếm Giáng Lâm.md` | primary_source_found |
| AR-0001 | `sources/artifact_descriptions/Đêm Trời Hé Lộ.md` | primary_source_found |
| BK-0001 | `sources/book_texts/Giấc Mơ Tan Vỡ.md` | primary_source_found |
| VL-KAEYA-001 | `sources/voice_lines/characters/Kaeya.md` | primary_source_found |
| VL-FURINA-001 | `sources/voice_lines/characters/Furina.md` | primary_source_found |
| VLAQ-FONTAINE-001 | `sources/voice_lines/archon_quests/[filename].md` | primary_source_found |
| EX-FANDOM-QUEST-001 | external candidate registered | external_candidate_unverified |
| LQ-REDDIT-LEAK-001 | quarantine only | leak_quarantined |

### Bad Source IDs (DO NOT USE)

| ID | Problem |
| -- | ------- |
| QD-ALL | Folder `sources/quest_dialogue/` does not exist |
| VL-SKIRK-001 | No Skirk voice line file exists in workspace |
| VL-DOTTORE-001 | No Dottore voice line file exists in workspace |
| VL-COLUMBINA-001 | No Columbina voice line file exists in workspace |
| CS-KAEYA-001 | No `sources/character_stories/` folder exists |
| OF-001 | No `sources/official/` folder exists |
| "Fandom says..." | Not a source ID |
| "sources/quest_dialogue/" as proof | Folder does not exist |

## Legacy Quest Dialogue Prefix

- `QD` / `QD-ALL` is a legacy placeholder and must not be used for new claim-level source mapping.
- Full quest transcripts should use:
  - `AQ` for Archon Quest transcripts
  - `WQ` for World Quest transcripts
  - `SQ` for Story Quest transcripts
  - `IQ` for Interlude Quest transcripts
- Existing voice-line quest sources should use:
  - `VLAQ` for `sources/voice_lines/archon_quests/`
  - `VLWQ` for `sources/voice_lines/world_quests/`
- Do not create `QD-ALL` as proof because `sources/quest_dialogue/` does not exist.
- If `QD-ALL` appears in older files, mark it as `legacy_retired / not_source`.

## Lifecycle

1. **Candidate** — external source identified, assigned EX/TH/LQ prefix
2. **Ingested** — content brought into local workspace, assigned proper prefix
3. **Indexed** — registered in source-index.md with file-level ID
4. **Claim-mapped** — connected to specific wiki claims via Claim ID
5. **Verified** — cross-checked for accuracy, marked as primary_source_found
