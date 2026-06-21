---
wiki_type: entity
entity_type: character
status: draft
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "liyue", "dendro"]
related_pages: ["./Xiangling.md"]
---

# Yaoyao

## Audit Status

- audit_level: Level 2 Character Foundation
- character_level: Level 2
- source_status: mixed
- primary_sources_found: `sources/voice_lines/characters/Yaoyao.md`
- supporting_sources: `wiki/entities/characters/character-inventory.md`, Pass 11/12 roadmap files
- indirect_sources: `entities/character_intelligence/Yaoyao.md`
- missing_sources: character-story provenance, quest dialogue claim mapping, adepti training detail mapping
- blocked_warnings: Do not use adepti training mechanics or Yuegui operational details as canon unless source-mapped locally. Do not adultify the character.
- unresolved_issues: Exact nature of adepti training, Yuegui creation details, and Qingce Village family history need later provenance work.

## Summary

Yaoyao is a young disciple of Madame Ping (Ca Tran Lang Thi Chan Quan) in Liyue, with local voice-line coverage providing solid identity, personality, and relationship foundations. She presents as a caring, polite, and energetic child who habitually looks after others' health and wellbeing. Her page is usable as a Level 2 foundation for voice, role, and OOC guardrails, but deeper backstory about her adepti training, family at Qingce Village, and Yuegui mechanics remain source-light here.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Local voice-line file exists with self-introduction confirming name, master, and role.

### personality

- source_status: mixed
- source_ids:
- evidence_ids:
- notes: Voice lines strongly support caregiving, polite, and curious personality; intelligence file is indirect guidance only.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines include Xiangling, Qiqi, Baizhu, Ganyu, Keqing, Yun Jin, Beidou, Shenhe, Yanfei, and Xianyun relationship topics; detailed relationship history is not claim-mapped.

### powers

- source_status: source_light
- source_ids:
- evidence_ids:
- notes: Dendro Vision mentioned in voice lines; spear training referenced but combat details not claim-mapped. Yuegui referenced as companion only.

### backstory

- source_status: source_light
- source_ids:
- evidence_ids:
- notes: Parents live in mountains (Qingce Village implied), family grows herbs. Full backstory requires later provenance.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Disciple of Madame Ping identity confirmed by self-introduction voice line.

### major lore claims

- source_status: blocked_by_missing_source
- source_ids:
- evidence_ids:
- notes: No major lore expansion in this pass. Adepti training mechanics blocked until source-mapped.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Yaoyao | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found |
| Region | Liyue | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found |
| Faction | Adepti-adjacent (Madame Ping disciple) | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found |
| Role | Young disciple / herb gatherer | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found |
| Vision / Power | Dendro | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found |
| Species / Origin | Human (child) | CANON | `sources/voice_lines/characters/Yaoyao.md`; `entities/character_intelligence/Yaoyao.md` | mixed |

## Canon Personality

* [CHAR-YAOYAO-TRAIT-001] Yaoyao is nurturing and habitually caregiving, reminding others to eat well, dress warmly, and take care of their health.
  * label: CANON
  * source: `sources/voice_lines/characters/Yaoyao.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported by morning/evening greetings, concern voice lines, and multiple relationship topics where she worries about others' health.
  - confidence: medium

* [CHAR-YAOYAO-TRAIT-002] Yaoyao is polite, well-mannered, and respectful toward elders, using proper address forms and self-effacing introduction.
  * label: CANON
  * source: `sources/voice_lines/characters/Yaoyao.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Self-introduction uses humble language ("tai hen suc mon"), proper sibling/elder address throughout all voice lines.
  - confidence: medium

* [CHAR-YAOYAO-TRAIT-003] Yaoyao is curious and energetic, drawn to novelty and excitement at Liyue Harbor.
  * label: CANON
  * source: `sources/voice_lines/characters/Yaoyao.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Voice lines about harbor visits, wanting to see ships and new goods, and gossip-seeking idle line.
  - confidence: medium

* [CHAR-YAOYAO-TRAIT-004] Yaoyao finds spear training tedious due to the weapon being heavy and long, but accepts her master's expectations without rebellion.
  * label: CANON
  * source: `sources/voice_lines/characters/Yaoyao.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Direct admission in "Luyen Thuong" voice line; does not rebel, just finds it tiring.
  - confidence: medium

