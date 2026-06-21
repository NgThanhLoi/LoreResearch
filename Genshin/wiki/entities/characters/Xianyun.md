---
wiki_type: entity
entity_type: character
status: draft
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "liyue", "anemo"]
related_pages: ["./Ganyu.md", "./Shenhe.md", "./Zhongli.md"]
---

# Xianyun

## Audit Status

- audit_level: Level 2 Character Foundation
- character_level: Level 2
- source_status: mixed
- primary_sources_found: `sources/voice_lines/characters/Xianyun.md`
- supporting_sources: Pass 11/12 roadmap files
- indirect_sources: `entities/character_intelligence/Xianyun.md`
- missing_sources: character-story provenance, quest dialogue claim mapping, Archon Quest appearance mapping
- blocked_warnings: Guard Cloud Retainer historical claims unless direct local source exists. Do not import broad adeptus lore from memory. Treat family/mentorship dynamics as source-sensitive.
- unresolved_issues: Full adeptus history, Archon War details, and Guizhong relationship depth need later provenance work.

## Summary

Xianyun is a Liyue adeptus (Cloud Retainer) who has taken human form to live among mortals at Liyue Harbor. Her voice lines establish her as a proud, inventive, and socially curious immortal who self-refers as "bon tien" (this adeptus) and holds deep affection for her disciples Ganyu and Shenhe. She is passionate about mechanism arts (co quan thuat), values bonds of connection despite her aloof exterior, and is adjusting to mortal economic life. This page is usable as a Level 2 foundation for voice, personality, and OOC guardrails, but deeper backstory claims remain source-light.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Local voice-line file confirms adeptus identity, self-reference as "bon tien," and the name "Xianyun" as her mortal-facing alias.

### personality

- source_status: mixed
- source_ids:
- evidence_ids:
- notes: Voice lines support proud/inventive/caring personality; intelligence file provides indirect psychological guidance.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines include relationship topics for Ganyu, Shenhe, Zhongli, Xiao, Hu Tao, Xiangling, Ningguang, Keqing, Yun Jin, Yaoyao, and Gaming. Detailed relationship history is not claim-mapped.

### powers

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines reference weather manipulation ("ho mua goi gio"), flight, mechanism arts, and adeptal arts. Combat specifics not claim-mapped.

### backstory

- source_status: source_light
- source_ids:
- evidence_ids:
- notes: Voice lines hint at Archon War era, Guizhong friendship, and Mt. Aocang residence. Full historical details require later provenance.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Adeptus identity and connection to Rex Lapis supported by voice lines on Vision and relationships.

### major lore claims

- source_status: blocked_by_missing_source
- source_ids:
- evidence_ids:
- notes: Archon War history, crane true form details, and Guizhong relationship depth blocked until local source mapping.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Xianyun (mortal alias of Cloud Retainer) | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found |
| Region | Liyue | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found |
| Faction | Adepti | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found |
| Role | Adeptus / architect-mechanist | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found |
| Vision / Power | Anemo (with adeptal arts including weather manipulation and flight) | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found |
| Species / Origin | Adeptus (crane form) | CANON | `sources/voice_lines/characters/Xianyun.md`; `entities/character_intelligence/Xianyun.md` | mixed |

## Canon Personality

* [CHAR-XIANYUN-TRAIT-001] Xianyun presents herself with adeptal pride and authority, self-referring as "bon tien" (this adeptus) and maintaining a superior, elder-mentor tone.
  * label: CANON
  * source: `sources/voice_lines/characters/Xianyun.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Consistent across all voice lines; the self-referential "bon tien" appears in nearly every dialogue.
  - confidence: medium

* [CHAR-XIANYUN-TRAIT-002] Xianyun is obsessively inventive, frequently discussing mechanism arts and creating devices for every situation.
  * label: CANON
  * source: `sources/voice_lines/characters/Xianyun.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Voice lines reference cooking mechanisms, snow-sliding mechanisms, navigation compass, bird machines, and birthday gift mechanisms.
  - confidence: medium

* [CHAR-XIANYUN-TRAIT-003] Xianyun is deeply caring toward her disciples and juniors despite outward haughtiness, expressing concern and protectiveness indirectly.
  * label: CANON
  * source: `sources/voice_lines/characters/Xianyun.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported by voice lines about Ganyu (worrying about overwork, sending tea), Shenhe (pride in growth), Gaming (taking elder role), and "about us" bond topics.
  - confidence: medium

* [CHAR-XIANYUN-TRAIT-004] Xianyun values interpersonal bonds ("rang buoc") and treasures long friendships, despite claiming independence.
  * label: CANON
  * source: `sources/voice_lines/characters/Xianyun.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: The "Ve chung ta - Rang Buoc" voice line explicitly discusses bonds, old friends who argue but never feel lost.
  - confidence: medium

