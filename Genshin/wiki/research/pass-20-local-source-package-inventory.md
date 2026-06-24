# Pass 20 — Local Source Package Inventory

## Purpose

Document which local source files/folders exist for each Pass 20 candidate. This is a read-only discovery report.

## Critical Caveat

> **File/folder existence is NOT canon proof.** The presence of a local file signals source availability for future provenance work. It does not confirm any claim as canon. Claims require claim-level provenance mapping and human review before upgrade.

## Inventory Table

| Candidate | Local source package type | Local file/folder signal | Source-index status | Feasibility note | Not proof caveat |
|-----------|--------------------------|--------------------------|---------------------|------------------|-----------------|
| Dottore | archon_quest_provenance (partial) | `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT7.md` | provenance_candidate (NK Acts II–VIII listed) | Metadata-level provenance only; not full transcript; claim-level extraction not yet performed | File existence is NOT canon proof |
| Dottore | nk_evidence_index | NK-07 evidence entries (False Moon, Moon Marrow) | Not in source-index as standalone entry | Evidence is guarded, not confirmed; requires claim mapping and human review | File existence is NOT canon proof |
| Sandrone | archon_quest_provenance (partial) | `sources/provenance/archon_quests/nod-krai/AQ-NK-ACT2.md` | provenance_candidate (NK Acts II–VIII listed) | Single faction-role reference only; Rotwang NOT FOUND in deep-read | File existence is NOT canon proof |
| Pierro | none | No local files found | No source-index entry for Pierro | Zero local source material; entirely blocked | File existence is NOT canon proof |
| Pierro | organization_reference (indirect) | `entities/organizations/global/Fatui.md` may reference | Not primary source | Organization file is analysis/synthesis, not primary source | File existence is NOT canon proof |
| Rhinedottir | analysis_only | `entities/historical_figures/Rhinedottir.md` | No source-index entry for Rhinedottir | Analysis file only; not primary source; cannot be used for provenance | File existence is NOT canon proof |
| Rhinedottir | organization_reference (indirect) | `entities/organizations/global/Hexenzirkel.md` | Not primary source | Indirect references only; does not constitute Rhinedottir-specific provenance | File existence is NOT canon proof |
| Aether | voice_line_file | `sources/voice_lines/characters/Aether.md` | Likely listed in source-index (VL-type) | Primary source for identity and personality dimensions | File existence is NOT canon proof |
| Aether | archon_quest_provenance | Referenced in `sources/provenance/archon_quests/nod-krai/` Acts 2–7 | provenance_candidate (NK series) | Supports quest-related claims but not character story claims | File existence is NOT canon proof |
| Aether | nk_evidence_index | NK-07 evidence entries (Moon Marrow custodian, Descender) | Not standalone source-index entry | Evidence is guarded; requires claim mapping before upgrade | File existence is NOT canon proof |
| Lumine | voice_line_file | `sources/voice_lines/characters/Lumine.md` | Likely listed in source-index (VL-type) | Primary source for identity and personality dimensions | File existence is NOT canon proof |
| Lumine | archon_quest_provenance | Referenced in `sources/provenance/archon_quests/nod-krai/` Acts 2–7 | provenance_candidate (NK series) | Supports quest-related claims but not character story claims | File existence is NOT canon proof |
| Lumine | nk_evidence_index | NK-07 evidence entries (Moon Marrow, Descender) | Not standalone source-index entry | Evidence is guarded; requires claim mapping before upgrade | File existence is NOT canon proof |

## Source Folder Existence Summary

| Source folder path | Exists? | Relevant to Pass 20 candidates? |
|--------------------|---------|----------------------------------|
| `sources/voice_lines/characters/` | ✅ Yes | Aether, Lumine only |
| `sources/character_stories/` | ✅ Yes (Kaeya only) | ❌ No candidate files present |
| `sources/provenance/archon_quests/nod-krai/` | ✅ Yes (Acts 2–8) | Dottore (Act 7), Sandrone (Act 2), Aether/Lumine (Acts 2–7) |
| `sources/artifact_descriptions/` | ✅ Yes | Potentially Rhinedottir (indirect via "Gold" references) |
| `sources/book_texts/` | ✅ Yes | Potentially Rhinedottir (Khaenri'ah books) |
| `sources/book_texts/nod-krai/` | ✅ Yes | Potentially Dottore/Sandrone (contextual) |
| `sources/manga_transcripts/` | ✅ Yes | Unknown relevance to Pass 20 candidates |
| `sources/weapon_stories/` | ✅ Yes | Unknown relevance |
| `sources/official_profiles/` | ❌ No | Would be needed for Pierro, Dottore, Sandrone |
| `sources/fatui/` | ❌ No | Would be needed for Harbinger-specific provenance |
| `sources/hexenzirkel/` | ❌ No | Would be needed for Rhinedottir |
| `sources/traveler/` | ❌ No | Would help Aether/Lumine dedup |
| `sources/abyss/` | ❌ No | Would help Abyss Sibling identity claims |
| `sources/khaenriah/` | ❌ No | Would help Pierro, Rhinedottir, Khaenri'ah claims |

## Character Intelligence Status

| Candidate | Character intelligence file exists? | Usable as primary source? |
|-----------|-------------------------------------|---------------------------|
| Dottore | Referenced in other files (e.g., Arlecchino) | ❌ NO — analysis only |
| Sandrone | ❌ Not found | N/A |
| Pierro | ❌ Not found | N/A |
| Rhinedottir | ❌ Not in character_intelligence (in historical_figures instead) | ❌ NO — analysis only |
| Aether | ✅ `entities/character_intelligence/Aether.md` | ❌ NO — analysis only |
| Lumine | ✅ `entities/character_intelligence/Lumine.md` | ❌ NO — analysis only |

## Conclusion

- **2 candidates** (Aether, Lumine) have sufficient local primary source for partial provenance work.
- **2 candidates** (Dottore, Sandrone) have partial quest provenance signals but insufficient for claim-level resolution.
- **2 candidates** (Pierro, Rhinedottir) have no usable local primary source.
- **0 candidates** have character story files.
- **0 candidates** have official profile files.
- **0 candidates** can be fully resolved in this pass.
