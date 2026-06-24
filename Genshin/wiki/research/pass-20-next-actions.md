# Pass 20 — Next Actions

## Summary

Pass 20 confirmed that local source packages are insufficient for most candidates. Only Aether and Lumine have primary source files (voice lines). Dottore and Sandrone have partial quest provenance metadata. Pierro and Rhinedottir have no usable primary source.

No candidates can have claims resolved or pages upgraded without further source ingestion, claim-level provenance extraction, and human review.

---

## Recommended Next Passes

### Pass 21 — High-Risk Source Package Feasibility / Provenance Batch B

- **Purpose:** Extend feasibility assessment to remaining P1/P2 candidates from Pass 19.5 queue (Columbina, Skirk, Paimon, Dainsleif, plus additional blocked characters)
- **Candidate group:** Columbina, Skirk, Paimon, Dainsleif, Abyss Sibling, and P2/P3 candidates as queue permits
- **Why next:** Pass 20 covered the 6 highest-priority candidates. The remaining 31 candidates in the Pass 19.5 queue need the same feasibility assessment before any source ingestion work begins.
- **Expected output:** Feasibility reports, provenance route maps, and blocked claim clusters for Batch B candidates
- **Guardrails:** Same as Pass 20 — read-only discovery, no page mutations, no claim mapping

---

### Pass 22 — Quest Dialogue Provenance Batch A

- **Purpose:** Extract claim-level provenance from local quest dialogue/provenance files for candidates with existing quest references
- **Candidate group:** Dottore (AQ-NK-ACT7), Sandrone (AQ-NK-ACT2), Aether/Lumine (NK Acts 2–7)
- **Required guardrails:**
  - Only extract from locally available provenance files (no external ingestion)
  - Create source-index entries only for verified local files
  - Do NOT canonize claims — extraction produces `provenance_candidate` entries
  - NK-07 evidence remains guarded until claim mapping
  - Human review required before Dottore/Sandrone page upgrades
  - Do not paste long copyrighted dialogue
- **Prerequisites:** Pass 20 acceptance, human confirmation of quest provenance extraction scope
- **Expected output:** Claim-level extraction maps, updated source-index entries (where files exist), provenance candidate records

---

### Pass 23 — Official Profile / Voice-Line Ingestion Preparation

- **Purpose:** Determine which official profile and voice-line files need to be created/ingested for blocked candidates, and prepare ingestion workflow
- **Candidate group:** Pierro, Dottore, Sandrone, Rhinedottir (official profiles); Columbina, Skirk (voice lines)
- **Required guardrails:**
  - Only prepare ingestion workflow — do not ingest until sources are locally available
  - `sources/official_profiles/` folder must be created with proper structure
  - Follow SOURCE_ID_RULES.md for any new entries
  - Follow EXTERNAL_SOURCE_POLICY.md for source tier classification
  - Human review required for Harbinger official profiles
- **Prerequisites:** Pass 20 and Pass 21 acceptance
- **Expected output:** Ingestion readiness report, folder structure proposal, source availability checklist

---

### Pass 24 — Artifact / Book / Event Provenance Extraction

- **Purpose:** Extract claim-level provenance from artifact descriptions, book texts, and event quest sources for Rhinedottir and other candidates with indirect artifact/book references
- **Candidate group:** Rhinedottir (primary), Pierro (secondary), any Gold/Khaenri'ah-linked candidates
- **Required guardrails:**
  - Extract from `sources/artifact_descriptions/` and `sources/book_texts/` only
  - Do not conflate Gold = Rhinedottir without claim-level evidence mapping
  - Creation claims (Durin, Albedo) require multi-source cross-reference
  - Do not overstate alchemy powers or Khaenri'ah causality
- **Prerequisites:** Pass 22 and Pass 23 acceptance
- **Expected output:** Artifact/book provenance maps, Gold identity evidence chain, creation-claim evidence status

---

### Pass 25 — Dedup and Page Status Cleanup