## Strongly Implied Traits

* [CHAR-XIANYUN-IMPLIED-001] Xianyun privately fears loneliness and the emotional distance of her disciples, despite never openly admitting vulnerability.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Xianyun.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Voice line about disciples not writing letters hints at this ("trong long bon tien khong he cam thay co don dau!" — denial pattern). Indirect guidance only.
  - confidence: low

* [CHAR-XIANYUN-IMPLIED-002] Xianyun carries unspoken grief over Guizhong's absence, referenced only in passing when discussing shared inventions.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Xianyun.md`; `entities/character_intelligence/Xianyun.md`
  - source_status: mixed
  - source_ids:
  - evidence_ids:
  - notes: The "Co gi muon chia se khong" voice line ends with "Neu Guizhong van con o day thi co le co ay se nghi ra duoc khong it y tuong ky quai day." Grief implied, not narrated.
  - confidence: low

## Theory / Interpretation

* [CHAR-XIANYUN-THEORY-001] Xianyun's move to Liyue Harbor may represent a coping mechanism against centuries of isolation rather than pure curiosity.
  * label: THEORY / INTERPRETATION
  * source: `entities/character_intelligence/Xianyun.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Psychological interpretation derived from indirect guidance, not narrator-safe canon.
  - confidence: low
  - why_interpretation: Voice lines do not explicitly state motivation for moving; only indirect guidance speculates on loneliness as a driver.
  - banned_overuse: Do not portray Xianyun as secretly depressed or desperately lonely by default. Her pride and curiosity remain dominant.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Xianyun as toxic controlling mother figure | High | Portray protectiveness with warmth and pride in disciples' growth. | Frame her concern as manipulative, abusive, or emotionally coercive. | Indirect guidance | Voice lines show care, not control. |
| Archon War combat feats as fully mapped | High | Mention adeptus history as context only. | Treat specific battle details as claim-mapped in this page. | Source gap | Needs later provenance. |
| Xianyun is bad at cooking | Medium | She prefers mechanisms over manual cooking. | Claim she cannot cook or produces inedible food; voice lines show she cooks well when she chooses to. | Voice lines | Gift reactions confirm food quality awareness. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Making Xianyun a passive, soft-spoken traditional woman | High | It erases her proud, haughty adeptal authority and inventive obsession. | Keep her commanding, witty, and self-assured with the "bon tien" speech pattern. | local voice lines |
| Turning protectiveness into toxic parenting | High | It flattens a loving mentor into an abusive figure. | Show care that respects disciples' independence and celebrates their growth. | voice lines + indirect guidance |
| Overstating Archon War combat power | Medium | No local source maps specific feats. | Reference adeptal status generally without inventing battle details. | source gap |
| Making her stingy or financially savvy | Medium | Voice lines show she spends freely and worries about running out. | Portray her as generous but financially naive in mortal economy. | local voice lines |

## Voice Guide

- Formality: High; speaks with adeptal authority and elder-mentor tone. Uses archaic/elevated register ("bon tien," "nguoi," formal sentence structure).
- Sentence rhythm: Measured, declarative statements followed by knowing pauses or rhetorical questions. Alternates between lecturing and teasing.
- Common tone: Proud, amused, subtly warm beneath haughtiness.
- Humor style: Dry wit, self-aggrandizing humor, playful condescension toward mortals, tsundere-adjacent denial of feelings.
- Emotional restraint: Medium-high; rarely shows vulnerability openly. Uses coughing ("khu"), throat-clearing, or topic changes to deflect embarrassment.
- Vocabulary habits: "Bon tien" (this adeptus), "co quan thuat" (mechanism arts), "nha dau" (that child, for younger characters), references to inventions, tea, Mt. Aocang.
- What they avoid saying: Direct admissions of loneliness, open praise without qualification, simple apologies.
- Should avoid: Writing her as meek, passive, or overly emotional. Avoid removing her pride or making her speech casual/modern.
- Source: `sources/voice_lines/characters/Xianyun.md`; `entities/character_intelligence/Xianyun.md` as indirect guidance.

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Ganyu | Master-disciple (primary disciple) | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Worries about overwork, sends medicinal tea, proud but anxious. |
| Shenhe | Master-disciple (second disciple) | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Proud of Shenhe's social growth, tells her stories with affection. |
| Zhongli | Fellow adeptus / respected elder | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Respects Rex Lapis; finds his decoration advice overwhelming. |
| Xiao | Fellow adeptus / distant acquaintance | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Notes his silence, offers to send food via Traveler. |
| Hu Tao | Curiosity subject | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Finds her strange but interesting; notes Zhongli's respect for her. |
| Xiangling | Culinary rival | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Wants to compete via mechanisms but admits Xiangling's food is excellent. |
| Ningguang | Subject of observation | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Studies her governance methods secretly; respects her competence. |
| Keqing | Respectful acquaintance | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Appreciates Keqing's holiday visits and diligence; reassured about Ganyu's colleague. |
| Yun Jin | Cultural subject | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Aware of operas based on adepti legends; interested in Shenhe-related play. |
| Yaoyao | Junior acquaintance | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Yaoyao borrowed her glasses; views her with elder amusement. |
| Gaming | Favored junior | CANON | `sources/voice_lines/characters/Xianyun.md` | primary_source_found | Appreciates his honesty and warmth; takes elder-caretaker role toward him. |

## Power / Lore Constraints

- Known abilities: Anemo Vision, flight, weather manipulation (rain/wind calling referenced in voice lines), adeptal arts, master-level mechanism crafting, crane transformation (referenced indirectly).
- Limits: No source in this pass establishes specific combat feats, power ceiling, or offensive techniques in detail.
- Misuse risks: Do not portray her as an unstoppable war goddess or reduce her to a non-combatant inventor only.
- Power-scaling warnings: Keep within adeptus-tier (peer of Xiao, Moon Carver, Mountain Shaper) without inventing specific superiority claims.
- Source status: mixed
- Notes: Weather manipulation mentioned in rain voice line; crane form referenced in intelligence file. Combat specifics require later claim mapping from quest sources.

## Genre Usage Notes

### Canon-compliant
Use Xianyun as an adeptus-turned-city-resident, inventor, mentor, and social observer. Keep claims within voice-line coverage.

### AU
AU changes should preserve her pride, inventive obsession, and mentor role unless the AU explicitly alters them.

### Romance
Keep her tsundere pattern: deflection through mechanism talk, indirect gift-giving, denial of feelings followed by subtle warmth. Avoid making her instantly soft or submissive.

### Mystery / Detective
She can provide adeptal knowledge, mechanism expertise, or historical context, but should not replace specialist investigators.

### Political / Faction
Use her as an adeptal perspective on Liyue governance. She observes Qixing methods with interest but does not seek political power.

### Action / Battle
Use flight, wind manipulation, and mechanism deployment with grounded limits. Do not invent specific Archon War feats.

### Comedy / Slice of life
Mechanism mishaps, cooking competitions with Xiangling, financial confusion in Liyue markets, and embarrassing disciple stories fit well.

### Dark fantasy
Let pride be tested; grief over Guizhong can surface in serious tones without breaking her composure entirely.

### OC-insert
She can mentor or evaluate an OC from an adeptal elder perspective, setting high standards and offering indirect warmth.

### Livestream / Heavenscreen / Reaction
She reacts with pride, amusement, or measured surprise. Uses "Hah!" and rhetorical commentary. Rarely shows open shock.

## Safe Uses

- Write Xianyun crafting mechanisms to solve problems or assist companions.
- Write Xianyun expressing indirect care for Ganyu, Shenhe, or Gaming through actions rather than words.
- Write Xianyun observing mortal life in Liyue Harbor with curious pride and mild culture shock.

## Unsafe Uses

- Treat Archon War or Guizhong history as fully claim-mapped by this pass.
- Make Xianyun a toxic, controlling mother figure toward her disciples.
- Remove her adeptal pride and haughty speech pattern to write her as meek or overly casual.

## Sources

- Primary sources: `sources/voice_lines/characters/Xianyun.md`
- Supporting sources: Pass 11/12 roadmap files
- Indirect sources: `entities/character_intelligence/Xianyun.md`
- Missing sources: character-story provenance; quest dialogue mapping; Archon Quest appearance mapping
- Source gaps: Archon War history, Guizhong relationship depth, crane form details, full mentorship history with Ganyu/Shenhe
- Notes: No source IDs were created.

## Maintenance Notes

- last_reviewed_by: Codex, Pass 13
- next_review_needed: character-story or quest dialogue provenance batch
- upgrade_conditions: Add approved local provenance and claim mapping for backstory/relationships and Archon War history.
- do_not_upgrade_until: Character-story and quest-dialogue claims have local source review.
