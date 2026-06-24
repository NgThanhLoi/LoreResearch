# Pass 19.5 — Priority Ingestion Queue

## Overview

Prioritized queue of all source-missing characters, ordered by risk-if-delayed and grouped by priority tier. This queue determines the order of future ingestion passes (Pass 20+).

---

## P0 — Blocking Global Safety

Characters whose unresolved source status risks corrupting the entire wiki's canon if wrong claims propagate.

| Priority | Candidate | Route | Next pass bucket | Reason | Risk if delayed |
|----------|-----------|-------|------------------|--------|-----------------|
| P0 | Dottore | quest_dialogue_provenance + official_profile_ingestion + human_review | Pass_20_high_risk_source_package_A | False Moon / Irminsul claims are high-traffic lore nodes; wrong framing poisons downstream pages | Other pages (Nahida, Wanderer, Irminsul concept) may inherit incorrect claims |
| P0 | Sandrone | quest_dialogue_provenance + official_profile_ingestion + human_review | Pass_20_high_risk_source_package_A | Rotwang/Khaenri'ah claims could falsely link to Descender/Abyss lore if unresolved | Khaenri'ah concept pages and Harbinger cross-references at risk |

---

## P1 — High-Risk Major Characters

Characters with existing pages containing guarded evidence or unsafe overclaim potential. Major lore nodes.

| Priority | Candidate | Route | Next pass bucket | Reason | Risk if delayed |
|----------|-----------|-------|------------------|--------|-----------------|
| P1 | Columbina | voice_line_ingestion + claim_mapping | Pass_23_official_profile_voice_line_ingestion | Kuutar/Moon evidence found but cannot be canonized without mapping; high-traffic speculation target | Moon/False Sky concept pages remain unresolvable |
| P1 | Skirk | quest_dialogue_provenance | Pass_22_quest_dialogue_provenance_A | Descender claim not_found but governance page exists; readers may misinterpret blocked status | Third Descender concept page remains unresolvable |
| P1 | Aether | character_story_provenance + claim_mapping | Pass_20_high_risk_source_package_A | Moon Marrow custodianship guarded; protagonist page affects all storyline references | Traveler-dependent quest summaries inherit uncertainty |
| P1 | Lumine | character_story_provenance + claim_mapping | Pass_20_high_risk_source_package_A | Same as Aether — twin protagonist with identical guarded claims | Same as Aether |
| P1 | Abyss Sibling | quest_dialogue_provenance | Pass_22_quest_dialogue_provenance_A | Phantom vs real appearances affect Abyss Order narrative integrity | Abyss Order faction page inherits wrong assumptions |
| P1 | Dainsleif | quest_dialogue_provenance + voice_line_ingestion | Pass_22_quest_dialogue_provenance_A | Khaenri'ah lore anchor; blocking affects all Khaenri'ah concept claims | Khaenri'ah concept page and timeline remain speculative |
| P1 | Tsaritsa | quest_dialogue_provenance | Pass_22_quest_dialogue_provenance_A | Archon-level character; Gnosis collection motivation anchors Fatui faction logic | Fatui faction page and Harbinger motivations remain speculative |
| P1 | Pierro | quest_dialogue_provenance + official_profile_ingestion | Pass_20_high_risk_source_package_A | 1st Harbinger + Khaenri'ah sage; cross-references Dainsleif and Tsaritsa | Harbinger hierarchy and Khaenri'ah timeline at risk |
| P1 | Rhinedottir | quest_dialogue_provenance + artifact_book_provenance | Pass_20_high_risk_source_package_A | Gold/Khaenri'ah/Hexenzirkel triple intersection; dragon creation claims affect multiple pages | Albedo, Durin, dragon concept pages inherit uncertainty |

---

## P2 — Playable or Major Recurring

Playable characters blocked by missing provenance, or major recurring characters with page-level gaps.

