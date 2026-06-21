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
related_pages: []
---

# Baizhu

## Audit Status

- audit_level: Level 2 Character Foundation
- character_level: Level 2
- source_status: mixed
- primary_sources_found: `sources/voice_lines/characters/Baizhu.md`
- supporting_sources: Pass 11/12 roadmap files
- indirect_sources: `entities/character_intelligence/Baizhu.md`
- missing_sources: character-story provenance, quest dialogue claim mapping, Changsheng contract lore mapping, Archon Quest dialogue mapping
- blocked_warnings: Do not treat Changsheng contract mechanics, immortality research details, or medical condition specifics as mapped canon until local provenance exists. Guard Qiqi relationship claims beyond what voice lines support.
- unresolved_issues: Changsheng's exact nature, the forbidden art inheritance chain, Baizhu's illness mechanism, and immortality research scope need later provenance work.

## Summary

Baizhu is the owner and chief physician of Bubu Pharmacy in Liyue, always accompanied by the talking white snake Changsheng. His voice lines establish him as a calm, gentle, and methodical healer who treats all patients regardless of wealth, while privately managing a chronic illness. He received a Dendro Vision related to his pursuit of understanding life-and-death boundaries. This page is usable as a Level 2 foundation for voice, role, and OOC guardrails, but deeper backstory regarding his illness, Changsheng's contract, and immortality research remains source-light here.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Local voice-line file establishes name, role as Bubu Pharmacy physician, and Dendro Vision holder.

### personality

- source_status: mixed
- source_ids:
- evidence_ids:
- notes: Voice lines support calm, patient, medically-minded personality; intelligence file provides indirect psychological depth.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines include relationship topics for Qiqi, Hu Tao, Ganyu, Keqing, Yaoyao, Zhongli, Xiao, Tighnari, and Gaming. Detailed relationship dynamics beyond surface statements are not claim-mapped.

### powers

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Dendro Vision mentioned in voice lines. Combat mechanics and forbidden-art healing are not claim-mapped from this source.

### backstory

- source_status: source_light
- source_ids:
- evidence_ids:
- notes: Voice lines mention a master/teacher, an oath, and chronic illness. Full backstory requires character-story provenance.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Bubu Pharmacy owner/physician identity is well-supported by local voice lines.

### major lore claims

- source_status: blocked_by_missing_source
- source_ids:
- evidence_ids:
- notes: Changsheng contract mechanics, immortality research, forbidden art inheritance — all blocked until local source mapping exists.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Baizhu | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found |
| Region | Liyue | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found |
| Faction | Bubu Pharmacy | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found |
| Role | Pharmacist / Chief Physician | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found |
| Vision / Power | Dendro | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found |
| Species / Origin | Human (accompanied by Changsheng, a talking snake) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found |

## Canon Personality

* [CHAR-BAIZHU-TRAIT-001] Baizhu speaks in a calm, warm, and unhurried manner, presenting the demeanor of a patient and attentive physician.
  * label: CANON
  * source: `sources/voice_lines/characters/Baizhu.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Supported across greetings, idle lines, and relationship topics. He consistently uses gentle, measured language.
  - confidence: medium

* [CHAR-BAIZHU-TRAIT-002] Baizhu is dedicated to his medical practice and treats all patients regardless of social status, as expressed through his master's oath.
  * label: CANON
  * source: `sources/voice_lines/characters/Baizhu.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Directly stated in "Muon tim hieu Baizhu - Dieu thu 3" (oath) and "Ve chung ta - Chua Benh" voice lines.
  - confidence: medium

* [CHAR-BAIZHU-TRAIT-003] Baizhu values both ancient and modern medical knowledge, adapting old remedies to current circumstances rather than rigidly following tradition.
  * label: CANON
  * source: `sources/voice_lines/characters/Baizhu.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Stated in "Ve ban than Baizhu - Co Xua Va Hien Dai" voice line.
  - confidence: medium

* [CHAR-BAIZHU-TRAIT-004] Baizhu believes a physician should also care for their own life, rejecting pure self-sacrifice as a principle.
  * label: CANON
  * source: `sources/voice_lines/characters/Baizhu.md`
  - source_status: primary_source_found
  - source_ids:
  - evidence_ids:
  - notes: Stated in "Muon tim hieu Baizhu - Dieu thu 5" — he explicitly says no life is born to be sacrificed for another.
  - confidence: medium

## Strongly Implied Traits

* [CHAR-BAIZHU-IMPLIED-001] Baizhu conceals the severity of his chronic illness behind composure and deflection, minimizing concern from others.
  * label: STRONGLY IMPLIED
  * source: `entities/character_intelligence/Baizhu.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Voice lines show him dismissing his coughing as "old illness, nothing serious." Intelligence file elaborates on this pattern. Useful as writing guidance until character-story provenance exists.
  - confidence: low

