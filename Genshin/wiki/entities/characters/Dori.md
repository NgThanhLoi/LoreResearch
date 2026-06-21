---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-21
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "sumeru", "lôi"]
related_pages: ["./Nahida.md"]
---

# Dori

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Dori.md` |
| indirect_sources | `entities/character_intelligence/Dori.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để xác minh chi tiết mạng lưới thương mại và vai trò kinh tế Sumeru. |

## Summary

Dori là thương nhân giàu có tại Sumeru, sở hữu Lôi Vision. Cô nổi tiếng với khả năng buôn bán tài tình, yêu Mora (tiền) hơn tất cả, và có mạng lưới thương mại rộng khắp. Cô có tính cách lanh lợi, toan tính, nhưng không hoàn toàn xấu — sẵn sàng giúp đỡ nếu có lợi nhuận hoặc khi thực sự quan tâm.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, vai trò thương nhân, Electro Vision.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách toan tính, yêu tiền, lanh lợi, sales pitch liên tục.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tương tác với nhiều nhân vật Sumeru.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Electro Vision. Chi tiết chiến đấu cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories. Lịch sử mạng lưới thương mại cần nguồn sơ cấp.

### faction role

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò thương nhân độc lập có mạng lưới rộng.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Chi tiết kinh tế Sumeru và mạng lưới thông tin cần character stories.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Dori | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found |
| Region | Sumeru | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found |
| Faction | Thương nhân độc lập | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found |
| Role | Thương nhân / Nhà buôn giàu có | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found |
| Vision / Power | Lôi (Electro) | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found |

## Canon Personality

* [CHAR-DORI-TRAIT-001] Dori yêu Mora hơn tất cả, mọi hành động và suy nghĩ đều xoay quanh lợi nhuận và kinh doanh.
  * label: CANON
  * source: `sources/voice_lines/characters/Dori.md` ("Nói chuyện phiếm", "Sở thích")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-DORI-TRAIT-002] Dori có khả năng bán hàng tài tình, thường xuyên mời chào sản phẩm và tìm kiếm cơ hội kinh doanh trong mọi tình huống.
  * label: CANON
  * source: `sources/voice_lines/characters/Dori.md` ("Nói chuyện phiếm - Buôn bán")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-DORI-TRAIT-003] Dori lanh lợi, toan tính, nhưng không hoàn toàn vô đạo đức — có những lúc thể hiện sự quan tâm thực sự dẫu luôn gắn với điều kiện.
  * label: CANON
  * source: `sources/voice_lines/characters/Dori.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-DORI-IMPLIED-001] Dori có mạng lưới thông tin và thương mại rộng khắp Sumeru, biết nhiều bí mật và tin tức.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Dori.md` ("Khám phá bản thân")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines ngụ ý mạng lưới rộng nhưng không mô tả chi tiết quy mô cụ thể.

## Theory / Interpretation

