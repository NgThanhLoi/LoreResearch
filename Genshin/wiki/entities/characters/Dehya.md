---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "hỏa"]
related_pages: ["./Candace.md", "./Nilou.md"]
---

# Dehya

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Dehya.md` |
| indirect_sources | `entities/character_intelligence/Dehya.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết lịch sử Eremite, mối quan hệ Dunyarzad, và quá khứ sa mạc. |

## Summary

Dehya là một chiến binh lính đánh thuê (mercenary) thuộc phe Eremite tại sa mạc Sumeru, sở hữu Hỏa Vision. Cô có tính cách mạnh mẽ, tự do phóng khoáng, trung thành với người cô bảo vệ và coi trọng đạo đức nghề nghiệp hơn tiền bạc. Cô được biết đến với sức mạnh chiến đấu ấn tượng và thái độ thẳng thắn không kiêng nể.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, Eremite affiliation, Pyro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách mạnh mẽ, tự do, trung thành, thẳng thắn.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với nhiều nhân vật Sumeru.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Pyro Vision. Chi tiết chiến đấu cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Lịch sử Eremite và Dunyarzad cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò mercenary thuộc Eremite.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Chi tiết chính trị sa mạc và lịch sử Eremite cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Dehya | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found |
| Region | Sumeru (Sa mạc) | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found |
| Faction | Eremite (Lính đánh thuê sa mạc) | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found |
| Role | Chiến binh lính đánh thuê (Mercenary) | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found |
| Vision / Power | Hỏa (Pyro) | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found |

## Canon Personality

