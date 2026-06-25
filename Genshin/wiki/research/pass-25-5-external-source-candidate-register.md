# Pass 25.5 — External Source Candidate Register

## Purpose

This register documents all external sources tested during the Hermes workflow analysis phase. Each source is classified by tier, access status, allowed/disallowed use, and integration priority.

**Doctrine reminder:** No source in this register is canon evidence by itself. Classification here does not create source IDs, does not modify `wiki/sources/source-index.md`, and does not upgrade any claim status.

---

## Register

### 1. Genshin Lore Graph

| Field | Value |
|---|---|
| source_name | Genshin Lore Graph |
| url_or_location | github.com/Houraiji/genshin-lore-graph |
| access_status | accessible (GitHub raw, no anti-bot) |
| reported_format | JSON / JSONL |
| reported_freshness | ~1 month ago (active) |
| recommended_tier | Tier 2 — Structured Reference |
| allowed_use | graph traversal, alias resolution, ontology lookup, relationship context for agent reasoning, source-gap discovery |
| disallowed_use | canon proof, source_evidence_id, relationship proof, claim mapping evidence |
| recommended_storage_location | `_data/external/structured_reference/genshin-lore-graph/` |
| integration_priority | HIGH |
| requires_followup_pass | Pass 25.8 (Graph Reference Controlled Import) |
| risk_level | low |
| notes | 613 nodes, 585 edges, 135 ontology concepts, 818 lookup aliases. Key files: character_graph.json, lookup_by_name.json, relationships.jsonl, ontology_model.json |

---

### 2. genshin-langdata

| Field | Value |
|---|---|
| source_name | genshin-langdata |
| url_or_location | github.com/xicri/genshin-langdata |
| access_status | accessible (GitHub raw) |
| reported_format | JSON dictionary files |
| reported_freshness | ~2 days ago (actively maintained) |
| recommended_tier | Tier 2 — Structured Reference |
| allowed_use | alias resolution, multilingual terminology mapping (EN/JA/zhCN/zhTW), pronunciation lookup, agent name disambiguation |
| disallowed_use | lore evidence, canon proof, source_evidence_id, claim mapping |
| recommended_storage_location | `_data/external/alias_reference/genshin-langdata/` |
| integration_priority | HIGH |
| requires_followup_pass | Pass 25.7 (Alias / Terminology Index Build) |
| risk_level | low |
| notes | 36 dictionary files. Covers characters, artifacts, weapons, items, quests, dialogue, locations, organizations, story terms. Includes Nod-Krai names. Fields: EN, JA, zhCN, zhTW, pronunciationJa, notes, tags, examples with source ref. |

---

### 3. GenshinLore / 日月全事

| Field | Value |
|---|---|
| source_name | GenshinLore / 日月全事 |
| url_or_location | github.com/Dennis114514/GenshinLore (website: genshinlore.cn — 403 from cloud) |
| access_status | GitHub raw accessible; website blocked from cloud IP |
| reported_format | Markdown handbook (md/) |
| reported_freshness | active community (111 stars, 23 forks) |
| recommended_tier | Tier 3 — Secondary Synthesis |
| allowed_use | topic discovery, overview reading, CN cross-check, source-gap discovery |
| disallowed_use | canon proof, source evidence, source_evidence_id, relationship proof, claim mapping |
| recommended_storage_location | `_data/external/secondary_synthesis/genshinlore/` |
| integration_priority | MEDIUM |
| requires_followup_pass | Pass 25.6 (Controlled Import Plan) |
| risk_level | medium |
| notes | Community synthesis handbook. Regions: Mondstadt, Liyue, Inazuma, Sumeru, Fontaine, Natlan, Snezhnaya, Khaenriah, Teyvathis. Requires primary-source backtrace for any claim used. |

---

### 4. BWiki / 原神WIKI_BWIKI

