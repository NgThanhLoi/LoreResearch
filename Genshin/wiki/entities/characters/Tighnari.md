---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "thảo"]
related_pages: ["./Collei.md", "./Cyno.md", "./Nahida.md"]
---

# Tighnari

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Tighnari.md` |
| indirect_sources | `entities/character_intelligence/Tighnari.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết y học/khoa học, nguồn gốc bộ tộc, và mối liên hệ Withering/Eleazar. |

## Summary

Tighnari là Kiểm Lâm Trưởng (Forest Ranger) tại rừng Avidya, Sumeru, sở hữu Thảo Vision. Anh là chuyên gia thực vật học, dẫn dắt đội Kiểm Lâm bảo vệ rừng mưa khỏi Withering và các mối đe dọa khác. Anh có tính cách thẳng thắn, thực tế, kiên nhẫn khi giảng dạy, và coi trọng tri thức thực tiễn hơn lý thuyết suông. Anh là mentor của Collei và bạn thân của Cyno.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, vai trò Forest Ranger, Dendro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách thẳng thắn, thực tế, kiên nhẫn, yêu thiên nhiên.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận quan hệ với Collei, Cyno, Alhaitham, Kaveh, Dori, Layla, Lisa, Kusanali, Dehya, Faruzan, Sethos.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Dendro Vision. Chi tiết botanical expertise cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Nguồn gốc bộ tộc (valuka shuna) và lịch sử cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò Forest Ranger leader tại rừng Avidya.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Withering expertise, medical/scientific authority, bộ tộc origin cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Tighnari | CANON | `sources/voice_lines/characters/Tighnari.md` | primary_source_found |
| Region | Sumeru (Rừng Avidya) | CANON | `sources/voice_lines/characters/Tighnari.md` | primary_source_found |
| Faction | Kiểm Lâm Rừng Avidya | CANON | `sources/voice_lines/characters/Tighnari.md` | primary_source_found |
| Role | Kiểm Lâm Trưởng (Forest Ranger Leader) | CANON | `sources/voice_lines/characters/Tighnari.md` | primary_source_found |
| Vision / Power | Thảo (Dendro) | CANON | `sources/voice_lines/characters/Tighnari.md` | primary_source_found |

## Canon Personality

* [CHAR-TIGHNARI-TRAIT-001] Tighnari là chuyên gia thực vật học thẳng thắn, coi trọng tri thức thực tiễn và kinh nghiệm thực địa hơn lý thuyết suông.
  * label: CANON
  * source: `sources/voice_lines/characters/Tighnari.md` ("Lần gặp đầu", "Nói chuyện phiếm - Tri thức")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-TIGHNARI-TRAIT-002] Tighnari kiên nhẫn khi giảng dạy và hướng dẫn, đặc biệt với Collei, nhưng nghiêm khắc với sự lười biếng hoặc thiếu trách nhiệm.
  * label: CANON
  * source: `sources/voice_lines/characters/Tighnari.md` ("Về Collei...", "Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-TIGHNARI-TRAIT-003] Tighnari thích nấm và kiến thức thực vật, ghét gia vị mạnh quá nhiều.
  * label: CANON
  * source: `sources/voice_lines/characters/Tighnari.md` ("Món ăn yêu thích", "Món ăn ghét")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-TIGHNARI-TRAIT-004] Tighnari có sở thích ép lá cây làm bookmark và trân trọng kiến thức từ mọi nguồn.
  * label: CANON
  * source: `sources/voice_lines/characters/Tighnari.md` ("Nói chuyện phiếm - Bookmark")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-TIGHNARI-IMPLIED-001] Tighnari có nguồn gốc bộ tộc (có thể là valuka shuna) khác biệt với người Sumeru thông thường, thể hiện qua đặc điểm ngoại hình (tai).
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Tighnari.md` ("Bối cảnh")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines đề cập heritage nhưng không chi tiết tên bộ tộc cụ thể.

## Theory / Interpretation

* [CHAR-TIGHNARI-THEORY-001] Tighnari có thể có chuyên môn y học/khoa học liên quan đến Eleazar hoặc Withering vượt mức Forest Ranger thông thường.
  * label: THEORY
  * source: `entities/character_intelligence/Tighnari.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp xác nhận medical authority cụ thể.
  * banned_overuse: Không viết anh là bác sĩ chuyên khoa hoặc có quyền y tế vượt Forest Ranger.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Tighnari là bác sĩ/nhà khoa học toàn năng | Cao | Giữ expertise thực vật nhưng không overclaim y tế. | Cấm viết anh chữa mọi bệnh hoặc có authority bác sĩ. | `wiki/synthesis/headcanon-fanon-policy.md` | Anh là botanist/ranger, không phải doctor. |
| Tighnari rude-only, cộc cằn với mọi người | Trung bình | Viết anh thẳng thắn nhưng thể hiện sự kiên nhẫn và quan tâm. | Cấm giảm anh thành rude character only. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines thể hiện sự kiên nhẫn rõ ràng. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Overclaim medical/scientific authority | High | Không có nguồn xác nhận doctor status, chỉ botanist/ranger. | Giữ ở mức botanical expert và Forest Ranger, không phải bác sĩ. | `entities/character_intelligence/Tighnari.md` |
| Giảm thành rude/snarky only | Medium | Bỏ qua sự kiên nhẫn, mentoring, và quan tâm thực sự. | Viết anh thẳng thắn VÀ kiên nhẫn, quan tâm đến Collei và đồng đội. | `sources/voice_lines/characters/Tighnari.md` |
| Overclaim Withering/Eleazar expertise | Medium | Không có nguồn trực tiếp, dễ thành flawless doctor trope. | Giữ Withering knowledge ở mức ranger practical, không phải researcher lead. | `entities/character_intelligence/Tighnari.md` |

