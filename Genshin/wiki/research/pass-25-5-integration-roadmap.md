# Pass 25.5 — Integration Roadmap

## Purpose

This document defines the planned sequence of passes from Pass 25.5 through Pass 26, establishing how the External Reference Intelligence Layer will be built incrementally before claim mapping begins.

---

## Full Roadmap

### Pass 25.5 — External Reference Intelligence Layer Bootstrap (THIS PASS)

- **Status:** Complete
- **Deliverables:**
  - External Reference Layer policy
  - Source tier and use policy
  - External source candidate register (12 sources classified)
  - Risk and quarantine register (11 risks documented)
  - `_data/external/` directory skeleton
  - Integration roadmap (this document)
- **Gate:** No external data imported. No source/claim/character changes.

---

### Pass 25.6 — Structured Reference Controlled Import Plan

- **Status:** Planned
- **Purpose:** Design the controlled import process for Tier 1–2 sources
- **Expected deliverables:**
  - Import criteria for each source (what to import, what to skip)
  - Size/scope assessment per source
  - Storage format decisions (raw JSON vs processed index)
  - git-lfs decision (if files exceed threshold)
  - Provenance metadata format for imported data
  - Per-source import scripts spec (read-only, no mutation)
  - HoYoWiki controlled capture plan (API stability assessment)
- **Gate:** Plan only. No actual import.
- **Dependencies:** Pass 25.5 (policy must exist first)

---

### Pass 25.7 — Alias / Terminology Index Build

- **Status:** Planned
- **Purpose:** Build the multilingual alias/terminology index from genshin-langdata
- **Expected deliverables:**
  - Processed alias index (EN/JA/zhCN/zhTW mappings)
  - Disambiguation rules for shared aliases
  - Character name → entity ID mapping
  - Location/item/artifact name mappings
  - Alias collision report
  - Integration with agent query interface
- **Gate:** Only genshin-langdata imported. Tagged as `alias_reference`. No canon claims.
- **Dependencies:** Pass 25.5 (policy), optionally Pass 25.6 (import plan)

---

### Pass 25.8 — Graph Reference Controlled Import

- **Status:** Planned
- **Purpose:** Import and index Genshin Lore Graph data for agent traversal
- **Expected deliverables:**
  - Processed graph index (nodes, edges, ontology)
  - Relationship context tagged as `reference_context`
  - Ontology concept hierarchy for worldview queries
  - Lookup-by-name index for entity resolution
  - Graph-edge-is-not-proof guardrail metadata
- **Gate:** Only graph structure imported. No canon claims. All edges tagged non-authoritative.
- **Dependencies:** Pass 25.5 (policy), Pass 25.6 (import plan)

---

### Pass 25.9 — External Reference Validator / Guardrail Patch

- **Status:** Planned
- **Purpose:** Create automated validators that enforce the tier/use policy
- **Expected deliverables:**
  - `check_external_ref_misuse` validator (rejects Tier 2+ in evidence fields)
  - `check_alias_collision` validator (flags ambiguous aliases)
  - `check_quarantine_access` validator (prevents quarantined source retry)
  - Freshness metadata tags for stale sources
  - Agent prompt guardrail templates
  - Integration test suite for validators
- **Gate:** Validators are read-only. No source/claim changes.
- **Dependencies:** Pass 25.7, Pass 25.8 (needs imported data to validate against)

---

### Pass 26 — Priority Claim Mapping Batch A

- **Status:** Planned
- **Purpose:** Begin systematic claim mapping using the full infrastructure
- **Expected deliverables:**
  - Claim maps for priority characters/topics
  - source_evidence_id assignments (Tier 0 only)
  - Status upgrades where evidence is sufficient
  - Gap report for claims that need more sources
- **Gate:** Full pipeline: Tier 0 evidence → claim map → human review → acceptance.
- **Dependencies:** Pass 25.5, 25.7, 25.8, 25.9 (full infrastructure ready)

---

## Fast Path

For projects that need alias/graph support quickly without detailed import planning:

```
Pass 25.5 — External Reference Intelligence Layer Bootstrap ✓
    ↓
Pass 25.7 — Alias / Terminology Index Build
    ↓
Pass 25.8 — Graph Reference Controlled Import
    ↓
Pass 25.9 — External Reference Validator / Guardrail Patch
    ↓
Pass 26 — Priority Claim Mapping Batch A
```

This path skips Pass 25.6 (detailed import planning) and proceeds directly to building the alias index. Acceptable only if:

- Human approves skipping detailed import planning
- genshin-langdata and Genshin Lore Graph are imported as-is with minimal processing
- Size/scope is acceptable without formal assessment

**Pass 25.5 and Pass 25.9 cannot be skipped on any path.** Policy must exist before import. Validators must exist before claim mapping.

---

## Full Path

```
Pass 25.5 — External Reference Intelligence Layer Bootstrap ✓
    ↓
Pass 25.6 — Structured Reference Controlled Import Plan
    ↓
Pass 25.7 — Alias / Terminology Index Build
    ↓
Pass 25.8 — Graph Reference Controlled Import
    ↓
Pass 25.9 — External Reference Validator / Guardrail Patch
    ↓
Pass 26 — Priority Claim Mapping Batch A
```

Recommended for production-quality infrastructure.

---

## Decision Points

| Decision | Options | Decides at |
|---|---|---|
| Full vs fast path | Human choice | After Pass 25.5 |
| HoYoWiki integration | Include or defer | Pass 25.6 |
| git-lfs for large files | Yes or separate repo | Pass 25.6 |
| Alias disambiguation strategy | Manual rules vs automated | Pass 25.7 |
| Graph subset or full import | Subset or full | Pass 25.8 |