* [CHAR-DEHYA-TRAIT-001] Dehya là chiến binh mạnh mẽ, phóng khoáng, coi trọng tự do và không bị trói buộc bởi quy tắc cứng nhắc.
  * label: CANON
  * source: `sources/voice_lines/characters/Dehya.md` ("Lần gặp đầu", "Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-DEHYA-TRAIT-002] Dehya trung thành tuyệt đối với người cô nhận bảo vệ, coi đạo đức nghề nghiệp quan trọng hơn tiền bạc.
  * label: CANON
  * source: `sources/voice_lines/characters/Dehya.md` ("Nói chuyện phiếm - Bảo vệ")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-DEHYA-TRAIT-003] Dehya thẳng thắn, không kiêng nể, nói thẳng suy nghĩ và không che giấu ý kiến.
  * label: CANON
  * source: `sources/voice_lines/characters/Dehya.md` ("Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-DEHYA-IMPLIED-001] Dehya có quá khứ phức tạp liên quan đến Eremite và mâu thuẫn nội bộ phe phái sa mạc, khiến cô chọn con đường mercenary độc lập.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Dehya.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý lý do rời khỏi cấu trúc Eremite truyền thống nhưng không chi tiết cụ thể.

## Theory / Interpretation

* [CHAR-DEHYA-THEORY-001] Dehya có thể có mối liên hệ sâu hơn với chính trị sa mạc và quyền lực Eremite vượt vai trò mercenary đơn thuần.
  * label: THEORY
  * source: `entities/character_intelligence/Dehya.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp xác nhận vị trí chính trị cụ thể trong Eremite hierarchy.
  * banned_overuse: Không viết cô là lãnh đạo Eremite hoặc có quyền lực chính trị sa mạc rộng lớn.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Dehya là lãnh đạo hoặc chỉ huy cấp cao Eremite | Cao | Chỉ dùng trong AU với tag rõ ràng. | Cấm viết cô có quyền chỉ huy toàn Eremite trong canon. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines chỉ xác nhận mercenary, không lãnh đạo. |
| Dehya chỉ là bodyguard cơ bắp không có chiều sâu | Trung bình | Giữ sức mạnh chiến đấu nhưng thể hiện đạo đức và tình cảm. | Cấm giảm cô thành muscle trope only. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines thể hiện chiều sâu. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Overclaim quyền lực chính trị Eremite/sa mạc | High | Không có nguồn xác nhận vị trí lãnh đạo, dễ overclaim. | Giữ vai trò mercenary, chỉ đề cập chính trị trong Theory. | `entities/character_intelligence/Dehya.md` |
| Giảm thành bodyguard trope không có chiều sâu | Medium | Bỏ qua đạo đức, tự do, và chiều sâu cảm xúc. | Viết cô mạnh mẽ VÀ có đạo đức, quan điểm, tình cảm rõ ràng. | `sources/voice_lines/characters/Dehya.md` |

## Voice Guide

- Formality: Thấp, thoải mái, thẳng thắn.
- Sentence rhythm: Mạnh mẽ, trực tiếp, không vòng vo.
- Common tone: Tự tin, phóng khoáng, đôi khi mỉa mai.
- Humor style: Khô, thực tế, đôi khi chọc ghẹo.
- Emotional restraint: Trung bình — bộc lộ trực tiếp nhưng không quá dramatic.
- Vocabulary habits: Ngôn ngữ chiến đấu, sa mạc, thực tế đời thường.
- What they avoid saying: Lời khiêm tốn giả tạo, xin lỗi không cần thiết, nịnh bợ.
- Should avoid: Nói năng yếu đuối, do dự, hoặc quá formal học thuật.
- Source: `sources/voice_lines/characters/Dehya.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Candace | Đồng minh sa mạc | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found | Tương tác quen thuộc với guardian Aaru Village. |
| Nilou | Bạn đáng yêu | CANON | `sources/voice_lines/characters/Dehya.md` ("Về Nilou...") | primary_source_found | Quý mến Nilou. |
| Nahida (Kusanali) | Nữ thần đáng kính | CANON | `sources/voice_lines/characters/Dehya.md` ("Về Kusanali...") | primary_source_found | Tôn trọng Thảo Thần. |
| Nhà Lữ Hành | Đối tác chiến đấu | CANON | `sources/voice_lines/characters/Dehya.md` | primary_source_found | Coi trọng sức mạnh và ý chí Lữ Khách. |

## Power / Lore Constraints

- Known abilities: Pyro Vision, kỹ năng chiến đấu cận chiến (claymore)
- Limits: Mercenary level, không phải thần hay siêu nhân
- Misuse risks: Viết cô bất khả chiến bại hoặc có quyền lực vượt mercenary
- Power-scaling warnings: Giữ ở mức chiến binh ưu tú, không phải archon-level
- Source status: partial_support_only
- Notes: Chi tiết kỹ thuật chiến đấu cần nguồn bổ sung.

## Genre Usage Notes

### Canon-compliant
Nhận hợp đồng bảo vệ, tuần tra sa mạc, tương tác với Eremite đồng nghiệp.

### AU
Khai thác bối cảnh nơi cô giữ vị trí lãnh đạo Eremite hoặc sa mạc thay đổi cấu trúc quyền lực.

### Romance
Thể hiện tình cảm thẳng thắn, mạnh mẽ, không vòng vo — hành động hơn lời nói.

### Mystery / Detective
Vai trò điều tra mối đe dọa sa mạc hoặc phản bội nội bộ Eremite.

### Political / Faction
Quan hệ phức tạp giữa Eremite, Akademiya, và dân thường sa mạc.

### Action / Battle
Chiến đấu cận chiến mạnh mẽ, bảo vệ người khác trong lửa đạn.

### Comedy / Slice of life
Tương tác thẳng thắn với bạn bè, phản ứng trước sự ngây thơ của Nilou.

### Dark fantasy
Mặt tối của Eremite, mâu thuẫn đạo đức mercenary, sa mạc nguy hiểm.

### OC-insert
OC là khách hàng thuê Dehya bảo vệ hoặc Eremite đồng nghiệp.

### Livestream / Heavenscreen / Reaction
Bình luận thẳng thắn, thực tế, không rào trước đón sau.

## Safe Uses

- Viết Dehya bảo vệ khách hàng với thái độ chuyên nghiệp và trung thành.
- Viết cô tranh luận thẳng thắn về đạo đức mercenary và tự do cá nhân.
- Viết cô chiến đấu mạnh mẽ trong phạm vi sức mạnh hợp lý.

## Unsafe Uses

- Viết cô là lãnh đạo chính trị Eremite hoặc có quyền lực sa mạc rộng lớn.
- Viết cô chỉ là bodyguard cơ bắp không có đạo đức hoặc chiều sâu.
- Viết cô bất khả chiến bại hoặc vượt power scale mercenary.

## Sources

- Primary sources: `sources/voice_lines/characters/Dehya.md`
- Indirect sources: `entities/character_intelligence/Dehya.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Lịch sử Eremite chi tiết, Dunyarzad connection, quá khứ sa mạc
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories hoặc Eremite lore sources được ingest.
- upgrade_conditions: Ingest character stories + Eremite provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
