---
wiki_type: entity
entity_type: character
status: draft
reliability: unknown
last_audited: YYYY-MM-DD
source_level: unknown
character_level: Level 0|Level 1|Level 2|Level 3|Level 4
source_policy: source_first
tags: ["character"]
related_pages: []
---

# [Character Name]

## Audit Status

Allowed `source_status` values:

- `primary_source_found`
- `supporting_source`
- `partial_support_only`
- `indirect_source_only`
- `source_missing`
- `source_light`
- `blocked_by_missing_source`
- `extraction_index_candidate`
- `mixed`

Template fields:

- audit_level:
- character_level:
- source_status:
- primary_sources_found:
- supporting_sources:
- indirect_sources:
- missing_sources:
- blocked_warnings:
- unresolved_issues:

## Summary

[Write a cautious 3-5 sentence maximum character summary. Do not add unsourced lore expansion. The summary must reflect `source_status`; if the page is `source_light` or blocked, state the limitation plainly and avoid broad canon claims.]

## Source Coverage Notes

Use one mini-block per claim group. Leave unsupported fields empty or mark them `source_missing`; do not create placeholder source IDs.

### identity

- source_status:
- source_ids:
- evidence_ids:
- notes:

### personality

- source_status:
- source_ids:
- evidence_ids:
- notes:

### relationships

- source_status:
- source_ids:
- evidence_ids:
- notes:

### powers

- source_status:
- source_ids:
- evidence_ids:
- notes:

### backstory

- source_status:
- source_ids:
- evidence_ids:
- notes:

### faction role

- source_status:
- source_ids:
- evidence_ids:
- notes:

### major lore claims

- source_status:
- source_ids:
- evidence_ids:
- notes:

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | | CANON/UNKNOWN | | |
| Region | | CANON/UNKNOWN | | |
| Faction | | CANON/UNKNOWN | | |
| Role | | CANON/UNKNOWN | | |
| Vision / Power | | CANON/UNKNOWN | | |
| Species / Origin if relevant | | CANON/UNKNOWN/UNVERIFIED | | |

## Canon Personality

* [CHAR-[ID]-TRAIT-001] [claim]
  * label:
  * source:
  - source_status:
  - source_ids:
  - evidence_ids:
  - notes:
  - confidence:

## Strongly Implied Traits

* [CHAR-[ID]-IMPLIED-001] [claim]
  * label: STRONGLY IMPLIED
  * source:
  - source_status:
  - source_ids:
  - evidence_ids:
  - notes:
  - confidence:

## Theory / Interpretation

Rules:

- Must never be used as canon.
- Must record why it is interpretation.
- Must include banned overuse where relevant.

* [CHAR-[ID]-THEORY-001] [claim]
  * label: THEORY / INTERPRETATION
  * source:
  - source_status:
  - source_ids:
  - evidence_ids:
  - notes:
  - confidence:
  - why_interpretation:
  - banned_overuse:

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| | | | | | |

## OOC Risk Register

Severity values: `Low`, `Medium`, `High`, `Critical`.

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| | | | | |

## Voice Guide

- Formality:
- Sentence rhythm:
- Common tone:
- Humor style:
- Emotional restraint:
- Vocabulary habits:
- What they avoid saying:
- Should avoid:
- Source:

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| | | | | | |

## Power / Lore Constraints

- Known abilities:
- Limits:
- Misuse risks:
- Power-scaling warnings:
- Source status:
- Notes:

## Genre Usage Notes

Keep this section genre-generic. Do not write plot, outline, divergence timelines, or project-specific premise notes.

### Canon-compliant

[Safe and unsafe handling for canon-compliant use.]

### AU

[Safe and unsafe handling for alternate-universe use. Keep canon divergences explicit.]

### Romance

[Safe and unsafe handling for relationship-focused stories.]

### Mystery / Detective

[Safe and unsafe handling for investigation, clue, secret, or deduction roles.]

