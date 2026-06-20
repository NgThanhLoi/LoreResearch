# Priority Source Map

Generated: 2026-06-20 — Pass 2 Source Ingestion Framework

## Purpose

Map critical wiki claims to their required sources, showing what is needed before claims can be verified or upgraded.

## Claim-to-Source Table

| Claim ID | Claim/topic | Current label/status | Current source status | Needed source | Candidate source | Priority | Affected files | Safe until source? |
| -------- | ----------- | -------------------- | --------------------- | ------------- | ---------------- | -------- | -------------- | ------------------ |
| CLM-001 | Dottore rank/faction within Fatui Harbingers | UNVERIFIED | source_missing | Direct quest/dialogue source, official manga/profile/post if any, mentions in other characters' voice lines, reliable transcript candidate | EX-API-001, EX-API-003 | P0 | wiki/entities/characters/Dottore.md | blocked |
| CLM-002 | Dottore Segments (multiple bodies) | UNVERIFIED | source_missing | Quest dialogue confirming Segments (Sumeru AQ if applicable) | EX-API-003 (Sumeru AQ transcript) | P0 | wiki/entities/characters/Dottore.md | only_as_theory |
| CLM-003 | Dottore experiments on children/delusions | UNVERIFIED | source_missing | Quest dialogue, mentions in other characters' voice lines | EX-API-003, local voice lines of affected characters | P0 | wiki/entities/characters/Dottore.md, ooc-risk-index | only_as_theory |
| CLM-004 | Sandrone Harbinger identity | UNVERIFIED | source_missing | Direct quest/dialogue source, official profile/post if any, mentions in other characters' voice lines, reliable transcript candidate | EX-API-001, EX-API-003 | P0 | wiki/entities/characters/Sandrone.md | blocked |
| CLM-005 | Sandrone machine/puppet body | UNVERIFIED | source_missing | Quest dialogue if any, official character description | EX-API-003 | P0 | wiki/entities/characters/Sandrone.md | only_as_theory |
| CLM-006 | Sandrone-Rotwang link | THEORY | source_missing | Weapon/artifact lore connecting Sandrone to Rotwang | Local sources/weapon_stories/, sources/artifact_descriptions/ | P0 | unverified-lore-register | only_as_theory |
| CLM-007 | Columbina = Kuutar / Seelie / Moon Maiden | THEORY | indirect_source_only | Direct confirmation in quest/voice | EX-API-003, any Columbina quest dialogue | P1 | unverified-lore-register, Columbina.md | only_as_theory |
| CLM-008 | Columbina ancient power / strength claims | THEORY | indirect_source_only | Voice lines from other Harbingers about Columbina | Local voice_lines/ (Tartaglia, Arlecchino mention) | P1 | power-system-governance | only_as_indirect |
| CLM-009 | Skirk identity and Abyss connection | UNVERIFIED | source_missing | Quest dialogue (Caribert, AQ appearances) | EX-API-003, local VLAQ files | P0 | source-gap-report SG-0004 | only_as_theory |
| CLM-010 | Gnosis as shackles / control mechanism | THEORY | indirect_source_only | Quest dialogue revealing Gnosis true nature | Local VLAQ + EX-API-003 | P1 | unverified-lore-register, power-system-governance | only_as_theory |
| CLM-011 | Third Descender identity/claims | THEORY | source_missing | Quest dialogue, book texts | Local BK files + VLAQ files | P1 | unverified-lore-register | only_as_theory |
| CLM-012 | Nod-Krai Acts II–VII story events | UNVERIFIED | source_missing | Full quest transcripts for Acts II-VII | EX-API-003, EX-DB-001 | P0 | All nod-krai topics, quest skeletons | blocked |
| CLM-013 | Nod-Krai mythology (3 moons, Kuuvahki) | STRONGLY IMPLIED (partial) | partial | Book texts (BK-0003 confirms some), quest dialogue for rest | Local BK-0003 + missing quest dialogue | P1 | topics/nod-krai/mythology, unverified-lore-register | only_as_indirect |
| CLM-014 | Fontaine final AQ / Focalors sacrifice | CANON (likely) | needs_primary_source | Quest transcript for Fontaine Act V | Local VLAQ files (check coverage) | P1 | wiki/entities/characters/Furina.md, Neuvillette.md | yes_with_existing_source (if VLAQ covers) |
| CLM-015 | Wanderer / Irminsul memory rewrite | CANON | needs_primary_source | Interlude quest transcript | Local VLAQ files (check coverage) | P1 | wiki/entities/characters/Wanderer.md, contradiction-register | yes_with_existing_source (if VLAQ covers) |
| CLM-016 | Nahida = Rukkhadevata lesser lord / memory erasure | CANON | needs_primary_source | Sumeru AQ transcript | Local VLAQ files (check coverage) | P1 | wiki/entities/characters/Nahida.md, contradiction-register | yes_with_existing_source (if VLAQ covers) |
| CLM-017 | Raiden Ei vs Shogun puppet consciousness | CANON | needs_primary_source | Inazuma AQ + Raiden story quest | Local VLAQ files + Raiden voice lines | P1 | wiki/entities/characters/Raiden Shogun.md | yes_with_existing_source |
| CLM-018 | Traveler vs Abyss sibling roles | CANON | needs_primary_source | Cross-quest compilation | Multiple local VLAQ files | P1 | Aether.md, Lumine.md, contradiction-register | yes_with_existing_source |
| CLM-019 | Character stories for Level 3 audits | N/A | source_missing | Character story texts (all 109 characters) | EX-API-001 (genshin-db), EX-API-003 | P0 | All character pages pending Level 3 | blocked |
| CLM-020 | World quest lore claims (general) | various | needs_primary_source | World quest transcripts | EX-API-003 (Fandom quest pages) | P2 | Various topic/entity files | only_as_indirect |
| CLM-021 | Power system indirect claims | various | indirect_source_only | Cross-reference against weapon/artifact/book sources | Local sources/ (WS, AR, BK) | P2 | power-system-governance | yes_with_existing_source |