* [CHAR-DORI-THEORY-001] Dori có thể có vai trò information broker hoặc trung gian quyền lực kinh tế vượt hơn thương nhân bình thường.
  * label: THEORY
  * source: `entities/character_intelligence/Dori.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp xác nhận quy mô quyền lực kinh tế cụ thể.
  * banned_overuse: Không viết cô điều khiển kinh tế toàn Sumeru hoặc là trùm thông tin ngầm.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Dori chỉ là gag character tham tiền | Trung bình | Dùng yếu tố hài nhưng thể hiện sự lanh lợi và chiều sâu. | Cấm giảm cô thành greed gag one-note. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines thể hiện sự toan tính thông minh. |
| Dori là trùm thông tin ngầm toàn Sumeru | Cao | Chỉ dùng trong AU. | Cấm viết cô kiểm soát kinh tế/thông tin toàn Sumeru trong canon. | `wiki/synthesis/headcanon-fanon-policy.md` | Overclaim quyền lực không nguồn. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Giảm thành greed gag one-note | Medium | Bỏ qua sự lanh lợi, toan tính thông minh, và moments quan tâm. | Viết cô yêu tiền NHƯNG cũng thông minh và có chiều sâu quan hệ. | `sources/voice_lines/characters/Dori.md` |
| Overclaim information-broker authority | High | Không có nguồn xác nhận quy mô quyền lực. | Đề cập mạng lưới thương mại nhưng không hardcode trùm ngầm. | `entities/character_intelligence/Dori.md` |

## Voice Guide

- Formality: Thấp-trung bình, thân thiện kiểu bán hàng.
- Sentence rhythm: Nhanh, hào hứng, liên tục mời chào.
- Common tone: Lanh lợi, hào hứng khi nói về tiền, toan tính.
- Humor style: Toan tính hài hước, biến mọi thứ thành cơ hội kinh doanh.
- Emotional restraint: Thấp khi nói về Mora, trung bình với cảm xúc khác.
- Vocabulary habits: Từ ngữ kinh doanh, giá cả, deal, lợi nhuận.
- What they avoid saying: Miễn phí, cho không, từ thiện vô điều kiện.
- Should avoid: Nói năng quá nghiêm túc triết lý hoặc quá cảm tính sâu sắc liên tục.
- Source: `sources/voice_lines/characters/Dori.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Nhà Lữ Hành | Khách hàng tiềm năng / Đối tác | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found | Luôn tìm cách bán hàng cho Lữ Khách. |
| Tighnari | Khách hàng khó tính | CANON | `sources/voice_lines/characters/Dori.md` ("Về Tighnari...") | primary_source_found | Tighnari không dễ bị thuyết phục. |
| Collei | Người biết ơn | CANON | `sources/voice_lines/characters/Dori.md` | primary_source_found | Collei biết ơn sự giúp đỡ từ Dori. |
| Nahida (Kusanali) | Nữ thần | CANON | `sources/voice_lines/characters/Dori.md` ("Về Kusanali...") | primary_source_found | Tôn trọng Thảo Thần. |

## Power / Lore Constraints

- Known abilities: Electro Vision, Jinni companion (Djinn lamp)
- Limits: Thương nhân, không phải chiến binh chuyên nghiệp
- Misuse risks: Viết cô có sức mạnh chiến đấu vượt trội hoặc quyền lực chính trị
- Power-scaling warnings: Giữ ở mức thương nhân có Vision, không phải fighter
- Source status: partial_support_only
- Notes: Jinni companion cần nguồn bổ sung về giới hạn cụ thể.

## Genre Usage Notes

### Canon-compliant
Buôn bán tại chợ, mời chào sản phẩm, đàm phán hợp đồng thương mại.

### AU
Khai thác bối cảnh nơi cô xây dựng đế chế thương mại hoặc thị trường thay đổi.

### Romance
Thể hiện tình cảm gắn với điều kiện hài hước hoặc bất ngờ cho không.

### Mystery / Detective
Vai trò cung cấp thông tin (có giá), trung gian liên lạc giữa các phe.

### Political / Faction
Ảnh hưởng kinh tế nhỏ, không phải quyền lực chính trị lớn.

### Action / Battle
Hỗ trợ bằng Jinni/Vision nhưng không phải frontline fighter.

### Comedy / Slice of life
Sales pitch liên tục, tính toán Mora trong mọi tình huống.

### Dark fantasy
Mặt tối của thương mại — buôn bán vật phẩm nguy hiểm hoặc thông tin chết người.

### OC-insert
OC là khách hàng mới hoặc đối thủ kinh doanh.

### Livestream / Heavenscreen / Reaction
Bình luận dưới góc nhìn cơ hội kinh doanh — "Cái này bán được bao nhiêu?"

## Safe Uses

- Viết Dori mời chào sản phẩm một cách lanh lợi và hài hước.
- Viết cô toan tính lợi nhuận nhưng đôi khi thể hiện sự quan tâm bất ngờ.
- Viết cô cung cấp thông tin hoặc vật phẩm (luôn có giá).

## Unsafe Uses

- Viết cô chỉ là greed gag không có trí tuệ hoặc chiều sâu.
- Viết cô kiểm soát kinh tế hoặc thông tin toàn Sumeru như trùm ngầm.
- Viết cô hoàn toàn vô đạo đức, lừa đảo ác ý không có ranh giới.

## Sources

- Primary sources: `sources/voice_lines/characters/Dori.md`
- Indirect sources: `entities/character_intelligence/Dori.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Mạng lưới thương mại chi tiết, quá khứ, vai trò kinh tế Sumeru
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories được ingest.
- upgrade_conditions: Ingest character stories = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
