# Pass 21 — Candidate Provenance Route Map

## Date: 2026-06-23

## Overview

This document maps each Pass 21 candidate to their recommended provenance route for future passes. Routes are determined by local source package availability and claim cluster requirements.

## Provenance Route Table

| Candidate | Current page path | Current status | Source package signal | Sufficiency | Recommended route | Human review? | Claim mapping later? | Next pass bucket |
|-----------|------------------|----------------|---------------------|-------------|-------------------|---------------|---------------------|-----------------|
| Columbina | wiki/entities/characters/Columbina.md | active / indirect_source_only | partial_local_package_found | partial_needs_more_sources | official_profile_ingestion → quest_dialogue_provenance → nk_guarded_evidence_review → human_review | Yes | Yes | Pass_23_official_profile_voice_line_ingestion |
| Skirk | wiki/entities/characters/Skirk.md | blocked / blocked_by_missing_source | only_analysis_files_found | insufficient_keep_blocked | quest_dialogue_provenance → official_profile_ingestion → human_review → keep_blocked | Yes | Yes | Later_keep_blocked |
| Capitano | none | no page | no_local_package_found | not_resolvable_currently | official_profile_ingestion → quest_dialogue_provenance → natlan_quest_provenance → human_review | Yes | Yes | Pass_22_quest_dialogue_provenance_A |
| Alice | none (entities/historical_figures/Alice.md is analysis only) | no wiki page | only_analysis_files_found | insufficient_keep_blocked | event_quest_provenance → artifact_book_provenance → official_profile_ingestion → human_review | Yes | Yes | Pass_24_artifact_book_event_provenance |
| Dainsleif | none | no page | partial_local_package_found | partial_needs_more_sources | archon_quest_provenance → world_quest_provenance → official_profile_ingestion → human_review | Yes | Yes | Pass_22_quest_dialogue_provenance_A |
| Paimon | none | no page | no_local_package_found | not_resolvable_currently | traveler_profile_provenance → quest_dialogue_provenance → official_profile_ingestion → human_review | Yes | Yes | Pass_22_quest_dialogue_provenance_A |

## Route Definitions

### official_profile_ingestion
Ingest HoYoverse official character profile data (in-game profile text, birthday letters, developer notes). Requires controlled ingestion workflow.

### quest_dialogue_provenance
Extract specific claim-supporting dialogue from archon/story/world quest transcripts already in local source files (or to be ingested). Does NOT mean full quest transcription.

### nk_guarded_evidence_review
Review NK-07 guarded evidence entries for a candidate. Evidence remains guarded until human review confirms claim mapping is safe.

### event_quest_provenance
Extract provenance from time-limited event quest dialogue/narration where the candidate appears.

### artifact_book_provenance
Extract provenance from in-game books, artifact lore descriptions, and readable items.

### archon_quest_provenance
Extract provenance specifically from Archon Quest transcripts (main storyline).

### world_quest_provenance
Extract provenance from World Quest transcripts where the candidate has significant appearances.

### traveler_profile_provenance
Special route for Traveler-adjacent characters (Paimon) — provenance drawn from Traveler's own profile materials and companion dialogue.

### natlan_quest_provenance
Specific to Capitano — provenance from Natlan Archon Quest acts where Capitano appears.

### human_review
All candidates require human review before any claim can be upgraded to canon.

### keep_blocked
Candidate remains in blocked/source-light state until sufficient source material is ingested.

## Key Constraints

1. **All 6 candidates require human review** before any status change.
2. **All 6 candidates require claim mapping** (Pass 26+) before page upgrades.
3. **No candidate can be resolved in Pass 21** — this pass is planning only.
4. **Skirk and Alice remain blocked** even after route execution begins — insufficient source signals.
5. **Capitano and Paimon have zero local sources** — entirely dependent on future ingestion.
6. **Columbina and Dainsleif have partial signals** (provenance index references) but no extracted transcripts.

## Dependencies

| Route step | Depends on |
|-----------|------------|
| official_profile_ingestion | Human approval of ingestion method |
| quest_dialogue_provenance | Local quest transcript availability (many absent) |
| nk_guarded_evidence_review | NK-07 evidence index + human evaluator |
| event_quest_provenance | Event transcript ingestion (not yet done) |
| artifact_book_provenance | Book/artifact text ingestion |
| claim_mapping | All provenance steps + human review |