## Safety Legend

| Value | Meaning |
| ----- | ------- |
| blocked | Cannot proceed at all without source |
| only_as_theory | Can exist in wiki as THEORY/UNVERIFIED only |
| only_as_indirect | Can exist with indirect label, not CANON |
| yes_with_existing_source | Current local sources likely sufficient |

## Key Observations

1. **P0 blockers** (CLM-001 through CLM-006, CLM-012, CLM-019): These claims cannot advance without new source ingestion. Dottore, Sandrone, Nod-Krai Acts II-VII, and character stories are hard-blocked.

2. **Likely already covered** (CLM-014 through CLM-018): These claims likely have source material in `sources/voice_lines/archon_quests/` but need verification that specific files cover the relevant quest acts.

3. **Theory-safe** (CLM-007 through CLM-011, CLM-013): These can remain in the wiki as THEORY/UNVERIFIED without harm, but cannot be upgraded without new source.

4. **genshin-db + Fandom API** are the most versatile candidate sources, potentially covering CLM-001 through CLM-005, CLM-012, CLM-019, and CLM-020.

## Pass 4 VLAQ Coverage Update

> **⚠️ SUPERSEDED:** Pass 4 recommendations below are superseded by the Pass 4.1 Strictness Update section that follows. Use Pass 4.1 recommendations as the current source of truth. This section is retained for historical reference only.

Local VLAQ coverage verified for priority claims CLM-014 through CLM-018 and checked for CLM-009 through CLM-011.

| Claim ID | Pass 4 local VLAQ coverage | Local source candidate | Recommendation | Notes |
| -------- | -------------------------- | ---------------------- | -------------- | ----- |
| CLM-014 | coverage_found (direct) | VLAQ-FONTAINE-001, VLAQ-FONTAINE-002 + 3 uninspected Fontaine files | ready_for_human_review | Furina breakdown + Neuvillette judgment + prophecy references confirmed |
| CLM-015 | partial_coverage (strong_indirect) | VLAQ-WANDERER-001 + Akasha Rung Động files | local_coverage_partial | Wanderer backstory confirmed; Irminsul rewrite mechanics partially in Sumeru final |
| CLM-016 | coverage_found (direct) | VLAQ-SUMERU-001 + Akasha Rung Động/Ngày Jnagarbha.md | ready_for_human_review | Nahida=Kusanali confirmed; Rukkhadevata design confirmed; memory erasure in Jnagarbha file |
| CLM-017 | coverage_found (direct) | VLAQ-INAZUMA-001, VLAQ-INAZUMA-002 | ready_for_human_review | Ei/puppet directly stated; Gnosis handoff; Plane of Euthymia confirmed |
| CLM-018 | coverage_found (direct) | VLAQ-TRAVELER-001, VLAQ-TRAVELER-002 + 10 other files | ready_for_human_review | Three dedicated arc folders: "We Will Be Reunited", "Caribert", "Khúc An Hồn Nơi Đáy Vực" |
| CLM-009 | coverage_not_found | None | still_missing | Zero VLAQ files contain "Skirk" keyword |
| CLM-010 | weak_indirect only | VLAQ-INAZUMA-001 (partial) | keep_theory | "Shackles" interpretation not directly supported; Gnosis as "useless" after Ei severed Celestia ties |
| CLM-011 | partial_coverage (weak) | VLAQ-WANDERER-001 | local_coverage_partial | "Kẻ Đổ Bộ" referenced but Third Descender identity not confirmed |

## Pass 4.1 Strictness Update

Corrected overconfident recommendations from Pass 4. Only claims with direct inspected evidence retain `ready_for_human_review`. Uninspected files downgraded.

| Claim ID | Previous Pass 4 recommendation | Pass 4.1 corrected recommendation | Reason | Next action |
| -------- | ------------------------------ | --------------------------------- | ------ | ----------- |
| CLM-014 | ready_for_human_review | partial_primary_ready | Furina/prophecy/Neuvillette directly inspected; Focalors sacrifice file NOT inspected | Deep read `Vở Kịch Của Sóng Đen Và Sương Trắng.md` before full primary_source_found |
| CLM-015 | local_coverage_partial | needs_deep_read | Only opening 40 lines of Wanderer file inspected; Irminsul rewrite mechanics not seen | Deep read `Mời Uống Ly Rượu Mừng Chiến Thắng.md` + `Ngày Jnagarbha.md` |
| CLM-016 | ready_for_human_review | primary_source_found_for_identity; needs_deep_read_for_memory_erasure | Identity confirmed directly; memory erasure in uninspected file | Deep read `Ngày Jnagarbha.md` for memory erasure sub-claim |
| CLM-017 | ready_for_human_review | primary_source_found_after_human_review | Both supporting files directly inspected with clear evidence | Human review is final gate |
| CLM-018 | ready_for_human_review | needs_file_level_confirmation | Only 2 of 12 files inspected; Dainsleif confirmed but sibling encounter/Khaenri'ah lore not | Deep read remaining Caribert + Khúc An Hồn files |
| CLM-009 | still_missing | source_missing | No change | External ingestion needed |
| CLM-010 | keep_theory | keep_theory | No change; "shackles" not stated | None unless new source found |
| CLM-011 | local_coverage_partial | needs_deep_read | Only opening portion inspected; Descender concept mentioned but not explained | Deep read full `Cội Nguồn Nghiêng Ngả` file |