* [CHAR-BAIZHU-IMPLIED-002] Baizhu is intellectually curious about the boundaries between life and death, viewing his Vision as permission to explore those boundaries.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Baizhu.md`; `entities/character_intelligence/Baizhu.md`
  - source_status: mixed
  - source_ids:
  - evidence_ids:
  - notes: Voice line about Vision says the gods allowed "someone as audacious as me to investigate the rules of life and death." Intelligence file contextualizes this further.
  - confidence: low

## Theory / Interpretation

* [CHAR-BAIZHU-THEORY-001] Baizhu's care for Qiqi may involve a research motive alongside genuine affection.
  * label: THEORY / INTERPRETATION
  * source: `entities/character_intelligence/Baizhu.md`
  - source_status: indirect_source_only
  - source_ids:
  - evidence_ids:
  - notes: Voice line about Qiqi mentions he found a way to "keep the dying alive" through her case, and "conveniently" took her in. Intelligence file elaborates dual motive. However, the voice line alone does not confirm harmful intent.
  - confidence: low
  - why_interpretation: Voice line is ambiguous; intelligence file provides one reading. Character stories not yet mapped locally.
  - banned_overuse: Do not write Baizhu as a cold experimenter exploiting Qiqi. Do not erase the caring dimension either.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Baizhu is dying imminently from his illness | Medium | Use chronic illness as a character constraint. | State a specific timeline or death certainty without source. | Indirect guidance | Voice lines confirm illness but not prognosis. |
| Changsheng controls or manipulates Baizhu | High | Show Changsheng as an opinionated companion who speaks freely. | Write Changsheng as a puppeteer or antagonist to Baizhu. | Voice lines show banter, not control | Needs character-story provenance for contract details. |
| Baizhu experiments on Qiqi | High | Acknowledge research interest cautiously. | Portray active harmful experimentation or exploitation. | Indirect guidance | Voice line is ambiguous; guard this claim. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Making Baizhu a sinister mad scientist | High | It erases his genuine warmth, medical ethics, and the oath he took. | Keep him morally complex but fundamentally compassionate and principled. | Voice lines (oath, patient care statements) |
| Writing Baizhu as constantly weak and helpless | Medium | It flattens his composure and professional capability. | Show illness as a background constraint, not his defining action in every scene. | Voice lines (he minimizes illness, works full days) |
| Overstating Changsheng/snake mechanics | Medium | Contract details and forbidden-art specifics are not mapped from primary sources here. | Keep Changsheng as a talking companion with personality; avoid inventing contract rules. | Source gap |
| Reducing Baizhu to a Qiqi caretaker only | Medium | It erases his broader medical identity, research interests, and relationships. | Use Qiqi relationship as one dimension, not his entire character. | Voice lines show many relationships and interests |

## Voice Guide

- Formality: High. Polite, measured, uses respectful address consistently.
- Sentence rhythm: Slow and deliberate, often with gentle pauses or soft laughter before responding. Occasional coughing interrupts longer statements.
- Common tone: Warm, reassuring, knowledgeable — the tone of a doctor putting a patient at ease.
- Humor style: Dry and understated. Mild teasing delivered with a smile. Changsheng provides the sharper, more direct humor.
- Emotional restraint: High. Baizhu rarely shows distress openly; he deflects with gentle dismissal or subject changes.
- Vocabulary habits: Health, medicine, prescriptions, patients, herbs, body constitution, moderation, balance, rest.
- What they avoid saying: Complaints about his own pain, harsh judgments of others, crude language, panicked outbursts.
- Should avoid: Loud exclamations, aggressive confrontation, vulgar speech, excessive emotional display, rushed or clipped sentences.
- Source: `sources/voice_lines/characters/Baizhu.md`; `entities/character_intelligence/Baizhu.md` as indirect guidance.

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Qiqi | Guardian / employer (pharmacy assistant) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Voice line confirms he took her in; mentions adept sealing and finding ways to preserve life through her case. Guard dual-motive interpretation. |
| Hu Tao | Professional disagreement / mutual wariness | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Voice lines state ideological difference, not personal hatred. He finds her attempts to take Qiqi tiring. |
| Ganyu | Acquaintance (medical perspective) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | He notes adepti have strong constitutions and rarely need medicine. |
| Keqing | Acquaintance (medical concern) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | He observes she overworks and stays up late, but doubts she would listen to health advice. |
| Yaoyao | Acquaintance (visits Qiqi) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Yaoyao visits to play with Qiqi and complains about bitter medicine. |
| Zhongli | Respectful acquaintance | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Baizhu respects Zhongli's broad knowledge including ancient remedies; notes Zhongli manages his own health well. |
| Xiao | Brief past encounter | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Baizhu once found Xiao unconscious and cared for him at the pharmacy for a day. |
| Tighnari | Desired academic contact | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Baizhu wants to consult Tighnari about herbalism matters. |
| Gaming | Patient (young, injury-prone) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Baizhu notes Gaming's many scars and taught him wound care since advice alone would not work. |
| Changsheng | Constant companion (talking snake) | CANON | `sources/voice_lines/characters/Baizhu.md` | primary_source_found | Present in multiple voice lines as a speaking partner with her own opinions. Contract details are source-light. |

## Power / Lore Constraints

- Known abilities: Dendro Vision holder. Skilled physician and pharmacist. Knowledgeable in both ancient and modern medicine, poison-as-medicine applications, and herbal preparation.
- Limits: No source in this pass establishes combat-level power scaling, forbidden-art healing mechanics, or supernatural medical abilities beyond normal physician skill.
- Misuse risks: Do not write Baizhu with resurrection powers, instant healing magic, or immortality-granting abilities based on this page's sources.
- Power-scaling warnings: Keep within standard playable-character Dendro scale. His primary identity is healer/scholar, not combat specialist.
- Source status: mixed
- Notes: Forbidden-art mechanics and Changsheng-linked powers require character-story or quest provenance.

## Genre Usage Notes

### Canon-compliant
Use Baizhu as a pharmacy owner, medical consultant, or Liyue community figure while keeping claims within voice-line coverage.

### AU
AU changes should preserve his calm medical identity and intellectual curiosity unless the AU explicitly changes them.

### Romance
Keep his emotional restraint and gentle deflection intact; avoid reducing him to a fragile love interest defined only by illness.

### Mystery / Detective
He can serve as a medical expert, poison analyst, or information source due to his broad patient network.

### Political / Faction
Use him as a civilian professional perspective in Liyue; he is not a political actor or government figure.

### Action / Battle
Dendro Vision use is valid but keep him physically limited; he is not a front-line fighter by default.

### Comedy / Slice of life
Changsheng's blunt commentary contrasting Baizhu's politeness is a natural comedy dynamic. Pharmacy daily life works well.

### Dark fantasy
His illness and life-death research can anchor darker themes, but do not invent contract mechanics without source.

### OC-insert
He can serve as a healer, mentor, or medical contact for an OC visiting Liyue.

### Livestream / Heavenscreen / Reaction
He reacts with calm observation and measured commentary; Changsheng provides the livelier reactions.

## Safe Uses

- Write Baizhu consulting on a patient's condition or prescribing treatment at Bubu Pharmacy.
- Write Baizhu and Changsheng in their natural banter dynamic during daily pharmacy operations.
- Write Baizhu offering gentle health advice to other characters he observes overworking.

## Unsafe Uses

- Treat Changsheng contract details or forbidden-art mechanics as mapped canon from this page.
- Write Baizhu as a villain experimenting on Qiqi or others without ethical restraint.
- State specific claims about his remaining lifespan, immortality progress, or illness mechanism without source.

## Sources

- Primary sources: `sources/voice_lines/characters/Baizhu.md`
- Supporting sources: Pass 11/12 roadmap files
- Indirect sources: `entities/character_intelligence/Baizhu.md`
- Missing sources: character-story provenance; quest dialogue mapping; Changsheng contract lore; Archon Quest content
- Source gaps: backstory details, illness mechanism, forbidden art inheritance, immortality research scope, full Qiqi relationship dynamics
- Notes: No source IDs were created.

## Maintenance Notes

- last_reviewed_by: Codex, Pass 13
- next_review_needed: character-story or quest dialogue provenance batch
- upgrade_conditions: Add approved local provenance and claim mapping for backstory, Changsheng contract, and illness mechanics.
- do_not_upgrade_until: Character-story and Archon Quest claims have local source review.