| Priority | Candidate | Route | Next pass bucket | Reason | Risk if delayed |
|----------|-----------|-------|------------------|--------|-----------------|
| P2 | Arlecchino | character_story_provenance | Pass_21_character_story_provenance_B | Playable; Level 2 page exists but Crimson Moon backstory lacks provenance | Page quality gap — backstory section unsupported |
| P2 | Tartaglia | character_story_provenance | Pass_21_character_story_provenance_B | Playable; Skirk training and Foul Legacy claims lack provenance | Abyss training claims remain unverifiable |
| P2 | Varka | voice_line_ingestion + character_story_provenance | Pass_23_official_profile_voice_line_ingestion | Governance page exists; Grand Master claims indirect only | Mondstadt faction page references remain indirect |
| P2 | Nicole | voice_line_ingestion + character_story_provenance | Pass_23_official_profile_voice_line_ingestion | Governance page exists; Hexenzirkel claims indirect only | Hexenzirkel concept page references remain indirect |
| P2 | Capitano | voice_line_ingestion + character_story_provenance | Pass_21_character_story_provenance_B | Harbinger with Natlan involvement; high fan interest | Natlan arc claims remain completely unverifiable |
| P2 | Alice | voice_line_ingestion + character_story_provenance | Pass_21_character_story_provenance_B | Hexenzirkel member; Klee's mother; cross-faction importance | Hexenzirkel + Mondstadt cross-references remain indirect |
| P2 | Paimon | voice_line_ingestion + character_story_provenance | Pass_21_character_story_provenance_B | Constant companion; identity claims are high-speculation | Identity theory continues to lack any source basis |
| P2 | Pantalone | voice_line_ingestion + character_story_provenance | Pass_21_character_story_provenance_B | Harbinger; Fatui finance node | Snezhnaya politics remain speculative |
| P2 | Pulcinella | voice_line_ingestion + character_story_provenance | Pass_21_character_story_provenance_B | Harbinger; Childe family connection | Snezhnaya politics remain speculative |
| P2 | Ifa | voice_line_ingestion | Pass_23_official_profile_voice_line_ingestion | Playable Natlan character with existing page but missing voice file | Page personality section unsupported |
| P2 | Iansan | voice_line_ingestion | Pass_23_official_profile_voice_line_ingestion | Playable Natlan character with existing page but missing voice file | Page personality section unsupported |
| P2 | Varesa | voice_line_ingestion | Pass_23_official_profile_voice_line_ingestion | Playable Natlan character with existing page but missing voice file | Page personality section unsupported |

---

## P3 — Source-Light Minor or Unreleased

Minor characters or those with only indirect/analysis sources. Lower wiki-wide risk.

| Priority | Candidate | Route | Next pass bucket | Reason | Risk if delayed |
|----------|-----------|-------|------------------|--------|-----------------|
| P3 | Nefer | quest_dialogue_provenance + voice_line_ingestion | Pass_22_quest_dialogue_provenance_A | Evidence found (Voynich Guild) but needs primary source for full page | Low wiki-wide impact |
| P3 | Aino | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Flins | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Illuga | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Ineffa | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Jahoda | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Lauma | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Linnea | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Prune | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Zibai | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Vilemina | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Dhabit | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |
| P3 | Demyan | quest_dialogue_provenance | Later_keep_blocked | Nod-Krai local; no primary source exists | Minimal wiki-wide impact |

---

## P4 — Defer Until New Source

Characters that cannot be resolved with any currently available local or extractable source.

| Priority | Candidate | Route | Next pass bucket | Reason | Risk if delayed |
|----------|-----------|-------|------------------|--------|-----------------|
| P4 | Escoffier | out_of_scope | Out_of_scope | Fontaine NPC with no source and no wiki need | Zero risk |

---

## Queue Summary

| Tier | Count | Earliest viable pass |
|------|-------|---------------------|
| P0 | 2 | Pass 20 |
| P1 | 9 | Pass 20–22 |
| P2 | 12 | Pass 21–23 |
| P3 | 13 | Later (keep blocked until Nod-Krai sources exist) |
| P4 | 1 | Out of scope |
| **Total** | **37** | — |

---

## Pass Allocation Summary

| Pass | Purpose | Candidates |
|------|---------|------------|
| Pass 20 | High-Risk Source Package Feasibility / Provenance A (quest dialogue, official profile, human review for non-playable; character story provenance for Traveler) | Dottore, Sandrone, Pierro, Rhinedottir (quest_dialogue/official_profile/human_review), Aether, Lumine (character_story_provenance + claim_mapping) |
| Pass 21 | Character Story Provenance B (playable/major recurring) | Arlecchino, Tartaglia, Capitano, Alice, Paimon, Pantalone, Pulcinella |
| Pass 22 | Quest Dialogue Provenance A | Skirk, Abyss Sibling, Dainsleif, Tsaritsa, Nefer |
| Pass 23 | Official Profile / Voice Line Ingestion | Columbina, Varka, Nicole, Ifa, Iansan, Varesa |
| Pass 24 | Artifact / Book / Manga Provenance | (systemic gap — no individual candidates yet) |
| Pass 25 | Dedup and Page Status Cleanup | (post-ingestion cleanup) |
| Pass 26 | Priority Claim Mapping A | Columbina, Aether, Lumine, Dottore |
| Later | Keep blocked | All Nod-Krai locals (13 characters) |
