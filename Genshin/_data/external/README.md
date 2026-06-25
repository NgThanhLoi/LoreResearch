# External Reference Data — Root

## Purpose

This directory holds external reference data imported under controlled conditions for agent intelligence support. It is **not** a canon source layer.

## Structure

```
_data/external/
├── structured_reference/   — Tier 2: graphs, databases, structured lookups
├── alias_reference/        — Tier 2: multilingual terminology/alias data
├── official_site_support/  — Tier 1: controlled provenance from official sites
├── secondary_synthesis/    — Tier 3: community handbooks, secondary wikis
├── tooling_reference/      — Tier 2: search tools, utility references
└── quarantine/             — Tier 4: blocked/unusable sources (metadata only)
```

## Core Rules

1. **Nothing here is canon by itself.** Only Tier 0 local sources (under `sources/`) can prove claims.
2. **Graph edge is not proof.** Relationship data here guides agents; it does not establish canon relationships.
3. **Dictionary entry is not lore evidence.** Alias/terminology data helps with name resolution, not lore claims.
4. **No raw data dumps without import plan.** Each import must go through a controlled import pass (Pass 25.6+).
5. **Quarantined sources are metadata-only.** No content from blocked sources should be stored here.

## Allowed Use

- Alias resolution for agent queries
- Graph traversal for relationship context
- Source-gap discovery
- Source candidate generation
- Ontology/worldview lookup
- Multilingual terminology mapping

## Disallowed Use

- Claim evidence
- source_evidence_id generation
- Canon/source status upgrades
- Relationship proof
- Direct lore evidence

## Policy Reference

See: `wiki/research/pass-25-5-external-reference-layer-policy.md`
See: `wiki/research/pass-25-5-source-tier-and-use-policy.md`
