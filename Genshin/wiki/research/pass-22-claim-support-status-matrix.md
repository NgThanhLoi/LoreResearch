# Pass 22 — Claim Support Status Matrix

## Purpose

Tracks how Pass 22 quest dialogue evidence changes the guarded status of blocked claim clusters from Pass 20/21.

## Status Definitions

- **evidence_packet_created** — local quest dialogue evidence extracted and mapped; ready for claim mapping in Pass 26+
- **partial_support_only** — some contextual evidence exists but not enough for claim-level support
- **context_only_not_claim_support** — evidence provides background but does not directly support the claim
- **still_blocked** — no local evidence found; remains blocked pending source ingestion
- **requires_human_review** — evidence is ambiguous or high-risk; human must evaluate before claim mapping
- **requires_claim_mapping** — evidence exists but formal claim mapping process (Pass 26+) must confirm
- **source_absent** — no local source file contains relevant content
- **not_resolvable_from_quest_dialogue** — claim type requires non-dialogue sources (profiles, artifacts, etc.)

---

## Dottore Claims

| Candidate | Claim cluster | Previous status (Pass 20) | Pass 22 evidence status | New guarded status | Later pass required | Notes |
|---|---|---|---|---|---|---|
| Dottore | Harbinger rank/role | blocked_by_missing_source | partial_support_candidate (2 files) | evidence_packet_created | Pass 26 claim mapping | Harbinger role confirmed in dialogue; specific rank number (2nd seat) NOT stated in extracted evidence — rank number remains unverified |
| Dottore | Segment mechanics | evidence_found_guarded | direct_support_candidate (3 claims) | evidence_packet_created | Pass 26 claim mapping | Strong multi-file support; segment creation, destruction, and function all evidenced |
| Dottore | Sumeru/Akademiya actions | source_missing | direct_support_candidate (4 claims) | evidence_packet_created | Pass 26 claim mapping | Expulsion, return, god-creation project, Akasha weaponization all evidenced |
| Dottore | Nahida interaction | source_missing | direct_support_candidate (2 claims) | evidence_packet_created | Pass 26 claim mapping | Both confrontation and negotiation evidenced |
| Dottore | Motive/personality | source_missing | direct_support_candidate + partial (3 claims) | evidence_packet_created | Pass 26 claim mapping | Expendable-subjects pattern well-established |
| Dottore | False Moon / Nod-Krai | evidence_found_guarded (NK-07) | context_only (provenance pointer) | still_blocked | Pass 22.5 or later NK transcript ingestion | AQ-NK-ACT7 pointer exists but NO local transcript; NK-07 evidence remains guarded |

---

## Capitano Claims

| Candidate | Claim cluster | Previous status (Pass 21) | Pass 22 evidence status | New guarded status | Later pass required | Notes |
|---|---|---|---|---|---|---|
| Capitano | Harbinger rank (4th seat) | blocked_by_missing_source | source_absent | still_blocked | Pass 23 (official profile) or Natlan quest ingestion | Zero local quest dialogue |
| Capitano | Natlan involvement | requires_quest_dialogue | source_absent | still_blocked | Natlan quest ingestion required | Natlan Ch5 content exists but lacks Capitano |
| Capitano | Status/death claims | blocked_by_missing_source | source_absent | still_blocked | Natlan quest ingestion + human review | Cannot verify without source |
| Capitano | Power-scaling | blocked_by_missing_source | source_absent | not_resolvable_from_quest_dialogue | Requires specific combat dialogue | No power-scaling evidence obtainable from available files |
| Capitano | Motive/personality | blocked_by_missing_source | source_absent | still_blocked | Natlan quest ingestion required | Cannot characterize without source |

---

## Dainsleif Claims

| Candidate | Claim cluster | Previous status (Pass 21) | Pass 22 evidence status | New guarded status | Later pass required | Notes |
|---|---|---|---|---|---|---|
| Dainsleif | Khaenri'ah identity/status | requires_quest_dialogue | direct_support_candidate (3 claims) | evidence_packet_created | Pass 26 claim mapping | Expertise, shared origin, curse knowledge all evidenced |
| Dainsleif | Abyss Order relation | requires_quest_dialogue | direct_support_candidate (1 claim) | evidence_packet_created | Pass 26 claim mapping | Confirms Chlothar founded Abyss Order |
| Dainsleif | Sibling knowledge | requires_quest_dialogue | direct_support_candidate (2 claims) | evidence_packet_created | Pass 26 claim mapping | Traveled with sibling; Loom of Fate reference |
| Dainsleif | Irminsul/memory | evidence_found_guarded | direct_support_candidate (1 claim) + context (1) | evidence_packet_created | Pass 26 claim mapping | Memory erosion explicitly stated |
| Dainsleif | Narrator reliability | requires_human_review | ambiguous (2 claims) | requires_human_review | Human review + Pass 26 | Cryptic statements; partial-knowledge pattern; "Sinner" reference |
| Dainsleif | Nod-Krai dialogue | evidence_found_guarded | context_only (provenance pointer) | still_blocked | NK transcript ingestion | No local transcript available |

---

## Aether / Lumine / Traveler Claims