## Voice Guide

- Formality: Trung bình, thẳng thắn nhưng lịch sự.
- Sentence rhythm: Rõ ràng, logic, đôi khi giảng bài ngắn gọn.
- Common tone: Thực tế, kiên nhẫn, đôi khi sarcastic nhẹ.
- Humor style: Dry wit, sarcasm nhẹ nhàng, giáo dục qua humor.
- Emotional restraint: Trung bình-cao, bộc lộ qua hành động hơn lời nói.
- Vocabulary habits: Thuật ngữ thực vật, thiên nhiên, kiến thức thực tiễn.
- What they avoid saying: Lời ngọt ngào sáo rỗng, hứa hẹn không thực tế.
- Should avoid: Nói năng quá harsh liên tục hoặc quá emotional/sappy.
- Source: `sources/voice_lines/characters/Tighnari.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Collei | Học trò / Người được bảo hộ | CANON | `sources/voice_lines/characters/Tighnari.md` ("Về Collei...") | primary_source_found | Kiên nhẫn hướng dẫn và bảo vệ Collei. |
| Cyno | Bạn thân | CANON | `sources/voice_lines/characters/Tighnari.md` ("Về Cyno...") | primary_source_found | Tôn trọng sự cân bằng của Cyno, chịu đựng chuyện cười nhạt. |
| Nahida (Kusanali) | Nữ thần đáng kính | CANON | `sources/voice_lines/characters/Tighnari.md` ("Về Kusanali...") | primary_source_found | Tôn trọng nỗ lực bảo vệ của Thảo Thần. |
| Alhaitham | Học giả công bằng | CANON | `sources/voice_lines/characters/Tighnari.md` ("Về Alhaitham...") | primary_source_found | Đánh giá cao sự thực tế. |
| Kaveh | Kiến trúc sư quen biết | CANON | `sources/voice_lines/characters/Tighnari.md` ("Về Kaveh...") | primary_source_found | Hiểu đam mê nhưng thấy quá lý tưởng. |

## Power / Lore Constraints

- Known abilities: Dendro Vision, kiến thức thực vật chuyên sâu, kỹ năng ranger
- Limits: Forest Ranger, không phải bác sĩ hay nhà khoa học; giới hạn trong phạm vi rừng Avidya
- Misuse risks: Viết anh chữa mọi bệnh hoặc có authority y tế/khoa học rộng
- Power-scaling warnings: Giữ ở mức ranger expert, không phải researcher lead hay doctor
- Source status: partial_support_only
- Notes: Chi tiết Withering expertise cần character stories.

## Genre Usage Notes

### Canon-compliant
Tuần tra rừng Avidya, hướng dẫn Collei, nghiên cứu thực vật, đối phó Withering.

### AU
Khai thác bối cảnh nơi rừng Avidya thay đổi hoặc Withering lan rộng không kiểm soát.

### Romance
Thể hiện tình cảm qua hành động chăm sóc thực tế, không qua lời ngọt ngào.

### Mystery / Detective
Kiến thức thực vật giúp phân tích manh mối từ thiên nhiên.

### Political / Faction
Vị trí Forest Ranger trong quan hệ với Giáo Viện — độc lập nhưng không đối đầu.

### Action / Battle
Chiến đấu với Dendro Vision trong rừng, phong cách ranger tactical.

### Comedy / Slice of life
Tương tác với Collei (mentor), chịu đựng chuyện cười Cyno, giảng bài cho người qua đường.

### Dark fantasy
Withering lan rộng đe dọa rừng, đối mặt mất mát thiên nhiên.

### OC-insert
OC là ranger mới hoặc học giả đến rừng Avidya để nghiên cứu.

### Livestream / Heavenscreen / Reaction
Bình luận thực tế, kiến thức thiên nhiên, sarcasm nhẹ.

## Safe Uses

- Viết Tighnari tuần tra rừng và giảng dạy kiến thức thực vật cho Collei.
- Viết anh thẳng thắn nhưng kiên nhẫn khi ai đó hỏi câu hỏi ngớ ngẩn.
- Viết anh tương tác sarcastic nhẹ nhàng với Cyno về chuyện cười.

## Unsafe Uses

- Viết anh là bác sĩ/nhà khoa học toàn năng chữa mọi bệnh Eleazar.
- Viết anh rude-only không có sự kiên nhẫn hay quan tâm.
- Overclaim Withering expertise vượt mức Forest Ranger thực tiễn.

## Sources

- Primary sources: `sources/voice_lines/characters/Tighnari.md`
- Indirect sources: `entities/character_intelligence/Tighnari.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Nguồn gốc bộ tộc chi tiết, medical authority, Withering research role
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories được ingest.
- upgrade_conditions: Ingest character stories + botanical provenance = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
