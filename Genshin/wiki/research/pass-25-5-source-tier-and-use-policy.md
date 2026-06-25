# Pass 25.5 — Source Tier and Use Policy

## Purpose

This document defines a strict matrix governing what each source tier can and cannot be used for within the LoreResearch pipeline. It prevents reference-as-canon misuse by establishing clear boundaries.

---

## Tier Definitions

| Tier | Name | Examples |
|---|---|---|
| 0 | Primary Local Source | sources/voice_lines/**, sources/book_texts/**, sources/weapon_stories/**, sources/artifact_descriptions/**, sources/manga_transcripts/**, sources/provenance/** |
| 1 | Official-Site Support | HoYoWiki, HoYoverse official news/announcements, official profile pages |
| 2 | Structured Reference / Agent Intelligence | Genshin Lore Graph, genshin-langdata, Project Amber, GenshinTextSearch |
| 3 | Secondary Synthesis / Community Cross-Check | GenshinLore / 日月全事, BWiki |
| 4 | Research Hint / Quarantine | World Tree, Bilibili, Moegirl, Baidu Baike, forum posts, AI/community analysis |

---

## Use Policy Matrix

| Capability | Tier 0 | Tier 1 | Tier 2 | Tier 3 | Tier 4 |
|---|---|---|---|---|---|
| allowed_for_alias | ✓ | ✓ | ✓ | ✗ | ✗ |
| allowed_for_graph_context | — | — | ✓ | ✗ | ✗ |
| allowed_for_source_discovery | ✓ | ✓ | ✓ | ✓ | keyword only |
| allowed_for_source_evidence_id | ✓ (after mapping + review) | ✗ | ✗ | ✗ | ✗ |
| allowed_for_canon_upgrade | ✓ (after mapping + review) | ✗ | ✗ | ✗ | ✗ |
| requires_human_review | ✓ (for upgrades) | ✓ (always) | ✗ (agent use) | ✗ (agent use) | ✗ (hint only) |

---

## Rules

### Tier 0 — Primary Local Source

- **Can** be used as claim evidence after claim mapping and human review.
- **Can** generate source_evidence_id entries.
- **Can** upgrade canon/source status after full pipeline (mapping → review → acceptance).
- **Must** go through claim mapping before any status change.

### Tier 1 — Official-Site Support

- **Can** provide provenance support for claims already backed by Tier 0.
- **Can** generate source candidates (pointers to where evidence might exist).
- **Cannot** directly prove canon claims.
- **Cannot** create source_evidence_id entries.
- **Cannot** upgrade canon status without being paired with Tier 0 evidence.
- **Requires** controlled provenance capture before any use.
- **Requires** human review for any pipeline integration.

### Tier 2 — Structured Reference / Agent Intelligence

- **Can** provide alias resolution for agents.
- **Can** provide graph context for relationship traversal.
- **Can** identify source gaps (what's missing locally).
- **Can** suggest source candidates.
- **Cannot** prove any claim.
- **Cannot** create source_evidence_id entries.
- **Cannot** upgrade any status.
- **Does not** require human review for agent-internal use (lookup/traversal).

### Tier 3 — Secondary Synthesis / Community Cross-Check

- **Can** provide topic overview for agent orientation.
- **Can** suggest where to look for primary sources.
- **Can** cross-check CN community interpretations.
- **Cannot** prove any claim.
- **Cannot** be used as evidence.
- **Cannot** create source_evidence_id entries.
- **Cannot** upgrade any status.
- **Requires** primary-source backtrace before any downstream use.

### Tier 4 — Research Hint / Quarantine

- **Can** provide keyword discovery only.
- **Cannot** be used for anything else in the pipeline.
- **Cannot** prove, suggest, or support claims.
- **Cannot** be accessed by automated scripts (quarantined sources).
- **Must not** be retried by future agents if blocked.

---

## Escalation Rules

1. A claim supported ONLY by Tier 1–4 references remains UNVERIFIED.
2. A claim can only reach CONFIRMED status with Tier 0 evidence + claim mapping + human review.
3. STRONGLY IMPLIED requires at least 2 independent Tier 0 sources or 1 Tier 0 + explicit game mechanic.
4. STRONGLY IMPLIED cannot be based on character_intelligence alone.
5. If an agent attempts to use Tier 2+ as evidence, the validator must reject.

---

## Integration with Validators

Pass 25.9 will create guardrail validators that enforce:

- No Tier 2+ reference appears in source_evidence_id fields
- No Tier 2+ reference is cited as canon proof in claim maps
- Graph edges are tagged as `reference_context` not `evidence`
- Dictionary entries are tagged as `alias_reference` not `lore_evidence`
