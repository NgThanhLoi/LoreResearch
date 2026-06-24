# Pass 22 — Next Actions

## Summary of Pass 22 Outcomes

- **15 of 32 claim clusters** now have evidence packets (47%)
- **9 claim clusters** remain blocked due to source absence (28%)
- **2 claim clusters** deferred to Pass 23 (non-quest voice-line context)
- **Capitano** has zero local quest dialogue — entirely blocked
- **Paimon** identity theories remain fully blocked
- **Nod-Krai transcripts** are metadata-only — major gap for Dottore/Dainsleif/Skirk/Abyss Sibling
- **Dottore rank number** (2nd seat) not directly stated in evidence — downgraded to partial_support
- **Aether/Lumine Descender status** ambiguous — requires human review

---

## Recommended Next Passes

### Pass 23 — Official Profile / Voice-Line Ingestion Preparation

- **Purpose**: Prepare ingestion pipeline for character official profiles and remaining voice-line sources that exist locally but are not indexed
- **Candidate group**: Capitano (priority — zero sources), Columbina, Dainsleif, Paimon, Alice
- **Why next**: Capitano is completely blocked without profile/voice-line ingestion. Columbina and Alice were identified in Pass 21 as requiring official_profile_ingestion. Multiple candidates have voice-line files that exist locally but are not formally indexed.
- **Scope**: Inventory existing voice-line files for unindexed candidates, define ingestion method, propose source IDs (not create), get human approval
- **Risk**: Must not create source IDs or modify source-index without human approval
- **Dependency**: None — can proceed immediately

### Pass 24 — Artifact / Book / Event Provenance Preparation

- **Purpose**: Extract evidence from local artifact descriptions and book texts relevant to blocked characters
- **Candidate group**: Rhinedottir/Gold, Alice, Dainsleif (secondary), Khaenri'ah-linked candidates
- **Why next**: Pass 20 routed Rhinedottir toward artifact/book provenance. Local `sources/artifact_descriptions/` (50+ files) and `sources/book_texts/` (100+ files) exist but have never been inspected for character-specific claims.
- **Scope**: Read-only inspection of artifact/book files, evidence packet creation, no page mutations
- **Risk**: Artifact lore is fragmentary — overclaim risk from isolated descriptions
- **Dependency**: None — can proceed in parallel with Pass 23

### Pass 25 — Dedup and Page Status Cleanup

- **Purpose**: Resolve CON-0015 (Traveler/Aether/Lumine/Abyss Sibling page boundaries), define canonical page scope for each identity
- **Candidate group**: Aether, Lumine, Traveler, Abyss Sibling, Paimon (relationship claims)
- **Why needed before page upgrades**: Pass 22 evidence reveals the same claims appear across Traveler/Sibling with player-selection ambiguity. Without dedup governance, claim mapping would create contradictory pages.
- **Scope**: Governance document, page boundary rules, dedup policy — no page creation yet
- **Risk**: Requires human decision on page boundaries
- **Dependency**: Passes 22-24 should be complete (evidence context needed)

### Pass 26 — Priority Claim Mapping A

- **Purpose**: Formal claim-level mapping for the 15 evidence_packet_created clusters from Pass 22
- **Candidate group**: Dottore (5 packets), Dainsleif (4 packets), Abyss Sibling (3 packets), Aether/Lumine (3 packets)
- **Why deferred until evidence packets are reviewed**: Claim mapping requires human review checkpoints (identified in Pass 22 risk report), dedup governance (Pass 25), and source ID creation (Pass 23)
- **Scope**: Formal source-ID creation, claim-level reliability assignment, page patch proposals
- **Risk**: Premature canonization without human review; must gate on Pass 25 completion
- **Dependency**: Passes 23, 24, 25 should be complete; human review checkpoints from Pass 22

---

## Blocked Work Requiring Human Decisions

| Decision needed | Blocking | Impact |
|---|---|---|
| Natlan quest dialogue ingestion authorization | Capitano (all 5 clusters) | Cannot proceed with Capitano until Natlan quest content is ingested |
| Nod-Krai transcript ingestion scope | Dottore (False Moon), Dainsleif (NK dialogue), Abyss Sibling (NK presence), Skirk | 4+ clusters remain blocked until NK transcripts are locally available |
| Traveler page boundary governance | Aether/Lumine/Traveler/Abyss Sibling dedup | Claim mapping cannot assign claims to pages without boundary rules |
| NK-07 evidence evaluation criteria | Dottore, Columbina | NK-07 evidence remains guarded without editorial standard |
| Narrator reliability editorial standard | Dainsleif (2 clusters) | Cryptic/partial-knowledge claims cannot be mapped without reliability policy |
| Paimon identity-theory governance | Paimon (all origin clusters) | Identity theories remain blocked indefinitely without policy |
| Official profile ingestion method | Capitano, Columbina, Alice | Human must approve how official profiles are ingested |
| Segment destruction finality | Dottore personality/identity | Story may contradict; human must evaluate recency |

---

## Priority Order

```
1. Pass 23 (profile/voice-line prep) — unblocks Capitano, Columbina
2. Pass 24 (artifact/book provenance) — unblocks Rhinedottir, adds depth
3. Pass 25 (dedup governance) — prerequisite for claim mapping
4. Pass 26 (claim mapping A) — first canon upgrades possible
```

Passes 23 and 24 can run in parallel. Pass 25 requires output from both. Pass 26 requires Pass 25.

---

## Optional: Pass 22.5 — Nod-Krai Transcript Ingestion

If human authorizes Nod-Krai transcript ingestion before Pass 23:

- **Purpose**: Ingest AQ-NK-ACT7 (and optionally ACT2/ACT4/ACT8) transcripts from Fandom wiki (revision-pinned) into local workspace
- **Candidate group**: Dottore, Dainsleif, Abyss Sibling, Skirk, Sandrone
- **Why**: Would unblock 4+ currently-still_blocked clusters and provide Nod-Krai evidence for Pass 26
- **Risk**: Copyright policy must be respected; EXTERNAL_SOURCE_POLICY Tier C rules apply
- **Dependency**: Human authorization + revision-pin verification

---

## What Must NOT Happen Next

- ❌ Character pages must NOT be upgraded until Pass 26 claim mapping is complete and human-reviewed
- ❌ Capitano page must NOT be created from memory or external sources
- ❌ Paimon identity theories must NOT be canonized
- ❌ NK-07 evidence must NOT be used as canon without evaluation criteria
- ❌ Dottore segment claims must NOT be stated as current-state without temporal verification
- ❌ Traveler/Abyss Sibling claims must NOT be mapped until dedup governance exists