- **Purpose:** Resolve Traveler / Aether / Lumine page duplication risk and establish clear page boundary rules
- **Candidate group:** Aether, Lumine, Traveler (proposed), Abyss Sibling
- **Required guardrails:**
  - Do not assume player-selected protagonist
  - CON-0015 (Traveler vs Abyss sibling role separation) must be respected
  - Page boundary rules must be approved by human reviewer before implementation
  - Do not delete existing pages without approval
- **Prerequisites:** Pass 22 and Pass 23 provenance work informs page content scope
- **Expected output:** Page boundary proposal, dedup rules document, updated page status recommendations

---

### Pass 26+ — Priority Claim Mapping A

- **Purpose:** Perform claim-level mapping for the highest-risk claims: Descender/Moon Marrow, False Moon, Harbinger ranks, and Khaenri'ah identity claims
- **Candidate group:** Dottore (False Moon, Irminsul), Aether/Lumine (Descender, Moon Marrow), Pierro (Khaenri'ah sage), Rhinedottir (Gold)
- **Why deferred:** Claim mapping requires:
  1. Source provenance extraction complete (Passes 22–24)
  2. Source-index entries created for verified files
  3. Human review checkpoints for P0 candidates
  4. NK-07 evidence formally evaluated against provenance chain
- **Required guardrails:**
  - Each claim must cite specific source ID + line/passage
  - No claim upgrades without multi-source corroboration for HIGH/CRITICAL claims
  - NK-07 evidence evaluated against direct quest dialogue provenance
  - Human review mandatory before any blocked page changes to CANON
- **Expected output:** Claim status resolution, page upgrade authorization (where provenance confirms), remaining blocked claims documented

---

## Pass Dependency Chain

```
Pass 20 (Feasibility A) ─── CURRENT / COMPLETE
    │
    ├── Pass 21 (Feasibility B) ─── next immediate
    │       │
    │       └── extends to remaining 31 candidates
    │
    ├── Pass 22 (Quest Dialogue Provenance A)
    │       │
    │       ├── requires: Pass 20 accepted
    │       └── unlocks: source-index entries for quest provenance
    │
    ├── Pass 23 (Official Profile / Voice-Line Prep)
    │       │
    │       ├── requires: Pass 20 + 21 accepted
    │       └── unlocks: new source file ingestion paths
    │
    ├── Pass 24 (Artifact / Book / Event Provenance)
    │       │
    │       ├── requires: Pass 22 + 23 accepted
    │       └── unlocks: Rhinedottir claim evidence
    │
    ├── Pass 25 (Dedup and Page Status Cleanup)
    │       │
    │       ├── requires: Pass 22 + 23 provenance
    │       └── unlocks: Traveler/Aether/Lumine page boundary rules
    │
    └── Pass 26+ (Priority Claim Mapping A)
            │
            ├── requires: Passes 22–25 complete
            ├── requires: human review checkpoints passed
            └── unlocks: first page upgrades from blocked → canon (where provenance confirms)
```

---

## Human Decision Points

Before proceeding beyond Pass 21, the following human decisions are required:

1. **Quest provenance extraction scope** — How much dialogue can be extracted per provenance file? (Affects Pass 22)
2. **Official profile ingestion method** — How will official profiles be sourced and stored? (Affects Pass 23)
3. **Traveler page boundary rules** — Should there be one Traveler page or separate Aether/Lumine pages? (Affects Pass 25)
4. **NK-07 evidence evaluation criteria** — What threshold converts `evidence_found_guarded` to `claim_mapping_candidate`? (Affects Pass 26)
5. **Harbinger rank confirmation standard** — What source type is sufficient to confirm Harbinger ranks? (Affects Pass 26)

---

## Do Not Recommend

- ❌ Character page upgrade before provenance and claim mapping complete
- ❌ Bulk claim canonization in a single pass
- ❌ External source ingestion without EXTERNAL_SOURCE_POLICY compliance
- ❌ Skipping human review for P0 candidates (Dottore, Sandrone)
- ❌ Resolving Aether/Lumine duplication without explicit boundary rules
