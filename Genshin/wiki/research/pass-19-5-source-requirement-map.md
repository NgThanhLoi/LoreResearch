# Pass 19.5 — Source Requirement Map

## Overview

Maps each blocked character to the specific source types required for resolution, whether existing local signals can help, and the recommended ingestion route.

---

## Source Requirement Table

| Character | Required source type | Why required | Existing local signal | Can resolve without new source? | Recommended route | Blocked claims |
|-----------|---------------------|--------------|----------------------|--------------------------------|-------------------|----------------|
| Dottore | quest_dialogue_file, official_profile | All identity/backstory/power claims have zero primary provenance | character_intelligence file exists (analysis only) | No | quest_dialogue_provenance + official_profile_ingestion + human_review | False Moon godhood, Irminsul hack scope, Harbinger rank/goals |
| Sandrone | quest_dialogue_file, official_profile | Rotwang link not_found, Khaenri'ah link partial only | character_intelligence file exists (analysis only) | No | quest_dialogue_provenance + official_profile_ingestion + human_review | Rotwang identity, Khaenri'ah lineage, puppet mechanics |
| Skirk | quest_dialogue_file, voice_line_file | Descender claim not_found in deep-read, no dialogue source | No local source at all | No | quest_dialogue_provenance | Third Descender identity, Abyss training powers, relationship to Narwhal |
| Columbina | voice_line_file, character_story_file, claim_mapping_review | Kuutar link has evidence but needs narrator confirmation | character_intelligence file exists (analysis only) | Partially — evidence exists but cannot be upgraded without mapping | voice_line_ingestion + claim_mapping | Kuutar/Moon Maiden identity, true name, powers |
| Varka | voice_line_file, character_story_file | All claims indirect via other characters only | character_intelligence file exists (analysis only) | No | voice_line_ingestion + character_story_provenance | Grand Master status, expedition details, combat ability |
| Nicole | voice_line_file, character_story_file | All Hexenzirkel claims indirect | character_intelligence file exists (analysis only) | No | voice_line_ingestion + character_story_provenance | Hexenzirkel membership, abilities, role in organization |
| Arlecchino | character_story_file | Crimson Moon backstory indirect, Crucabena history unsourced | voice_line_file exists (playable) | Partially — voice lines cover personality/relationships but not backstory | character_story_provenance | Crucabena history, Crimson Moon lineage, House of the Hearth details |
| Tartaglia | character_story_file | Abyss training backstory indirect, Foul Legacy unsourced | voice_line_file exists (playable) | Partially — voice lines cover personality but not Abyss period | character_story_provenance | Skirk training period, Foul Legacy mechanics, Abyss fall details |
| Aether | character_story_file, claim_mapping_review | Moon Marrow evidence guarded, Descender claims need provenance | voice_line_file exists (playable) | Partially — voice lines exist but guarded claims need story provenance | character_story_provenance + claim_mapping | Descender status mechanics, Moon Marrow custodianship, Irminsul relationship |
| Lumine | character_story_file, claim_mapping_review | Moon Marrow evidence guarded, Descender claims need provenance | voice_line_file exists (playable) | Partially — voice lines exist but guarded claims need story provenance | character_story_provenance + claim_mapping | Descender status mechanics, Moon Marrow custodianship, Irminsul relationship |
| Capitano | voice_line_file, character_story_file, quest_dialogue_file | Zero local primary source for any dimension | No local source at all | No | voice_line_ingestion + character_story_provenance | Harbinger identity, Natlan role, death/status, combat feats |
| Alice | voice_line_file, character_story_file | Zero local primary source except indirect via Klee | No local source for Alice herself | No | voice_line_ingestion + character_story_provenance | Hexenzirkel role, powers, travel scope, relationship to Klee |
| Rhinedottir | quest_dialogue_file, artifact_or_book_source | Zero local primary source except indirect via Albedo | No local source for Rhinedottir herself | No | quest_dialogue_provenance + artifact_book_provenance | Gold identity, Khaenri'ah role, dragon creation, Durin/Albedo creation |
| Pierro | quest_dialogue_file, official_profile | Zero local primary source | No local source at all | No | quest_dialogue_provenance + official_profile_ingestion | 1st Harbinger rank, Khaenri'ah sage identity, Tsaritsa relationship |
| Pantalone | voice_line_file, character_story_file | Zero local primary source | No local source at all | No | voice_line_ingestion + character_story_provenance | Fatui finance role, Snezhnaya politics |
| Pulcinella | voice_line_file, character_story_file | Zero local primary source | No local source at all | No | voice_line_ingestion + character_story_provenance | Mayor role, Snezhnaya politics, Childe family involvement |
| Tsaritsa | voice_line_file, quest_dialogue_file | Zero local primary source | No local source at all | No | quest_dialogue_provenance | Cryo Archon identity, Gnosis collection goal, love/grief motivation |
| Dainsleif | voice_line_file, character_story_file, quest_dialogue_file | Zero local primary source | No local source at all | No | quest_dialogue_provenance + voice_line_ingestion | Bough Keeper role, Khaenri'ah history, curse mechanics, Abyss Order opposition |
| Paimon | voice_line_file, character_story_file | No dedicated source file | No dedicated local source | No | voice_line_ingestion + character_story_provenance | True identity/nature, origin, relationship to Celestia |
| Abyss Sibling | quest_dialogue_file, character_story_file | Zero local primary source | No local source at all | No | quest_dialogue_provenance | Motivations, Abyss Order leadership, phantom vs real appearances |
| Ifa | voice_line_file | No voice line file in local sources | Page exists but voice file missing | No | voice_line_ingestion | Personality, relationships, Natlan mechanics details |
| Iansan | voice_line_file | No voice line file in local sources | Page exists but voice file missing | No | voice_line_ingestion | Personality, relationships, Natlan mechanics details |
| Varesa | voice_line_file | No voice line file in local sources | Page exists but voice file missing | No | voice_line_ingestion | Personality, relationships, Natlan mechanics details |
| Aino | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Flins | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Illuga | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Ineffa | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Jahoda | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Lauma | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Linnea | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Nefer | voice_line_file, quest_dialogue_file | Evidence guarded but primary source needed | character_intelligence file (not primary) | Partially — Guild existence confirmed but character details need source | quest_dialogue_provenance + voice_line_ingestion | Voynich Guild leadership, personal identity details |
| Prune | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Zibai | voice_line_file, quest_dialogue_file | No primary source; character_intelligence is analysis only | character_intelligence file (not primary) | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Vilemina | voice_line_file, quest_dialogue_file | No primary source | No local source | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Dhabit | voice_line_file, quest_dialogue_file | No primary source | No local source | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Demyan | voice_line_file, quest_dialogue_file | No primary source | No local source | No | quest_dialogue_provenance | Identity, role, Nod-Krai involvement |
| Escoffier | voice_line_file | No local voice line file; Fontaine NPC out of scope | No local source at all | No | out_of_scope | None — no narrator-safe claims attempted |

