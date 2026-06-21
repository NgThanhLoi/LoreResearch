---
wiki_type: entity
entity_type: character
status: draft
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "liyue", "cryo"]
related_pages: []
---

# Shenhe

## Audit Status

- audit_level: Level 2 Character Foundation
- character_level: Level 2
- source_status: mixed
- primary_sources_found: `sources/voice_lines/characters/Shenhe.md`
- supporting_sources: Pass 11/12 roadmap files
- indirect_sources: `entities/character_intelligence/Shenhe.md`
- missing_sources: character-story provenance, quest dialogue claim mapping, Archon Quest Interlude mapping
- blocked_warnings: Do not treat character_intelligence backstory details (sacrifice cave, specific combat feats) as claim-mapped primary source in this page. Guard exorcist/clan/Cloud Retainer training details unless sourced directly.
- unresolved_issues: Exact red rope mechanics, childhood sacrifice details, and exorcist clan history need later provenance work from character stories and quest dialogue.

## Summary

Shenhe is a Cryo-wielding human disciple of the adepti, raised in isolation on Liyue's mountains after a traumatic childhood. Her voice lines establish her as socially detached, direct to the point of bluntness, and quietly protective of those she cares about. She struggles with what she calls "killing intent" (sat niem) restrained by red ropes, and is slowly learning to reconnect with the mortal world. This page is usable as a Level 2 foundation for voice, personality, and OOC guardrails, but backstory specifics remain source-light here.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice-line file confirms name, region, adeptus-disciple identity, and Cryo affiliation.

### personality

- source_status: mixed
- source_ids:
- evidence_ids:
- notes: Voice lines support cold demeanor, direct speech, protective nature, social inexperience, and meditation habits. Intelligence file is indirect guidance only.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines contain explicit relationship topics for Ningguang, Beidou, Yun Jin, Ganyu, Chongyun, Xingqiu, Zhongli, Baizhu, Hu Tao, Xiao, and Xianyun. Detail depth varies.

### powers

- source_status: mixed
- source_ids:
- evidence_ids:
- notes: Voice lines reference ice/frost abilities, red rope restraints on power, and increasing strength. Combat specifics not claim-mapped.

### backstory

- source_status: source_light
- source_ids:
- evidence_ids:
- notes: Voice lines (Story sections 4-5) mention father's betrayal, cave ordeal, and return to abandoned village. Full provenance requires character-story file mapping.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines confirm adeptus-disciple role, Cloud Retainer (su phu) mentorship, and mountain-dwelling lifestyle.

### major lore claims

- source_status: blocked_by_missing_source
- source_ids:
- evidence_ids:
- notes: Red rope lore mechanics, exorcist clan genealogy, and sacrifice ritual details require quest/story provenance.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Shenhe | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found |
| Region | Liyue | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found |
| Faction | Adepti-adjacent (Cloud Retainer disciple) | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found |
| Role | Exorcist-lineage / Adeptus disciple | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found |
| Vision / Power | Cryo | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found |
| Species / Origin | Human (adeptus-trained) | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found |

## Canon Personality

* [CHAR-SHENHE-TRAIT-001] Shenhe is socially detached and unfamiliar with human customs, often defaulting to blunt or violent solutions.
  * label: CANON
  * source: `sources/voice_lines/characters/Shenhe.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported by voice lines on interpersonal dealings ("khong hieu dao ly doi nhan xu the"), after-rain line ("khien ho bien mat"), and Story 2 ("diet co tan goc").
  - confidence: medium

* [CHAR-SHENHE-TRAIT-002] Shenhe is quietly protective and loyal to those she considers important, willing to follow their guidance even when she does not understand social norms.
  * label: CANON
  * source: `sources/voice_lines/characters/Shenhe.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported by "Ve chung ta - Doi nhan xu the" (will listen even without understanding), goodnight line (will watch over Traveler), and red rope metaphor line.
  - confidence: medium

* [CHAR-SHENHE-TRAIT-003] Shenhe practices meditation and self-discipline as core habits, valuing stillness and inner clarity.
  * label: CANON
  * source: `sources/voice_lines/characters/Shenhe.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported by hobby line on meditation ("tinh tam"), noon greeting, and chanting line ("hoi huong chinh dao").
  - confidence: medium

* [CHAR-SHENHE-TRAIT-004] Shenhe carries awareness of her dangerous nature ("killing fate") and actively works to restrain it.
  * label: CANON
  * source: `sources/voice_lines/characters/Shenhe.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported by intro line ("so menh co sat"), idle line on red rope limits, breakthrough lines, and Story 3 ("kiem che sat niem").
  - confidence: medium

