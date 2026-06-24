# Pass 23 — Deferred Context Map

## Purpose

Maps the specific Pass 22 deferred_to_pass_23 items and classifies them as non-quest voice-line context. These items were identified in Pass 22 as requiring voice-line scope (not quest dialogue).

---

## Deferred Items from Pass 22

### Item 1: Aether/Lumine — Inter-dimensional Travel

| Field | Value |
|---|---|
| candidate_id | DEF-AETHER-TRAVEL-01 |
| character_or_topic | Aether/Lumine — inter-dimensional travel |
| local_file_path | sources/voice_lines/characters/Aether.md |
| source_type | non_quest_context |
| evidence_scope | Traveler references hearing something "in another world" — consistent with inter-dimensional origin |
| original_pass_22_status | deferred_to_pass_23 |
| recommended_future_action | requires_claim_mapping_later |
| risk_level | HIGH |
| notes | Voice-line content, NOT quest dialogue. Cannot be counted as quest-dialogue evidence. Must go through formal claim mapping (Pass 26+) with human review before any canon upgrade. Inter-dimensional origin is a cosmology-tier claim. |

### Item 2: Aether/Lumine — Rapid Learning

| Field | Value |
|---|---|
| candidate_id | DEF-AETHER-LEARN-01 |
| character_or_topic | Aether/Lumine — rapid learning ability |
| local_file_path | sources/voice_lines/characters/Aether.md |
| source_type | non_quest_context |
| evidence_scope | Paimon notes Traveler learned Teyvat's language in an unusually short time |
| original_pass_22_status | deferred_to_pass_23 |
| recommended_future_action | requires_claim_mapping_later |
| risk_level | MEDIUM |
| notes | Voice-line content from Paimon observation. Supports "supernatural learning" claim but is single-instance evidence from a secondary observer. Does NOT prove mechanism. |

### Item 3: Paimon — Identity/Origin Clue

| Field | Value |
|---|---|
| candidate_id | DEF-PAIMON-ORIGIN-01 |
| character_or_topic | Paimon — identity/origin clue from Aether voice-line context |
| local_file_path | sources/voice_lines/characters/Aether.md |
| source_type | non_quest_context |
| evidence_scope | Single celestial-cloth detail from Aether voice-line context referencing Paimon |
| original_pass_22_status | deferred_to_pass_23 |
| recommended_future_action | requires_human_review |
| risk_level | HIGH |
| notes | Paimon identity/origin is a permanently guarded topic (Pass 22 governance). Single contextual detail from voice-line is NOT sufficient for origin claims. Must NOT be used to support Celestia/Seelie/Unknown God theories. Requires human evaluation of whether this detail merits formal tracking or should remain anecdotal. |

---

## Classification Rules Applied

1. **Non-quest context**: These items come from character voice-line files, not archon/world quest dialogue. They represent character self-commentary or companion observations, not narrative-confirmed events.

2. **Boundary enforcement**: Voice-line evidence operates at a different reliability tier than quest dialogue:
   - Quest dialogue = narrator-presented events (higher reliability)
   - Voice-line = character self-report or companion observation (lower reliability, subject to character bias)

3. **No canon upgrade**: All three items remain at candidate/deferred status. None have been upgraded.

4. **Lumine mirror**: Item 1 and Item 2 likely have Lumine-side equivalents in `sources/voice_lines/characters/Lumine.md`. Player-selection ambiguity applies to both. Neither version should be privileged.

---

## Relationship to Pass 25 (Dedup Governance)

The Aether/Lumine items interact with the Traveler page-boundary problem identified for Pass 25:
- Inter-dimensional travel applies to BOTH Aether and Lumine regardless of player selection
- Rapid learning applies to the active Traveler (whichever is selected)
- These must not be mapped to individual character pages until Pass 25 dedup governance is resolved

---

## Summary Counts

| Category | Count |
|---|---|
| Total deferred context rows | 3 |
| HIGH risk | 2 |
| MEDIUM risk | 1 |
| Requires human review | 1 |
| Requires claim mapping later | 2 |
| Source file present | 1 (Aether.md — all 3 items reference same file) |