### Political / Faction

[Safe and unsafe handling for faction, diplomacy, institutional, or power-struggle roles.]

### Action / Battle

[Safe and unsafe handling for combat, tactics, injuries, and power scaling.]

### Comedy / Slice of life

[Safe and unsafe handling for lower-stakes character use.]

### Dark fantasy

[Safe and unsafe handling for horror, corruption, trauma, ancient lore, or darker tone.]

### OC-insert

[Safe and unsafe handling for original-character interaction.]

### Livestream / Heavenscreen / Reaction

[Safe and unsafe handling for reaction-format, screen-viewing, or meta-audience stories.]

## Safe Uses

- [Safe use placeholder.]
- [Safe use placeholder.]
- [Safe use placeholder.]

## Unsafe Uses

- [Unsafe use placeholder.]
- [Unsafe use placeholder.]
- [Unsafe use placeholder.]

## Sources

- Primary sources:
- Supporting sources:
- Indirect sources:
- Missing sources:
- Source gaps:
- Notes:

## Maintenance Notes

- last_reviewed_by:
- next_review_needed:
- upgrade_conditions:
- do_not_upgrade_until:

# Template Variants

## Variant A - Standard Level 2 Character Foundation Page

Use for playable or major characters when a voice source exists and there is enough direct, supporting, or carefully bounded indirect material to create a multi-genre character foundation page.

Rules:

- `status:` should usually be `active` or `draft`, depending on review state.
- `reliability:` should reflect actual coverage, often `mixed` until source provenance improves.
- `character_level:` should be `Level 2`.
- Fill all core sections, but mark unsupported claim groups honestly.
- Use voice lines and approved local source files as primary/supporting material.
- Use character intelligence only as indirect guidance unless separately sourced.
- Keep genre notes generic and reusable.

## Variant B - Source-Light Character Page

Use for source-light or later-region characters, including cases like Columbina where indirect materials exist but direct local source coverage is incomplete.

Rules:

- `reliability: source_light`
- `character_level: Level 1` or guarded `Level 2`
- No broad canon claims.
- All major claims must be `indirect_source_only`, `source_light`, `partial_support_only`, or `THEORY / INTERPRETATION` unless a direct source is found.
- Include stronger `blocked_warnings`.
- Safe Uses must be limited to cautious, source-status-explicit portrayals.
- Unsafe Uses must forbid hardening fanon, theory, rumor, or community identity claims into canon.
- Do not use source-light material to resolve major lore questions.

## Variant C - Blocked Character Page

Use when a character lacks the direct local source package needed for a real foundation page, including cases like Dottore or Sandrone when direct source packages are missing.

Rules:

- `status: blocked`
- `reliability: blocked_by_missing_source`
- `character_level: Level 1 blocked`
- No canon personality expansion.
- No voice guide unless a voice source exists.
- No relationship expansion from fandom summaries.
- Safe use only as a guarded placeholder or as AU with an explicit warning.
- `do_not_upgrade_until:` must name the missing source package or source-review condition.
- Do not convert indirect summaries, folder paths, or empty shells into source evidence.

Recommended reduced sections:

- Audit Status
- Summary with warning
- Source Coverage Notes
- Blocked Warnings
- Safe Uses
- Unsafe Uses
- Sources
- Maintenance Notes

## Variant D - Level 4 Claim-Mapped Character Page

Use only after source IDs, evidence IDs, and reviewed update reports exist, as with Kaeya after the Pass 10 pipeline.

Rules:

- `character_level: Level 4`
- Must include source IDs.
- Must include evidence IDs if available.
- Must cite claim-mapping and update reports in Maintenance Notes.
- May upgrade `source_status` only after a reviewed changelog.
- No generalized overclaim from one evidence field.
- Preserve existing Level 4 metadata during normalization.
- Keep claim wording narrow enough to match the cited evidence.