## Strongly Implied Traits

* [CHAR-YAOYAO-IMPLIED-001] Yaoyao's over-caring tendency may occasionally create mild social pressure on older companions, though it comes from genuine concern rather than control.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Yaoyao.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Useful as writing guidance only; intelligence file interprets the nagging pattern.
  - confidence: low

* [CHAR-YAOYAO-IMPLIED-002] Yaoyao is highly self-reliant for her age, managing household tasks because her parents are often absorbed in herb cultivation.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Yaoyao.md`; `entities/character_intelligence/Yaoyao.md`
  - source_status: mixed
  - source_ids:
  - evidence_ids:
  - notes: Voice line "Dieu thu 2" mentions parents forgetting meals when busy; intelligence file expands this pattern.
  - confidence: low

## Theory / Interpretation

* [CHAR-YAOYAO-THEORY-001] Yaoyao's compulsive caregiving may stem from early self-reliance necessitated by absent-minded parents.
  * label: THEORY / INTERPRETATION
  * source: `entities/character_intelligence/Yaoyao.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Psychological interpretation connecting family background to personality pattern.
  - confidence: low
  - why_interpretation: The pass did not ingest character stories or map family history evidence beyond a single voice line.
  - banned_overuse: Do not turn Yaoyao into a neglected or parentified child by default. Her tone is happy and content, not burdened.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Yaoyao is secretly lonely or emotionally neglected | Medium | Acknowledge she grew up somewhat independent. | Frame her as tragically abandoned or emotionally damaged. | Indirect guidance | Her voice lines show contentment, not distress. |
| Yuegui has full sentience and complex emotions | Medium | Use Yuegui as a loyal companion she plays with. | Give Yuegui independent storylines or emotional arcs without source. | Source gap | Yuegui mechanics need later mapping. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Adultifying Yaoyao's speech or emotional maturity | High | She is a child; her wisdom is childlike misapplication of proverbs, not adult insight. | Keep vocabulary simple, let her misquote idioms, maintain childlike wonder. | local voice lines |
| Turning caregiving into parental authority | Medium | She nags out of affection, not command. She has no authority over older characters. | Frame her concern as endearing worry, not discipline or control. | local voice lines + indirect guidance |
| Romanticizing any relationship | High | She is a child character; all bonds are familial or friendship. | Keep all relationships platonic, age-appropriate, and wholesome. | source policy guardrail |
| Overstating combat prowess | Medium | She admits the spear is heavy and training is tedious; she is still learning. | Show her as a trainee, not a battlefield expert. | local voice lines |

## Voice Guide

- Formality: Polite and well-mannered, uses respectful address for all elders (anh/chi), humble self-reference.
- Sentence rhythm: Short, bouncy sentences with frequent interjections (A, Oi, Hihi). Lists health reminders in rapid succession.
- Common tone: Warm, cheerful, gently fussy, childlike enthusiasm.
- Humor style: Innocent misuse of idioms and proverbs, self-corrections, playful sound effects (chip chip, op op).
- Emotional restraint: Low; she expresses worry, joy, and curiosity openly and immediately.
- Vocabulary habits: Food and health references (eat on time, dress warmly, nutrition), master/senior-sister address, Yuegui, radishes, herbs.
- What they avoid saying: Rude or disrespectful language, cynical remarks, complex philosophical statements.
- Should avoid: Adult-level analysis, bitter sarcasm, cold detachment, rebellious tone toward elders.
- Source: `sources/voice_lines/characters/Yaoyao.md`; `entities/character_intelligence/Yaoyao.md` as indirect guidance.

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Xiangling | Senior fellow disciple (su ty) | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Worries about Xiangling's extreme ingredient hunting; asked master to intervene. |
| Qiqi | Best friend | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Accepts Qiqi's memory loss patiently; willing to remind her for life. |
| Baizhu | Trusted pharmacist | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Respects his medicine; asked him about curing Qiqi. |
| Ganyu | Respected elder she worries about | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Concerned about Ganyu overworking; promised Ganyu not to run onto ships. |
| Keqing | Admired role model | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Wants to learn from Keqing's diligence and respect for elders. |
| Yun Jin | Admired performer | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Watches opera with master; impressed by Yun Jin's spear dance. |
| Beidou | Ship captain she admires | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Thinks Beidou's ship is cool; promised Ganyu not to board it. |
| Shenhe | Elder she wants to help care for | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Wants to help Ganyu look after Shenhe's adjustment to society. |
| Yanfei | Respected elder with impressive dedication | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Amazed by Yanfei carrying heavy law books everywhere. |
| Xianyun (Liu Van) | Adepti elder / gift-giver | CANON | `sources/voice_lines/characters/Yaoyao.md` | primary_source_found | Recognized Xianyun immediately despite disguise; knows her as master's old friend. |

