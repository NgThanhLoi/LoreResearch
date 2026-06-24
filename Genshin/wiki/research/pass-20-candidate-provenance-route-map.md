# Pass 20 — Candidate Provenance Route Map

## Purpose

Map each Pass 20 candidate to their recommended provenance route based on local source package feasibility findings.

## Route Map Table

| Candidate | Current page path | Current status | Source package signal | Sufficiency | Recommended route | Human review? | Claim mapping later? | Next pass bucket |
|-----------|-------------------|----------------|---------------------|-------------|-------------------|---------------|---------------------|-----------------|
| Dottore | `wiki/entities/characters/Dottore.md` | blocked_by_missing_source | partial_local_package_found | partial_needs_more_sources | quest_dialogue_provenance → official_profile_ingestion → human_review | YES — required | YES — Pass 26+ | Pass_22_quest_dialogue_provenance_A |
| Sandrone | `wiki/entities/characters/Sandrone.md` | blocked_by_missing_source | partial_local_package_found | insufficient_keep_blocked | quest_dialogue_provenance → official_profile_ingestion → human_review | YES — required | YES — Pass 26+ | Pass_22_quest_dialogue_provenance_A |
| Pierro | None (no page exists) | source_missing_no_page | no_local_package_found | not_resolvable_currently | official_profile_ingestion → quest_dialogue_provenance → keep_blocked | YES — required | YES — deferred | Pass_23_official_profile_voice_line_ingestion |
| Rhinedottir | None (no page exists) | source_missing_no_page | only_analysis_files_found | insufficient_keep_blocked | artifact_book_provenance → event_quest_provenance → human_review | YES — required | YES — deferred | Pass_24_artifact_book_event_provenance |
| Aether | `wiki/entities/characters/Aether.md` | active (Level 2, mixed) | local_package_found | partial_needs_more_sources | traveler_profile_provenance → dedup_review → claim_mapping_later | Recommended | YES — Pass 26+ | Pass_25_dedup_and_page_status_cleanup |
| Lumine | `wiki/entities/characters/Lumine.md` | active (Level 2, mixed) | local_package_found | partial_needs_more_sources | traveler_profile_provenance → dedup_review → claim_mapping_later | Recommended | YES — Pass 26+ | Pass_25_dedup_and_page_status_cleanup |

## Route Explanations

### Quest Dialogue Provenance (Dottore, Sandrone)

Both P0 candidates have partial quest provenance files in the Nod-Krai archon quest series:
- Dottore: `AQ-NK-ACT7.md` — "Moonless Night" (Moon authority, False Moon context)
- Sandrone: `AQ-NK-ACT2.md` — "The Ashen-White Order Burns" (faction role)

These are metadata-level provenance candidates, not full transcripts. Future passes must:
1. Extract specific dialogue lines at claim level
2. Map claims to source IDs
3. Submit for human review before any page upgrade

### Official Profile Ingestion (Pierro)

Pierro has zero local source packages. The only feasible path is:
1. Ingest official profile if one becomes available locally
2. Quest dialogue extraction from any Archon Quest appearances
3. Keep blocked until sufficient provenance exists

### Artifact/Book Provenance (Rhinedottir)

Rhinedottir's lore is primarily embedded in:
- Artifact set descriptions (various sets referencing "Gold")
- Book texts (Khaenri'ah-related books)
- Albedo's voice lines (indirect references)
- Event quest dialogues (Shadows Amidst Snowstorms, etc.)

The `entities/historical_figures/Rhinedottir.md` file is analysis-only and cannot serve as primary source.

### Traveler Profile Provenance (Aether, Lumine)

Both twins have:
- ✅ Voice line files (primary source exists)
- ❌ Character story files (missing)
- ✅ Quest provenance references (NK Acts 2–7)
- ⚠️ NK-07 guarded evidence (Moon Marrow, Descender — not canon-ready)

The critical risk is duplicate page identity. Both characters represent the same narrative role (Traveler vs. Abyss Sibling depending on player choice). Resolution requires:
1. Dedup review to establish page boundary rules
2. Character story ingestion when available
3. Claim mapping for Descender/Moon Marrow/Irminsul claims

### Human Review Requirements

| Candidate | Why human review required |
|-----------|--------------------------|
| Dottore | False Moon/Irminsul claims are high-traffic lore nodes; wrong framing poisons downstream pages |
| Sandrone | Rotwang definitively not found; Khaenri'ah link is guarded theory only |
| Pierro | Zero provenance for foundational claims (1st Harbinger, Khaenri'ah sage) |
| Rhinedottir | Gold/Khaenri'ah/Hexenzirkel triple intersection affects multiple dependent pages |
| Aether | Descender/Moon Marrow claims affect all storyline references (recommended, not blocking) |
| Lumine | Same as Aether; must be resolved jointly (recommended, not blocking) |