## Strongly Implied Traits

* [CHAR-SHENHE-IMPLIED-001] Shenhe experiences genuine emotional vulnerability (fear of loss, longing for connection) beneath her outward coldness.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Shenhe.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Indirect guidance supported partially by voice-line "Phien nao" section (fear of losing important people). Useful as writing guidance only.
  - confidence: low

* [CHAR-SHENHE-IMPLIED-002] Shenhe's social growth is gradual and tied to specific trusted individuals rather than general socialization.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Shenhe.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Supported partially by voice-line progression (red rope line about Traveler, Beidou comfort line). Do not overstate integration speed.
  - confidence: low

## Theory / Interpretation

* [CHAR-SHENHE-THEORY-001] Shenhe's "killing intent" may be partly trauma response rather than purely supernatural fate.
  * label: THEORY / INTERPRETATION
  * source: `entities/character_intelligence/Shenhe.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Psychological interpretation from intelligence file. Voice-line Story 4 poses the question herself but does not resolve it.
  - confidence: low
  - why_interpretation: The voice line explicitly frames this as an unresolved question ("do toi co so menh co sat nen moi bi vut bo, hay la do so menh qua trac tro da khien toi sinh ra nguon sat khi nay?"). No primary source resolves the causality.
  - banned_overuse: Do not present this as confirmed lore. Do not reduce Shenhe to a pure trauma victim without supernatural dimension.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Shenhe is completely emotionless | High | Use emotional restraint as default presentation. | Erase her capacity for warmth, curiosity, or distress shown in voice lines. | Voice lines show care, curiosity, fear of loss | Do not write her as a robot. |
| Red ropes fully suppress all feelings | Medium | Use red ropes as restraint on violent impulses. | Claim they eliminate all emotion or sensation. | Voice lines show feelings exist alongside restraint | Ropes limit "sat niem," not all affect. |
| Exorcist clan backstory fully mapped here | High | Mention exorcist lineage briefly. | Expand clan history, rituals, or genealogy beyond what voice lines state. | Source gap | Needs character-story provenance. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Writing Shenhe as completely emotionless or robotic | High | Voice lines show curiosity, care, fear of loss, and aesthetic appreciation. Red ropes restrain violence, not all feeling. | Let her be reserved and flat-toned but capable of warmth, confusion, and quiet attachment. | Voice lines (phien nao, sinh nhat, morning dew, moon) |
| Making Shenhe socially fluent or charismatic | Medium | She explicitly states she does not understand social norms and avoids crowds. | Keep her blunt, awkward in groups, and reliant on trusted guides for social navigation. | Voice lines (doi nhan xu the, Beidou line) |
| Romanticizing violence or "yandere" framing | High | Her violent tendencies are presented as a burden she actively fights, not a desirable trait. | Frame killing intent as something she restrains and struggles with, not something she enjoys. | Voice lines (intro, Story 3, breakthrough lines) |
| Overstating red rope lore mechanics | Medium | Exact mechanics are not claim-mapped from primary sources in this pass. | Reference red ropes as restraint on violent impulses; do not invent detailed magical rules. | source_light |

## Voice Guide

- Formality: Moderate to high; speaks respectfully to elders and politely to peers, but with extreme directness that can seem blunt or curt.
- Sentence rhythm: Short, declarative sentences. Minimal elaboration. Occasional trailing thoughts or self-corrections.
- Common tone: Calm, flat, matter-of-fact. Occasionally reveals gentle warmth or dry curiosity underneath.
- Humor style: Unintentional; her literal interpretations of social norms and blunt violent proposals create dark humor she does not recognize.
- Emotional restraint: High. Emotions surface as brief, understated observations rather than exclamations.
- Vocabulary habits: References to master/teacher (su phu), mountain life, meditation, red ropes, eliminating threats, mortal world (nhan gian) vs. her world.
- What they avoid saying: Flowery social pleasantries, elaborate emotional declarations, self-pity, or manipulative speech.
- Should avoid: Long speeches, chatty banter, modern slang, excessive emotional outbursts, cruel taunting.
- Source: `sources/voice_lines/characters/Shenhe.md`; `entities/character_intelligence/Shenhe.md` as indirect guidance.

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Ningguang | Admired figure | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Admires her ability to solve problems that blades cannot; master also praises Ningguang. |
| Beidou | Comfortable companion | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Feels at ease with Beidou's directness; does not need social formalities around her. Crowds on ship are a barrier. |
| Yun Jin | Appreciated artist/friend | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Enjoys Liyue opera; appreciates learning stories without direct social contact. |
| Ganyu | Fellow disciple (indirect) | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Knows stories about Ganyu from master; notes gap between master's stories and reality. |
| Chongyun | Blood relative | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Recognizes blood connection; willing to guide his training but uncomfortable with his family's warmth. |
| Xingqiu | Traveler's friend (observed) | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Protective misunderstanding; initially perceived whispering as a threat to Traveler. |
| Zhongli | Respected elder figure | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Master instructed her to leave him in peace; she complies without full understanding. |
| Baizhu | Herbalist acquaintance | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Respects his medicine quality; dislikes Changsheng but restrains herself. |
| Hu Tao | Familiar neighbor | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Hears Hu Tao singing in nearby mountains; finds it strange but not unpleasant. |
| Xiao | Respected fellow loner | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | Notes he seems more relaxed recently; speculates he met someone good. |
| Xianyun (Cloud Retainer) | Master / savior | CANON | `sources/voice_lines/characters/Shenhe.md` | primary_source_found | References master frequently; wonders if she has taken on master's mannerisms. |

## Power / Lore Constraints

- Known abilities: Cryo Vision, adeptus-trained combat arts, meditation/spiritual discipline, extreme physical endurance implied by mountain lifestyle.
- Limits: Red ropes limit her power output; she acknowledges their constraint. Exact combat ceiling is not claim-mapped in this pass.
- Misuse risks: Do not portray her as an unstoppable force with no drawbacks. Do not invent red rope mechanics beyond "restrains killing intent."
- Power-scaling warnings: Keep within standard playable-character Cryo scale. Voice lines suggest increasing strength but frame it as something requiring restraint, not celebration.
- Source status: mixed
- Notes: Breakthrough lines confirm growing power; master would add more ropes if she knew. Specific feats require character-story provenance.

## Genre Usage Notes

### Canon-compliant
Use Shenhe as a mountain-dwelling exorcist disciple navigating mortal society with quiet intensity and social awkwardness.

### AU
Preserve her core tension between dangerous power and desire for connection; AU changes should not erase either pole.

### Romance
Keep her earnest, literal, and physically protective; avoid reducing her to a possessive archetype or making her socially fluent.

### Mystery / Detective
She can sense spiritual threats, track in wilderness, and cut through social deception with bluntness, but lacks investigative subtlety.

### Political / Faction
Use her as an outsider perspective on Liyue society; she observes but does not participate in governance.

### Action / Battle
Use Cryo abilities and adeptus training with grounded limits; frame red ropes as meaningful restraint, not dramatic power-up.

### Comedy / Slice of life
Her literal misunderstandings of social norms and blunt violent proposals create natural comedy without making her a joke.

### Dark fantasy
Her backstory supports dark themes, but guard against gratuitous suffering or romanticizing her trauma.

### OC-insert
She can serve as a dangerous but trustworthy ally who needs social guidance; do not make her instantly open to strangers.

### Livestream / Heavenscreen / Reaction
She reacts with minimal visible emotion but shows care through protective actions and brief, sincere statements.

## Safe Uses

- Write Shenhe observing mortal customs with genuine curiosity and quiet confusion.
- Write Shenhe protecting someone important through decisive, restrained action.
- Write Shenhe learning social boundaries through trusted guidance while maintaining her direct nature.

## Unsafe Uses

- Treat character-intelligence backstory details (cave sacrifice mechanics, specific feats) as claim-mapped primary source.
- Write Shenhe as emotionless, robotic, or incapable of care and attachment.
- Romanticize her violent impulses or frame red ropes as a sexy aesthetic rather than a genuine restraint on harm.

## Sources

- Primary sources: `sources/voice_lines/characters/Shenhe.md`
- Supporting sources: Pass 11/12 roadmap files
- Indirect sources: `entities/character_intelligence/Shenhe.md`
- Missing sources: character-story provenance; quest dialogue claim mapping; Archon Quest Interlude mapping
- Source gaps: exorcist clan history, red rope exact mechanics, childhood sacrifice full details, adeptus training specifics
- Notes: No source IDs were created.

## Maintenance Notes

- last_reviewed_by: Codex, Pass 13
- next_review_needed: character-story or quest dialogue provenance batch
- upgrade_conditions: Add approved local provenance and claim mapping for backstory, red rope lore, and exorcist lineage.
- do_not_upgrade_until: Character-story and quest-dialogue claims have local source review.
