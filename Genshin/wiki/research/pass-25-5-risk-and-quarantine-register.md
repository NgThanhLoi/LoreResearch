# Pass 25.5 — Risk and Quarantine Register

## Purpose

This register documents identified risks in the External Reference Intelligence Layer and their mitigations. Each risk is tracked with severity, affected sources, and required validators.

---

## Risk Register

### RISK-001: Graph edge used as canon proof

| Field | Value |
|---|---|
| risk_id | RISK-001 |
| risk_description | Agent or human treats a graph edge (relationship link from Genshin Lore Graph) as proof that a relationship exists in canon |
| severity | HIGH |
| affected_sources | Genshin Lore Graph |
| mitigation | Tier policy forbids Tier 2 as evidence. All graph data tagged as `reference_context`. Validator rejects graph references in source_evidence_id fields. |
| validator_needed | check_external_ref_misuse (Pass 25.9) |
| status | mitigated by policy; validator pending |

---

### RISK-002: Dictionary entry used as lore evidence

| Field | Value |
|---|---|
| risk_id | RISK-002 |
| risk_description | Agent treats a genshin-langdata dictionary entry (name translation, pronunciation note) as proof of a lore claim |
| severity | HIGH |
| affected_sources | genshin-langdata |
| mitigation | Tier policy forbids Tier 2 as evidence. Dictionary entries tagged as `alias_reference`. Validator rejects dictionary references in evidence fields. |
| validator_needed | check_external_ref_misuse (Pass 25.9) |
| status | mitigated by policy; validator pending |

---

### RISK-003: GenshinLore synthesis treated as source

| Field | Value |
|---|---|
| risk_id | RISK-003 |
| risk_description | Agent or human treats GenshinLore / 日月全事 handbook content as a primary source rather than community synthesis requiring backtrace |
| severity | HIGH |
| affected_sources | GenshinLore / 日月全事 |
| mitigation | Tier 3 classification. Policy requires primary-source backtrace. No source_evidence_id allowed. |
| validator_needed | check_external_ref_misuse (Pass 25.9) |
| status | mitigated by policy; validator pending |

---

### RISK-004: BWiki community content treated as canon

| Field | Value |
|---|---|
| risk_id | RISK-004 |
| risk_description | Agent treats BWiki community-maintained content as official/canon information |
| severity | MEDIUM |
| affected_sources | BWiki |
| mitigation | Tier 3 classification. CN community cross-check use only. Cannot create evidence or upgrade status. |
| validator_needed | check_external_ref_misuse (Pass 25.9) |
| status | mitigated by policy; validator pending |

---

### RISK-005: HoYoWiki API reverse-engineering instability

| Field | Value |
|---|---|
| risk_id | RISK-005 |
| risk_description | HoYoWiki internal API (sg-wiki-api.hoyolab.com) changes without notice, breaking any integration built on reverse-engineered endpoints |
| severity | HIGH |
| affected_sources | HoYoWiki |
| mitigation | No API integration in current pass. Future integration requires stability assessment and fallback plan. Provenance capture must snapshot, not live-query. |
| validator_needed | API stability check (future tooling pass) |
| status | deferred — no integration attempted |

---

### RISK-006: GenshinTextSearch stale data

| Field | Value |
|---|---|
| risk_id | RISK-006 |
| risk_description | GenshinTextSearch data is ~2 years old (v5.0), missing 5+ game patches. Search results may miss recent content or return outdated text |
| severity | MEDIUM |
| affected_sources | GenshinTextSearch |
| mitigation | Freshness warning in register. Search results are candidates only. Must be verified against current game data before use. Low integration priority. |
| validator_needed | freshness metadata tag (Pass 25.9) |
| status | accepted risk — low priority source |

---

### RISK-007: Large external raw dump bloat

| Field | Value |
|---|---|
| risk_id | RISK-007 |
| risk_description | Importing full external datasets (graph JSONs, all dictionary files, full wiki dumps) bloats the repository and makes git operations slow |
| severity | MEDIUM |
| affected_sources | all Tier 1–3 sources |
| mitigation | No full import in Pass 25.5. Future imports require size assessment. Consider git-lfs or separate data repo for large files. Import only what's needed for active use. |
| validator_needed | repo size check (future tooling) |
| status | prevented by current pass gates |

---

### RISK-008: Alias collision causing wrong entity mapping

| Field | Value |
|---|---|
| risk_id | RISK-008 |
| risk_description | A shared alias (e.g., "Shogun" could map to Raiden Shogun or the title/position) causes agent to map claims to wrong entity |
| severity | MEDIUM |
| affected_sources | genshin-langdata, Genshin Lore Graph |
| mitigation | Alias index must include disambiguation context. Agent prompts must specify entity resolution rules. Ambiguous aliases flagged for human review. |
| validator_needed | check_alias_collision (Pass 25.7) |
| status | design-phase — to be addressed in Pass 25.7 |

---

### RISK-009: Translation mismatch CN/EN/JA/VI

| Field | Value |
|---|---|
| risk_id | RISK-009 |
| risk_description | Multilingual terminology differences cause agent to conflate distinct concepts or miss language-specific nuances (e.g., CN name implies different meaning than EN localization) |
| severity | MEDIUM |
| affected_sources | genshin-langdata, GenshinLore, BWiki |
| mitigation | Alias index preserves language tags. Agent queries must specify language context. Translation notes from genshin-langdata preserved. |
| validator_needed | multilingual consistency check (Pass 25.7) |
| status | design-phase — to be addressed in Pass 25.7 |

---

### RISK-010: Agent overuse of external references

| Field | Value |
|---|---|
| risk_id | RISK-010 |
| risk_description | Agent relies heavily on Tier 2–3 references for reasoning instead of checking Tier 0 primary sources, leading to unverified claims appearing confident |
| severity | HIGH |
| affected_sources | all Tier 2–4 sources |
| mitigation | Agent prompts must prioritize Tier 0. Tier 2+ references tagged as non-authoritative. Output audit checks for over-reliance on external references. Pass 25.9 guardrails. |
| validator_needed | check_agent_source_reliance (Pass 25.9) |
| status | mitigated by policy; guardrail pending |

---

### RISK-011: Blocked/unusable sites accidentally retried by future agents

| Field | Value |
|---|---|
| risk_id | RISK-011 |
| risk_description | Future agents attempt to access Moegirl, Baidu Baike, or other quarantined sources, wasting time and potentially triggering anti-bot measures |
| severity | LOW |
| affected_sources | Moegirl, Baidu Baike |
| mitigation | Quarantine register explicitly marks sources as DO NOT RETRY. Agent prompts include quarantine list. _data/external/quarantine/ README warns against automated access. |
| validator_needed | quarantine list check (Pass 25.9) |
| status | mitigated by documentation |

---

## Quarantine List (DO NOT ACCESS AUTOMATICALLY)

| Source | Reason | Last Tested |
|---|---|---|
| Moegirl / 萌娘百科 | 403 from cloud IP | Hermes test (this pass) |
| Baidu Baike | 403 from cloud IP | Hermes test (this pass) |
| World Tree / 世界树 | AI/community synthesis, unclear provenance | Hermes test (this pass) |
| Bilibili | Video/community, not evidence | Hermes test (this pass) |

---

## Summary

| Severity | Count | Mitigated | Pending Validator |
|---|---|---|---|
| HIGH | 5 | 5 (by policy) | 4 (Pass 25.9) |
| MEDIUM | 5 | 5 (by policy/design) | 4 (Pass 25.7/25.9) |
| LOW | 1 | 1 (by documentation) | 1 (Pass 25.9) |
| **Total** | **11** | **11** | **9** |
