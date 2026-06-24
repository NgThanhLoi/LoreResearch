# Pass 23+24 — Next Actions

## Purpose

Defines recommended next passes following the combined Pass 23+24 source preparation. Maintains lane separation and conservative progression.

---

## Immediate Next Passes

### Pass 25 — Dedup and Page Status Cleanup

**Priority**: HIGH — prerequisite for any claim mapping

**Scope**:
- Resolve CON-0015 (Traveler/Aether/Lumine/Abyss Sibling page boundary ambiguity)
- Define canonical page scope for each identity
- Create dedup governance policy
- Clean up manga duplicate files ({{tt}} naming variants)
- Verify character-inventory.md accuracy against actual wiki/entities/characters/ contents

**Dependency**: Passes 22-24 complete (evidence context needed for boundary decisions)

**Human decisions required**:
- Traveler page boundary: single page vs split by player-selection?
- Abyss Sibling: separate page or subsection of Traveler?
- Paimon: companion-only scope or identity-speculation allowed?

**Risk**: Cannot proceed with Pass 26 claim mapping without these governance decisions.

---

### Pass 26+ — Priority Claim Mapping Batches

**Priority**: HIGH — first canon upgrades possible after this

**Scope** (proposed batches):
1. **Batch A**: Dottore (5 evidence packets from Pass 22) — highest evidence density
2. **Batch B**: Dainsleif (4 evidence packets) — requires narrator-reliability editorial standard
3. **Batch C**: Abyss Sibling (3 packets) + Aether/Lumine (3 packets) — requires Pass 25 dedup governance
4. **Batch D**: Nod-Krai book claims (9 NK books) — requires content inspection first

**Dependency**: Pass 25 complete + human review of Pass 22 evidence packets

**Risk**: Premature canonization without human checkpoints. Each batch must be gated on human approval.

---

## Optional Controlled Ingestion Tests

### Optional Pass 23.1 — Official Profile / Voice-Line Controlled Ingestion Test

**Priority**: MEDIUM — unblocks Capitano and other missing-source characters

**Scope**:
- Define voice-line ingestion method (excerpt length, attribution format, source-ID schema)
- Test with 1-2 low-risk characters (e.g., Amber, Bennett) to validate pipeline
- Propose source IDs for human approval (do NOT create until approved)
- Define boundary between voice-line-as-profile vs voice-line-as-evidence

**Target characters for test**:
- Low-risk: Amber, Bennett (pipeline validation)
- Medium-risk: Kaeya (Khaenri'ah lineage — controlled test of risk handling)

**NOT in scope for 23.1**:
- Capitano profile ingestion (requires human authorization for external source)
- Columbina/Sandrone ingestion (requires source availability decision)
- Full voice-line index creation (too large for single test)

**Human decisions required**:
- Excerpt length limit for voice-line source files?
- Source-ID format for voice-line entries?
- Should Kaeya character_stories/Kaeya.md be indexed as part of this test?

---

### Optional Pass 24.1 — Artifact / Book / Event Controlled Ingestion Test

**Priority**: MEDIUM — adds depth to existing claim clusters

**Scope**:
- Content-inspect 5-10 high-risk artifact/book files identified in Pass 24 inventory
- Extract short paraphrase evidence (same rules as Pass 22 quest dialogue)
- Test provenance-mapping method for non-dialogue sources
- Validate claim-support classification for artifact/book evidence

**Target files for test** (prioritized by claim-cluster impact):
1. `sources/book_texts/Perinheri.md` — Descender/Khaenri'ah cosmology
2. `sources/book_texts/Bí Sử Phương Bắc.md` — Khaenri'ah history
3. `sources/artifact_descriptions/Lửa Trắng Xám.md` — Pale Flame / Pierro
4. `sources/artifact_descriptions/Kỵ Sĩ Đạo Nhuốm Máu.md` — Bloodstained / Khaenri'ah
5. `sources/book_texts/nod-krai/A Brief History of the Pale Starborn.md` — NK cosmology

**NOT in scope for 24.1**:
- Full artifact/book index creation
- Event source folder creation
- Weapon story bulk inspection (176+ files — separate pass)
- Canon upgrades from any inspected content

**Human decisions required**:
- Are NK English-language book files acceptable as local sources? (provenance unclear)
- Copyright policy for book text excerpts — how short must paraphrases be?
- Should event folder be created empty for future use?

---

## Blocked Work (Requires Human Authorization)

| Decision | Blocks | Impact |
|---|---|---|
| Natlan quest dialogue ingestion | Capitano (all clusters), Natlan mechanics | Cannot proceed without human-approved ingestion method |
| Nod-Krai transcript ingestion scope | Dottore (NK), Dainsleif (NK), Skirk, Abyss Sibling (NK) | 4+ claim clusters permanently blocked |
| Official profile ingestion method for non-playable characters | Capitano, Columbina, Sandrone, Pierro | Source_missing status cannot be resolved |
| Event source creation authorization | All event-exclusive lore | Zero event sources currently exist |
| NK book provenance verification | All 9 NK book claims | English text origin unclear |
| Traveler page boundary governance | All Traveler/Sibling claim mapping | Pass 26 Batch C blocked |
| Paimon identity-theory editorial standard | All Paimon origin clusters | Remain blocked indefinitely without policy |
| Narrator reliability editorial standard | Dainsleif (2 ambiguous clusters) | Cannot classify cryptic claims |

---

## What Must NOT Happen Next

- ❌ Character pages must NOT be upgraded until Pass 26 claim mapping is complete and human-reviewed
- ❌ Source IDs must NOT be created without human approval of ingestion method (Pass 23.1/24.1)
- ❌ Capitano page must NOT be filled from memory or external sources
- ❌ Paimon identity theories must NOT be canonized
- ❌ NK evidence must NOT be used as canon without provenance verification
- ❌ Artifact/book content must NOT be treated as proven claims without claim mapping
- ❌ Voice-line evidence must NOT be mixed with quest-dialogue evidence tier
- ❌ Event folder must NOT be created without ingestion policy

---

## Priority Order

```
1. Pass 25 (dedup governance) — prerequisite for claim mapping
2. Pass 23.1 (voice-line ingestion test) — unblocks methodology
3. Pass 24.1 (artifact/book inspection test) — adds depth
4. Pass 26 Batch A (Dottore claim mapping) — highest evidence density
5. Pass 26 Batch B (Dainsleif) — requires narrator-reliability standard
6. Pass 26 Batch C (Traveler/Sibling) — requires Pass 25 governance
7. Pass 26 Batch D (NK books) — requires provenance verification
```

Passes 23.1 and 24.1 can run in parallel. Pass 25 can run in parallel with both. Pass 26 requires all three.
