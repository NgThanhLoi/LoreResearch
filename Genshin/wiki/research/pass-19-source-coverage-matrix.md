# Pass 19 — Source Coverage Matrix

## Purpose

Document the source coverage status for each reviewed candidate across key dimensions.

---

## Status Legend

| Status | Meaning |
|--------|---------|
| primary_source_found | Local primary source file exists and supports the claim |
| supporting_source | Secondary source (other characters' voice lines, etc.) provides support |
| partial_support_only | Some evidence exists but incomplete |
| indirect_source_only | Only character_intelligence or synthesis files support it |
| analysis_guided | Based on analysis/synthesis guidance, not primary source |
| source_missing | No local source exists |
| source_light | Minimal or fragmentary source only |
| blocked_by_missing_source | Source package required but absent |
| evidence_found_guarded | NK-07 found evidence but status remains guarded pending human review |
| source_missing_after_deep_read | NK-07 deep-read confirmed absence |
| keep_guarded | Evidence exists but insufficient for canon upgrade |
| keep_blocked | Must remain blocked until source package ingested |
| mixed | Multiple statuses apply (see notes) |
| not_applicable | Dimension not relevant to this character |

---

## Coverage Matrix

| # | Candidate | identity | voice/personality | relationships | powers | backstory | faction role | major lore claims | page action |
|---|-----------|----------|-------------------|---------------|--------|-----------|--------------|-------------------|-------------|
| 1 | Dottore | indirect_source_only | source_missing | indirect_source_only | evidence_found_guarded | blocked_by_missing_source | indirect_source_only | evidence_found_guarded (False Moon, Irminsul) | preserved_existing_audited_page |
| 2 | Columbina | indirect_source_only | source_missing | indirect_source_only | evidence_found_guarded | blocked_by_missing_source | indirect_source_only | evidence_found_guarded (Kuutar link) | preserved_existing_audited_page |
| 3 | Sandrone | indirect_source_only | source_missing | source_missing | source_missing_after_deep_read (Rotwang) | blocked_by_missing_source | indirect_source_only | keep_guarded (Khaenri'ah link) | preserved_existing_audited_page |
| 4 | Skirk | source_missing_after_deep_read | source_missing | source_light (Tartaglia mentor) | source_missing | source_missing | source_missing | source_missing_after_deep_read (Descender) | blocked_page_created |
| 5 | Varka | indirect_source_only | source_missing | supporting_source (other chars' voice lines) | source_missing | source_missing | indirect_source_only | source_missing (expedition details) | source_light_page_created |
| 6 | Nicole | indirect_source_only | source_missing | source_missing | source_missing | source_missing | indirect_source_only | source_missing (Hexenzirkel identity) | source_light_page_created |
| 7 | Arlecchino | primary_source_found | primary_source_found | mixed (primary + indirect) | partial_support_only | indirect_source_only (Crucabena history) | primary_source_found | partial_support_only (Crimson Moon) | preserved_existing_audited_page |
| 8 | Aether | primary_source_found | primary_source_found | mixed | evidence_found_guarded (Moon Marrow) | partial_support_only | primary_source_found | evidence_found_guarded (Descender, Irminsul) | preserved_existing_audited_page |
| 9 | Lumine | primary_source_found | primary_source_found | mixed | evidence_found_guarded (Moon Marrow) | partial_support_only | primary_source_found | evidence_found_guarded (Descender, Irminsul) | preserved_existing_audited_page |
| 10 | Tartaglia | primary_source_found | primary_source_found | mixed | partial_support_only (Foul Legacy) | indirect_source_only (Abyss training) | primary_source_found | keep_guarded (Skirk training period) | preserved_existing_audited_page |
| 11 | Capitano | source_missing | source_missing | source_missing | source_missing | source_missing | indirect_source_only | source_missing | source_missing_no_page |
| 12 | Alice | source_missing | source_missing | supporting_source (Klee's voice lines) | source_missing | source_missing | source_missing | source_missing (Hexenzirkel, world-level) | source_missing_no_page |
| 13 | Rhinedottir | source_missing | source_missing | supporting_source (Albedo's voice lines) | source_missing | source_missing | source_missing | source_missing (Gold, Khaenri'ah, dragons) | source_missing_no_page |
| 14 | Pierro | source_missing | source_missing | source_missing | source_missing | source_missing | indirect_source_only | source_missing (1st Harbinger, Khaenri'ah) | source_missing_no_page |
| 15 | Pantalone | source_missing | source_missing | source_missing | source_missing | source_missing | indirect_source_only | source_missing | source_missing_no_page |
| 16 | Pulcinella | source_missing | source_missing | source_missing | source_missing | source_missing | indirect_source_only | source_missing | source_missing_no_page |
| 17 | Tsaritsa | source_missing | source_missing | source_missing | source_missing | source_missing | indirect_source_only | source_missing (Cryo Archon goals) | source_missing_no_page |
| 18 | Dainsleif | source_missing | source_missing | source_missing | source_missing | source_missing | source_missing | source_missing (Khaenri'ah, Abyss Order) | source_missing_no_page |
| 19 | Paimon | source_missing | source_missing | source_missing | source_missing | source_missing | not_applicable | source_missing (true nature/origin) | source_missing_no_page |

---

## Key Observations

1. **Only 4 characters have primary voice-line sources:** Arlecchino, Aether, Lumine, Tartaglia. All four already have audited pages.
2. **Dottore, Columbina, Sandrone** have NK-07 evidence upgrades but remain correctly blocked/guarded.
3. **9 characters** (Capitano through Paimon) have zero local primary source files — creating pages would require fabrication.
4. **Skirk** was explicitly confirmed absent from NK-07 pinned revisions (`source_missing_after_deep_read`).
5. **Varka and Nicole** have indirect references in other characters' voice lines but no dedicated source files.