| Field | Value |
|---|---|
| source_name | BWiki / 原神WIKI_BWIKI |
| url_or_location | wiki.biligame.com |
| access_status | 200 (redirects to homepage); no public API |
| reported_format | Rich HTML |
| reported_freshness | actively maintained |
| recommended_tier | Tier 3 — Secondary Synthesis |
| allowed_use | CN community cross-check, topic discovery, source-gap discovery |
| disallowed_use | canon proof, source evidence, source_evidence_id, claim mapping |
| recommended_storage_location | `_data/external/secondary_synthesis/bwiki/` |
| integration_priority | LOW |
| requires_followup_pass | Pass 25.6 (Controlled Import Plan) |
| risk_level | medium |
| notes | No public API. Requires HTML parsing. Anti-bot may trigger on heavy crawling. Community-maintained content, not official. |

---

### 5. HoYoWiki

| Field | Value |
|---|---|
| source_name | HoYoWiki |
| url_or_location | wiki.hoyolab.com |
| access_status | 200 (accessible) |
| reported_format | Web / internal API (sg-wiki-api.hoyolab.com, bbs-api-os.hoyolab.com) |
| reported_freshness | actively maintained (official) |
| recommended_tier | Tier 1 — Official-Site Support |
| allowed_use | official-site provenance support, source candidate generation |
| disallowed_use | direct canon proof without provenance capture and claim mapping, raw game text substitution |
| recommended_storage_location | `_data/external/official_site_support/hoyowiki/` |
| integration_priority | HIGH |
| requires_followup_pass | Pass 25.6 (Controlled Import Plan) |
| risk_level | high |
| notes | Official HoYoverse wiki. API is internal/not public — reverse engineering carries instability risk. Still requires controlled provenance capture, mapping, and human review before any source-status support. |

---

### 6. GenshinTextSearch

| Field | Value |
|---|---|
| source_name | GenshinTextSearch |
| url_or_location | github.com/hugeBlack/GenshinTextSearch |
| access_status | accessible (GitHub clone) |
| reported_format | Server + Web UI application |
| reported_freshness | stale (~v5.0, ~2 years old, missing 5+ patches) |
| recommended_tier | Tier 2 — Structured Reference |
| allowed_use | multilingual text/voice search tooling, source candidate discovery |
| disallowed_use | evidence by itself, canon proof, source_evidence_id |
| recommended_storage_location | `_data/external/tooling_reference/genshin-text-search/` |
| integration_priority | LOW |
| requires_followup_pass | Pass 25.6 (assess freshness viability) |
| risk_level | medium |
| notes | Search hit is candidate only. Stale data (missing patches since v5.0). Demo may be offline. Local clone possible but data gaps are significant. |

---

### 7. @mihoyo-kit/genshin-api

| Field | Value |
|---|---|
| source_name | @mihoyo-kit/genshin-api |
| url_or_location | npm registry |
| access_status | accessible (npm install) |
| reported_format | npm package / JS API |
| reported_freshness | unknown |
| recommended_tier | Tier 2 — Structured Reference (low priority) |
| allowed_use | game data/stats reference if needed |
| disallowed_use | lore text, canon proof, source_evidence_id |
| recommended_storage_location | `_data/external/tooling_reference/mihoyo-kit/` |
| integration_priority | SKIP (unless future account/game-record module exists) |
| requires_followup_pass | none currently |
| risk_level | low |
| notes | CN server focus. Game data/stats, not lore text. Not relevant to current LoreResearch claim/source pipeline. |

---

### 8. Project Amber

| Field | Value |
|---|---|
| source_name | Project Amber |
| url_or_location | gi.yatta.moe |
| access_status | accessible (web) |
| reported_format | Structured wiki/database |
| reported_freshness | actively maintained |
| recommended_tier | Tier 2 — Structured Reference |
| allowed_use | items, books, artifacts, weapons, metadata, archive lookup, cross-check, gap discovery |
| disallowed_use | canon proof by itself, source_evidence_id |
| recommended_storage_location | `_data/external/structured_reference/project-amber/` |
| integration_priority | MEDIUM |
| requires_followup_pass | Pass 25.6 (Controlled Import Plan) |
| risk_level | low |
| notes | Structured database reference. Useful for cross-checking item/book/artifact metadata. Cannot prove canon claims alone. |

---

### 9. Moegirl / 萌娘百科