| Candidate | Claim cluster | Previous status (Pass 20) | Pass 22 evidence status | New guarded status | Later pass required | Notes |
|---|---|---|---|---|---|---|
| Aether/Lumine | Traveler-Sibling split | requires_claim_mapping | direct_support_candidate (1 claim) | evidence_packet_created | Pass 25 dedup + Pass 26 | Star-sea journey and first separation confirmed |
| Aether/Lumine | Descender status | requires_claim_mapping | ambiguous (2 claims) | requires_human_review | Pass 26 claim mapping + human review | "Person chosen by dragon" + Sinner encouragement — high cosmology risk; neither directly states Descender status |
| Aether/Lumine | Abyss royalty (sibling role) | requires_claim_mapping | direct_support_candidate (1 claim) | evidence_packet_created | Pass 25 dedup + Pass 26 | Player-selection ambiguity must be guarded |
| Aether/Lumine | Sibling memory access | source_missing | direct_support_candidate (1 claim) | evidence_packet_created | Pass 26 claim mapping | Mirror-memory mechanism evidenced |
| Aether/Lumine | Inter-dimensional travel | requires_claim_mapping | non_quest_context (2 voice-line claims) | deferred_to_pass_23 | Pass 23 voice-line ingestion | Voice lines only — not quest dialogue evidence; deferred to Pass 23 scope |

---

## Paimon Claims

| Candidate | Claim cluster | Previous status (Pass 21) | Pass 22 evidence status | New guarded status | Later pass required | Notes |
|---|---|---|---|---|---|---|
| Paimon | Narrator/knowledge limitations | requires_quest_dialogue | partial_support_candidate (1 claim) | partial_support_only | Pass 26 claim mapping | Perception gap established but single instance |
| Paimon | Identity/origin clues | blocked_by_missing_source | non_quest_context (1 voice-line claim) | deferred_to_pass_23 | Pass 23 voice-line ingestion | Single celestial-cloth detail from Aether.md voice line — not quest dialogue; deferred |
| Paimon | Celestia/Seelie/Unknown God theories | blocked_by_missing_source | source_absent | still_blocked | Remains blocked indefinitely | No quest dialogue evidence for origin theories |
| Paimon | Hidden power/knowledge | blocked_by_missing_source | source_absent | still_blocked | Remains blocked | No evidence of hidden abilities in available sources |
| Paimon | Role as Traveler companion | requires_quest_dialogue | partial_support_candidate (indirect) | partial_support_only | Pass 26 (low priority) | Abundantly confirmed implicitly but no dedicated claim source |

---

## Abyss Sibling Claims

| Candidate | Claim cluster | Previous status (Pass 20/21) | Pass 22 evidence status | New guarded status | Later pass required | Notes |
|---|---|---|---|---|---|---|
| Abyss Sibling | Abyss royalty status | requires_claim_mapping | direct_support_candidate (2 claims) | evidence_packet_created | Pass 25 dedup + Pass 26 | Dual confirmation (Chlothar + Dainsleif) |
| Abyss Sibling | Agency/allegiance | requires_claim_mapping | direct_support_candidate (1 claim) | evidence_packet_created | Pass 26 claim mapping | Chose Chlothar's path willingly |
| Abyss Sibling | Fate Weaver connection | evidence_found_guarded | partial_support_candidate (1 claim) | requires_claim_mapping | Pass 26 + human review | Implied independent decision |
| Abyss Sibling | Nod-Krai presence | evidence_found_guarded | context_only (provenance pointer) | still_blocked | NK transcript ingestion | No local transcript |
| Abyss Sibling | Shared memory with Traveler | source_missing | direct_support_candidate (1 claim) | evidence_packet_created | Pass 26 claim mapping | Mirror-memory mechanism |

---

## Summary Counts

| Status | Count | % |
|---|---|---|
| evidence_packet_created | 15 | 47% |
| still_blocked | 9 | 28% |
| requires_human_review | 2 | 6% |
| partial_support_only | 2 | 6% |
| deferred_to_pass_23 | 2 | 6% |
| not_resolvable_from_quest_dialogue | 1 | 3% |
| requires_claim_mapping | 1 | 3% |
| **Total claim clusters** | **32** | 100% |

## Key Findings

1. **Dottore**: 5 of 6 claim clusters now have evidence packets. Harbinger role confirmed but specific rank number (2nd seat) NOT directly stated — downgraded to partial_support. False Moon/NK remains blocked.
2. **Capitano**: All 5 claim clusters remain blocked — source_absent across the board.
3. **Dainsleif**: 4 of 6 claim clusters have evidence packets. Narrator reliability requires human review.
4. **Aether/Lumine**: 3 of 5 quest-dialogue claim clusters have evidence packets. Descender status downgraded to requires_human_review (evidence is ambiguous, not direct). Inter-dimensional travel deferred to Pass 23 (voice-line source, not quest dialogue).
5. **Paimon**: 0 of 5 claim clusters resolved from quest dialogue. Identity/origin clue deferred to Pass 23 (voice-line source). Theories remain firmly blocked.
6. **Abyss Sibling**: 3 of 5 claim clusters have evidence packets.

**Scope clarification**: 29 rows are based on quest dialogue evidence. 2 rows are deferred to Pass 23 as non-quest voice-line context. 1 row (Abyss Sibling Fate Weaver) is requires_claim_mapping.

**No claims have been upgraded to CANON. All evidence_packet_created statuses require Pass 26+ claim mapping for resolution.**
