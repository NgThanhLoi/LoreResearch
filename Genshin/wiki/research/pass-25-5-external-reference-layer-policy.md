# Pass 25.5 — External Reference Intelligence Layer Policy

## Purpose

The External Reference Intelligence Layer is an agent-support infrastructure layer that enables:

- Alias resolution (multilingual name lookup)
- Multilingual terminology mapping (EN/JA/zhCN/zhTW/VI)
- Relationship graph traversal (entity connections, not proof)
- Worldview ontology lookup (concept hierarchy, not canon)
- Source-gap discovery (finding what's missing in local sources)
- Source candidate discovery (suggesting where to look for evidence)
- Future RAG / graph QA / agent query support

This layer is **not** for canon proof. It does not replace, modify, or upgrade the primary source/claim pipeline.

---

## Core Doctrine

```
Không source thì không canon.
Graph edge is not proof.
Dictionary entry is not lore evidence.
Community handbook is not canon.
Official-site support still requires provenance.
Search hit is only a candidate, not evidence.
Structured references guide; they do not prove.
Secondary synthesis suggests; it does not prove.
Quarantine sources only hint.
```

---

## Source Tier Model

### Tier 0 — Primary Local Source

- Location: `sources/voice_lines/**`, `sources/book_texts/**`, `sources/weapon_stories/**`, `sources/artifact_descriptions/**`, `sources/manga_transcripts/**`, `sources/provenance/**`
- Use: claim evidence / source_evidence_id / claim mapping / source_status upgrade after review
- This is the only tier that can directly prove canon claims.

### Tier 1 — Official-Site Support

- Examples: HoYoWiki, HoYoverse official news/announcements, official profile pages
- Use: official-site provenance support / source candidate generation
- Cannot directly prove canon without provenance capture and claim mapping.

### Tier 2 — Structured Reference / Agent Intelligence

- Examples: Genshin Lore Graph, genshin-langdata, Project Amber, GenshinTextSearch
- Use: alias / graph / ontology / source-gap discovery / agent traversal
- Cannot prove canon. Guides agent reasoning only.

### Tier 3 — Secondary Synthesis / Community Cross-Check

- Examples: GenshinLore / 日月全事, BWiki
- Use: overview / topic discovery / CN cross-check / source-gap discovery
- Not evidence. Cannot prove anything.

### Tier 4 — Research Hint / Quarantine

- Examples: World Tree, Bilibili videos, Moegirl, Baidu Baike, forum posts, AI/community analysis
- Use: keyword discovery only
- Not evidence. Not source ID. Not pipeline source.

---

## What Each Tier Can and Cannot Do

| Capability | Tier 0 | Tier 1 | Tier 2 | Tier 3 | Tier 4 |
|---|---|---|---|---|---|
| Claim evidence | ✓ (after mapping/review) | ✗ | ✗ | ✗ | ✗ |
| Source_evidence_id | ✓ (after mapping/review) | ✗ | ✗ | ✗ | ✗ |
| Canon upgrade | ✓ (after mapping/review) | ✗ | ✗ | ✗ | ✗ |
| Provenance support | ✓ | ✓ (after capture) | ✗ | ✗ | ✗ |
| Source candidate generation | ✓ | ✓ | ✓ | ✓ | ✗ |
| Alias resolution | ✓ | ✓ | ✓ | ✗ | ✗ |
| Graph traversal | — | — | ✓ | ✗ | ✗ |
| Source-gap discovery | ✓ | ✓ | ✓ | ✓ | ✗ |
| Keyword discovery | ✓ | ✓ | ✓ | ✓ | ✓ |

---

## Relationship to Pass 26+

This layer bootstraps the infrastructure needed for Pass 26 (Priority Claim Mapping Batch A):

- Pass 25.5: Policy, register, skeleton (this pass)
- Pass 25.6: Structured Reference Controlled Import Plan
- Pass 25.7: Alias / Terminology Index Build
- Pass 25.8: Graph Reference Controlled Import
- Pass 25.9: External Reference Validator / Guardrail Patch
- Pass 26: Priority Claim Mapping Batch A (uses the infrastructure)

Without this layer, Pass 26 agents would lack alias resolution, graph context, and source-gap discovery tools.

---

## Key Rules

1. **Graph edge is not proof.** A relationship edge in Genshin Lore Graph indicates a connection exists in the data model. It does not prove the relationship exists in canon without primary source backing.

2. **Dictionary entry is not lore evidence.** A name/term entry in genshin-langdata provides translation and alias data. It does not prove lore claims about the entity.

3. **Secondary synthesis is not canon.** GenshinLore / 日月全事 and similar handbooks are community interpretations. They require primary-source backtrace before any claim can be considered.

4. **Official-site support still requires provenance.** Even HoYoWiki content needs controlled provenance capture, mapping, and review before it can support source status.

5. **Search hit is candidate only.** A match from GenshinTextSearch or similar tooling indicates where to look. It is not evidence by itself.

6. **Structured references guide; they do not prove.** Project Amber, graph databases, and structured wikis help agents navigate. They cannot upgrade canon status.

7. **No external data in this pass.** Pass 25.5 creates policy and skeleton only. No raw data is imported.

---

## Verification Checklist

- [x] all Hermes-tested sources classified
- [x] source tier model documented
- [x] graph edge is not proof
- [x] dictionary entry is not lore evidence
- [x] secondary synthesis is not canon
- [x] official-site support requires provenance
- [x] search hit is candidate only
- [x] _data/external skeleton created
- [x] no full external data import performed
- [x] no source-index modified
- [x] no source IDs created
- [x] no character pages modified
- [x] no sources/** modified
- [x] no claim mapping performed
- [x] no canon/source-status upgrades
- [x] Pass 22 counts preserved (32 total / 15 evidence_packet_created / 9 still_blocked)
- [x] Pass 23+24 counts preserved (97 candidates / 73 inventory rows / 29 packages / 58 gaps)
- [x] no fanfic content added