| Field | Value |
|---|---|
| source_name | Moegirl / 萌娘百科 |
| url_or_location | mzh.moegirl.org.cn |
| access_status | 403 Forbidden (from cloud IP) |
| reported_format | Wiki HTML |
| reported_freshness | unknown (blocked) |
| recommended_tier | Tier 4 — Quarantine |
| allowed_use | research hint only (if manually accessed) |
| disallowed_use | pipeline source, canon proof, source_evidence_id, automated access |
| recommended_storage_location | `_data/external/quarantine/moegirl/` |
| integration_priority | SKIP |
| requires_followup_pass | none |
| risk_level | quarantined |
| notes | Blocked from cloud IP. Community wiki. Even if accessible, would be Tier 3–4 (secondary/community content). Do not retry from automation. |

---

### 10. Baidu Baike

| Field | Value |
|---|---|
| source_name | Baidu Baike |
| url_or_location | baike.baidu.com |
| access_status | 403 Forbidden (from cloud IP) |
| reported_format | Encyclopedia HTML |
| reported_freshness | unknown (blocked) |
| recommended_tier | Tier 4 — Quarantine |
| allowed_use | research hint only (if manually accessed) |
| disallowed_use | pipeline source, canon proof, source_evidence_id, automated access |
| recommended_storage_location | `_data/external/quarantine/baidu-baike/` |
| integration_priority | SKIP |
| requires_followup_pass | none |
| risk_level | quarantined |
| notes | Blocked from cloud IP. General encyclopedia, not game-specific. Do not retry from automation. |

---

### 11. World Tree / 世界树

| Field | Value |
|---|---|
| source_name | World Tree / 世界树 |
| url_or_location | community / AI-assisted project |
| access_status | varies |
| reported_format | AI/community synthesis |
| reported_freshness | unknown |
| recommended_tier | Tier 4 — Quarantine |
| allowed_use | research hint only, keyword discovery |
| disallowed_use | evidence, source_evidence_id, canon proof, claim mapping |
| recommended_storage_location | `_data/external/quarantine/world-tree/` |
| integration_priority | SKIP |
| requires_followup_pass | none |
| risk_level | quarantined |
| notes | AI/community synthesis with unclear provenance. High risk of circular reasoning if used as evidence. Research hint only. |

---

### 12. Bilibili

| Field | Value |
|---|---|
| source_name | Bilibili |
| url_or_location | bilibili.com |
| access_status | accessible (web) |
| reported_format | Video / community platform |
| reported_freshness | actively maintained |
| recommended_tier | Tier 4 — Research Hint |
| allowed_use | keyword discovery, lore community analysis awareness |
| disallowed_use | evidence, source_evidence_id, canon proof, source ID |
| recommended_storage_location | `_data/external/quarantine/bilibili/` |
| integration_priority | SKIP |
| requires_followup_pass | none |
| risk_level | quarantined |
| notes | Video/community content. Theory/community/video content cannot be evidence. Useful only for discovering keywords or topics to investigate via primary sources. |

---

## Summary Table

| # | Source | Tier | Priority | Risk | Access |
|---|---|---|---|---|---|
| 1 | Genshin Lore Graph | 2 | HIGH | low | ✓ |
| 2 | genshin-langdata | 2 | HIGH | low | ✓ |
| 3 | GenshinLore / 日月全事 | 3 | MEDIUM | medium | partial |
| 4 | BWiki | 3 | LOW | medium | partial |
| 5 | HoYoWiki | 1 | HIGH | high | ✓ |
| 6 | GenshinTextSearch | 2 | LOW | medium | ✓ |
| 7 | @mihoyo-kit/genshin-api | 2 | SKIP | low | ✓ |
| 8 | Project Amber | 2 | MEDIUM | low | ✓ |
| 9 | Moegirl | 4 | SKIP | quarantined | ✗ |
| 10 | Baidu Baike | 4 | SKIP | quarantined | ✗ |
| 11 | World Tree | 4 | SKIP | quarantined | varies |
| 12 | Bilibili | 4 | SKIP | quarantined | ✓ |