## Power / Lore Constraints

- Known abilities: Dendro Vision, spear wielding (in training), companion Yuegui who assists in combat.
- Limits: She explicitly states the spear is too heavy and long; she is still a student. No source establishes mastery.
- Misuse risks: Do not portray Yaoyao as a combat prodigy or powerful adeptus-level fighter.
- Power-scaling warnings: Keep within child-trainee scale; she defers to senior figures for serious threats.
- Source status: source_light
- Notes: Adepti training specifics and Yuegui combat mechanics require later claim mapping. Guard these unless source-supported.

## Genre Usage Notes

### Canon-compliant
Use Yaoyao as a caring young helper in Liyue Harbor scenes, herb-gathering errands, or domestic moments with her master and fellow disciples.

### AU
AU changes should preserve her warmth, childlike curiosity, and polite caregiving unless the AU explicitly alters them.

### Romance
Not applicable. Yaoyao is a child character. All bonds must remain familial or friendship-based.

### Mystery / Detective
She can overhear gossip, notice health-related clues, or connect people socially, but should not serve as an investigator.

### Political / Faction
Use her as a ground-level perspective on adepti-human relations, not a faction decision-maker.

### Action / Battle
Show her as a trainee contributing with support (healing, Yuegui assistance) rather than frontline combat dominance.

### Comedy / Slice of life
Cooking mishaps, proverb misquotations, fussing over friends' meals, and playing with Yuegui fit naturally.

### Dark fantasy
Let her innocence contrast with darker settings; do not break her spirit casually or subject her to adult trauma without careful framing.

### OC-insert
She can welcome and care for an OC with food and health advice while showing them around Liyue.

### Livestream / Heavenscreen / Reaction
She reacts with open childlike enthusiasm, worry for friends, and gentle nagging about self-care.

## Safe Uses

- Write Yaoyao preparing meals or reminding friends to eat properly.
- Write Yaoyao visiting Qiqi at Bubu Pharmacy and patiently helping her remember things.
- Write Yaoyao misquoting a proverb and cheerfully correcting herself.

## Unsafe Uses

- Adultify her speech, emotional depth, or romantic capacity.
- Portray her as a powerful combatant or adepti-level practitioner.
- Treat character-intelligence psychological interpretations as mapped canon in this pass.

## Sources

- Primary sources: `sources/voice_lines/characters/Yaoyao.md`
- Supporting sources: `wiki/entities/characters/character-inventory.md`; Pass 11/12 roadmap files
- Indirect sources: `entities/character_intelligence/Yaoyao.md`
- Missing sources: character-story provenance; adepti training detail mapping; quest dialogue mapping
- Source gaps: backstory family details, Yuegui creation/mechanics, full adepti curriculum
- Notes: No source IDs were created.

## Maintenance Notes

- last_reviewed_by: Codex, Pass 13
- next_review_needed: character-story or adepti training provenance batch
- upgrade_conditions: Add approved local provenance and claim mapping for backstory/powers/Yuegui mechanics.
- do_not_upgrade_until: Character-story and adepti training claims have local source review.