---

## Summary: Source Types Needed

| Source type | Characters requiring it | Local availability |
|-------------|------------------------|-------------------|
| voice_line_file | 27 characters | 0 of 27 have files (non-playable or missing) |
| character_story_file | 22 characters | 0 of 22 have files (only Kaeya exists globally) |
| quest_dialogue_file | 20 characters | 0 of 20 (no quest folders exist) |
| claim_mapping_review | 4 characters | N/A — requires prior source ingestion |
| human_review | 2 characters | N/A — requires human judgment |

---

## Resolution Feasibility Assessment

| Route | Feasible now? | Prerequisite | Characters unlocked |
|-------|---------------|--------------|---------------------|
| Voice line ingestion (playable) | Yes — 97 files exist | Source ID registration | Arlecchino, Tartaglia, Aether, Lumine (+85 systemic) |
| Voice line ingestion (non-playable) | No — files do not exist locally | Game data extraction or external source | Dottore, Sandrone, Columbina, Varka, Nicole, Capitano, Alice, Pierro, Pantalone, Pulcinella |
| Character story provenance | No — only Kaeya exists | Game data extraction | All 22 requiring character_story_file |
| Quest dialogue provenance | No — no folders exist | Quest transcript extraction | All 20 requiring quest_dialogue_file |
| Claim mapping | Blocked by source ingestion | Complete source ingestion first | Columbina, Aether, Lumine, Dottore |
| Human review | Always available | Reviewer availability | Dottore, Sandrone |
