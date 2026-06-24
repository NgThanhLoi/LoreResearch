# Pass 21 — Next Actions

## Date: 2026-06-23

## Summary

Pass 21 assessed 6 high-risk source-light candidates (Columbina, Skirk, Capitano, Alice, Dainsleif, Paimon). All 30 claim clusters remain blocked. Zero candidates have sufficient local source packages for immediate provenance work. The following passes are recommended.

---

## Recommended Next Passes

### Pass 22 — Quest Dialogue Provenance Batch A

**Scope:** Extract claim-level provenance from local quest files where candidates appear.

**Candidates routed here:**
- Capitano (Natlan quest provenance)
- Dainsleif (AQ-NK-ACT7 and earlier Archon Quests)
- Paimon (traveler-adjacent dialogue across all AQ acts)
- Skirk (AQ-NK-ACT7 subquest mention — if transcript can be located)

**Prerequisite:** Local archon quest transcript files must be identified or ingested. Currently, only provenance index references exist (metadata pointers, not full transcripts).

**Claim clusters addressed:** 9 (from Pass 21 blocked-claim-cluster-map)

**What Pass 22 will NOT do:**
- Create character pages
- Upgrade claims to canon without human review
- Perform claim mapping
- Ingest external sources without approval

---

### Pass 23 — Official Profile / Voice-Line Ingestion Preparation

**Scope:** Prepare ingestion workflow for official character profiles and voice lines.

**Candidates routed here:**
- Columbina (primary — needs voice lines and official profile)
- Capitano (needs official profile)
- Alice (needs official profile — not playable, may have limited data)

**Prerequisite:** Human approval of ingestion method and scope. Official profiles directory does not exist yet.

**Claim clusters addressed:** 5 (from Pass 21 blocked-claim-cluster-map)

**What Pass 23 will NOT do:**
- Ingest without explicit human approval
- Create source IDs without following SOURCE_ID_RULES
- Canonize claims from ingested material without claim mapping

---

### Pass 24 — Artifact / Book / Event Provenance Preparation

**Scope:** Extract provenance from in-game books, artifact lore, and event quest transcripts.

**Candidates routed here:**
- Alice (primary — Hexenzirkel, event narrator claims, world-authority claims)
- Columbina (secondary — artifact/book references to Harbinger lore)

**Prerequisite:** Book/artifact/event source directories must be created and populated.

**Claim clusters addressed:** 4 (from Pass 21 blocked-claim-cluster-map)

**What Pass 24 will NOT do:**
- Overstate Alice's authority from event narration
- Treat comedy/entertainment framing as canonical world-building
- Ingest without traceability

---

### Pass 25 — Dedup and Page Status Cleanup

**Scope:** Resolve page boundary questions and deduplication risks.

**Relevant governance:**
- Traveler/Aether/Lumine/Abyss Sibling page boundaries (CON-0015)
- Paimon's relationship to Traveler identity governance
- Dainsleif's sibling knowledge intersecting Abyss Sibling identity

**Prerequisite:** Provenance passes (22-24) complete for affected candidates.

**What Pass 25 will NOT do:**
- Create duplicate pages
- Merge distinct characters without governance review
- Override CON-0015 constraints

---

### Pass 26+ — Priority Claim Mapping A

**Scope:** Map specific claims to confirmed source provenance, enabling canon upgrades.

**Candidates requiring claim mapping:**
- Columbina (Kuutar/Moon identity — NK-07 + AQ-NK-ACT4)
- Dainsleif (Irminsul/Descender-adjacent — NK-07 cross-reference)
- Capitano (power-scaling claims — multi-source required)
- Paimon (origin identity — if any source supports it)
- Skirk (Descender-adjacent — if source becomes available)
- Alice (world-authority — if event provenance supports it)

**Claim clusters addressed:** 6 (direct) + downstream resolution of earlier clusters

**Prerequisites:**
- Passes 22-24 complete (provenance work done)
- Human review checkpoints met
- Source IDs created following SOURCE_ID_RULES

---

## Later / Deferred

### Later_keep_blocked

**Candidates:**
- Skirk (2 claim clusters) — remains blocked until source material becomes available
- Paimon (2 claim clusters) — Celestia/Seelie theories and hidden power claims have zero local evidence

**Condition to unblock:** New source material ingested + human review

### Later_human_review

**Candidates:**
- Dainsleif (1 cluster) — narrator reliability is a meta-narrative judgment
- Paimon (1 cluster) — narrator/comedy framing vs. lore significance

**Condition to unblock:** Human editorial judgment on meta-narrative questions

---

## Decision Points Requiring Human Input

| Decision | Affects | When needed |
|----------|---------|-------------|
| Official profile ingestion method/scope | All candidates | Before Pass 23 |
| Quest transcript source availability | Capitano, Dainsleif, Paimon, Skirk | Before Pass 22 |
| NK-07 evidence evaluation criteria | Columbina, Dainsleif | Before Pass 26+ |
| Event transcript ingestion scope | Alice | Before Pass 24 |
| Natlan quest source authorization | Capitano | Before Pass 22 |
| Paimon identity-theory governance policy | Paimon | Before Pass 26+ |
| Narrator reliability editorial standard | Dainsleif, Paimon | Before Later_human_review |
| Traveler-adjacent character page boundaries | Paimon | Before Pass 25 |

---

## Do NOT Recommend

- ❌ Character page creation for any Pass 21 candidate
- ❌ Claim upgrades to canon without provenance + claim mapping
- ❌ NK-07 evidence canonization without human review
- ❌ Power-scaling canonization for Capitano
- ❌ Identity canonization for Columbina (Kuutar/Moon)
- ❌ Origin canonization for Paimon
- ❌ Source ingestion without explicit approval
- ❌ Skipping human review checkpoints
