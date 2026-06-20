# Pass 3 Sample Source Mapping

Generated: 2026-06-20 — Claude Code Pass 3 Source Tool Tests

> **⚠ NOTICE:** This file is a `sample_only` operational mapping created for Pass 3 demonstration purposes. It is `not_used_for_canon_upgrade`. No lore page was updated. No claim was upgraded.

---

## Frontmatter

```yaml
---
source_id: WS-0001
source_type: weapon_story
title: Kiếm Giáng Lâm (Sword of Descension)
original_title: 降臨之劍
game_version: 1.0+
language: vi
location: In-game weapon story text (Sword of Descension, PS4/PS5 exclusive weapon)
local_path: sources/weapon_stories/Kiếm Giáng Lâm.md
external_url:
source_owner: HoYoverse
source_tier: A_official
transcription_status: raw
reliability: high
source_status: primary_source_found
contains_spoilers: false
related_claims: [SAMPLE-CLAIM-001, SAMPLE-CLAIM-002, SAMPLE-CLAIM-003]
related_entities: [Traveler, Descender, Celestia]
last_checked: 2026-06-20
added_by: claude_code
---
```

---

# Kiếm Giáng Lâm (Sword of Descension)

## Source Metadata

| Field | Value |
| ----- | ----- |
| Source ID | WS-0001 |
| Type | weapon_story |
| Game version | 1.0+ |
| Language | Vietnamese |
| Local path | `sources/weapon_stories/Kiếm Giáng Lâm.md` |
| External URL | N/A (in-game text) |
| Tier | A_official (in-game primary source) |
| Status | primary_source_found |

## Short Summary

Weapon story for the Sword of Descension, a PS4/PS5 exclusive weapon. The text discusses a being who came to this world through special means — a "challenger" or "seeker" — using a sword that was previously wielded to resist the destruction of another world. The text references cosmological concepts (the darkness swallowing stars, challenging fate/destruction) and explicitly frames the sword as made for "those who challenge" and "those who seek." This is one of the earliest direct references to the Descender concept in the game.

## Claim Mapping

| Claim ID | Claim | Label | Supported? | Source status | Notes |
| -------- | ----- | ----- | ---------- | ------------- | ----- |
| SAMPLE-CLAIM-001 | The Traveler came to Teyvat from another world using special means | STRONGLY IMPLIED | Yes | primary_source_found | Text says "đây là minh chứng cho việc bạn dùng cách thức đặc biệt để đến với thế giới này" |
| SAMPLE-CLAIM-002 | The sword was previously used to resist the destruction of another world | CANON | Yes | primary_source_found | Text directly states the sword was swung to "níu giữ thế giới bị hủy diệt" (hold onto a world being destroyed) |
| SAMPLE-CLAIM-003 | The sword was made for "challengers" and "seekers" | CANON | Yes | primary_source_found | Text explicitly names "kẻ khiêu chiến" (challenger) and "người truy tìm" (seeker) as the intended wielders |

### Claim Mapping Notes

- All claim IDs above are `sample_only` and `not_used_for_canon_upgrade`.
- These claims are illustrative of what file-level source mapping looks like.
- Real claim IDs would follow the format in wiki/SCHEMA.md (e.g., `CLM-xxx` or thematic prefixes).
- No existing wiki page was updated based on these claims.

## Related Files

| File | Relationship | Notes |
| ---- | ------------ | ----- |
| `wiki/sources/source-index.md` | Registered as WS-0001 | File-level index entry exists since Pass 2 |
| `wiki/synthesis/power-system-governance.md` | Referenced by | Descender logic discussed there |
| `wiki/synthesis/unverified-lore-register.md` | Related claims | Descender identity claims |
| `sources/book_texts/Kho Tàng Vương Quốc Đêm Trắng.md` | Corroborating source | BK-0002; discusses Primordial One and 40-year war |

## Excerpts

Short excerpt for claim verification only:

> "Đây là minh chứng cho việc bạn dùng cách thức đặc biệt để đến với thế giới này. Đây là thanh kiếm người khiêu chiến 'thế giới' mới cầm nổi."

(Translation: "This is proof that you used special means to come to this world. This is a sword only the one who challenges the 'world' can wield.")

No long copyrighted passage included.

## Verification Notes

- [x] Locally present in workspace
- [ ] External candidate only
- [x] Official source (in-game weapon story text)
- [ ] Secondary transcription
- [ ] Transcript-like
- [ ] Leak quarantine
- [ ] Needs human review

### Pass 3 Sample Mapping Statement

- This is a Pass 3 sample mapping demonstration.
- No lore page was updated based on this mapping.
- No claim was upgraded from THEORY/UNVERIFIED to CANON based on this mapping.
- This file exists under `wiki/research/` as an operational sample, NOT under `sources/`.
- Future real ingestion should:
  1. Confirm source text against current in-game version.
  2. Register claim IDs in the appropriate entity/synthesis pages.
  3. Follow the full claim-mapping workflow in `wiki/workflows/audit-claim.md`.
  4. Undergo human review before any claim upgrade.
