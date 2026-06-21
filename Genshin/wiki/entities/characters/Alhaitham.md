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
related_pages: ["./Kaveh.md", "./Nahida.md"]
---

# Alhaitham

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 16 — Sumeru Character Foundation Batch |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Alhaitham.md` |
| indirect_sources | `entities/character_intelligence/Alhaitham.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn sơ cấp câu chuyện nhân vật để đối chiếu chi tiết về vai trò Quyền Đại Hiền Giả và chiến lược Archon Quest Sumeru. |

## Summary

Alhaitham là Thư Ký (Scribe) của Giáo Viện Sumeru, sở hữu Thảo Vision. Anh là người có tư duy logic sắc bén, coi trọng sự thật và lý tính, thích đọc sách phức tạp và sống độc lập. Anh ở chung nhà với Kaveh do hoàn cảnh và có mối quan hệ phức tạp với nhiều học giả tại Giáo Viện. Anh không tìm kiếm sự nổi bật hay quyền lực dẫu đã từng giữ vai trò quan trọng trong sự kiện giải cứu Sumeru.

## Source Coverage Notes

### identity

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tên, vùng, phe phái, vai trò Thư Ký Giáo Viện.

### personality

- source_status: primary_source_found
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận tính cách logic, độc lập, thích đọc sách, ghét sự giả tạo.

### relationships

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận mối quan hệ với Kaveh, Kusanali, Tighnari, Cyno, Nilou, Dehya, Lisa, Sethos. Chi tiết sâu hơn cần character stories.

### powers

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận Dendro Vision. Chi tiết kỹ thuật chiến đấu cần nguồn bổ sung.

### backstory

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Không có character stories trong workspace. Không import từ memory.

### faction role

- source_status: partial_support_only
- source_ids:
- evidence_ids:
- notes: Voice lines xác nhận vai trò Scribe. Chi tiết Quyền Đại Hiền Giả cần nguồn sơ cấp bổ sung.

### major lore claims

- source_status: source_missing
- source_ids:
- evidence_ids:
- notes: Chi tiết chiến lược Archon Quest Sumeru và vai trò giải cứu Nahida cần character stories hoặc archon quest sources.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Alhaitham | CANON | `sources/voice_lines/characters/Alhaitham.md` | primary_source_found |
| Region | Sumeru | CANON | `sources/voice_lines/characters/Alhaitham.md` | primary_source_found |
| Faction | Giáo Viện Sumeru (Scribe) | CANON | `sources/voice_lines/characters/Alhaitham.md` | primary_source_found |
| Role | Thư Ký Giáo Viện (Scribe) | CANON | `sources/voice_lines/characters/Alhaitham.md` | primary_source_found |
| Vision / Power | Thảo (Dendro) | CANON | `sources/voice_lines/characters/Alhaitham.md` | primary_source_found |

## Canon Personality

* [CHAR-ALHAITHAM-TRAIT-001] Alhaitham coi trọng sự thật và lý tính hơn tất cả, thường bỏ qua ngoại giao xã hội nếu thấy không cần thiết.
  * label: CANON
  * source: `sources/voice_lines/characters/Alhaitham.md` ("Nói chuyện phiếm")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-ALHAITHAM-TRAIT-002] Alhaitham thích đọc sách phức tạp và quan sát phản ứng bối rối của người khác trước các vấn đề khó.
  * label: CANON
  * source: `sources/voice_lines/characters/Alhaitham.md` ("Sở thích")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-ALHAITHAM-TRAIT-003] Alhaitham sống độc lập, không tìm kiếm sự công nhận hay quyền lực, coi công việc Thư Ký là đơn giản và gọn gàng.
  * label: CANON
  * source: `sources/voice_lines/characters/Alhaitham.md` ("Nói chuyện phiếm - Công việc")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-ALHAITHAM-IMPLIED-001] Alhaitham có mức độ quan tâm nhất định đến Kaveh dẫu ngoài mặt tỏ ra thờ ơ, thể hiện qua việc chấp nhận ở chung và nhận xét tính cách Kaveh một cách chi tiết.
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Alhaitham.md` ("Về Kaveh...")
  * source_status: primary_source_found
  * confidence: medium
  * notes: Voice lines cho thấy anh hiểu rõ Kaveh nhưng không trực tiếp nói rõ lý do quan tâm.

## Theory / Interpretation

* [CHAR-ALHAITHAM-THEORY-001] Alhaitham có thể đã từng giữ vai trò Quyền Đại Hiền Giả (Acting Grand Sage) trong sự kiện Sumeru Archon Quest.
  * label: THEORY
  * source: `entities/character_intelligence/Alhaitham.md`
  * source_status: indirect_source_only
  * confidence: low
  * why_interpretation: Không có nguồn sơ cấp trong workspace xác nhận trực tiếp vai trò này.
  * banned_overuse: Không viết anh như lãnh đạo chính trị toàn quyền của Giáo Viện.

## Headcanon / Fanon

| Headcanon / Fanon | Risk | Allowed use | Banned use | Source / basis | Notes |
|---|---|---|---|---|---|
| Alhaitham là thiên tài toàn năng giải quyết mọi vấn đề | Cao | Dùng tư duy sắc bén trong phạm vi chuyên môn cụ thể. | Cấm viết anh omniscient hoặc giải mọi bài toán tức thì. | `wiki/synthesis/headcanon-fanon-policy.md` | Anh thông minh nhưng có giới hạn và không quan tâm mọi thứ. |
| Alhaitham và Kaveh là cặp đôi lãng mạn canon | Trung bình | Có thể viết romance trong AU với tag rõ ràng. | Cấm viết họ là couple xác nhận trong bối cảnh canon-compliant. | `wiki/synthesis/headcanon-fanon-policy.md` | Voice lines chỉ xác nhận roommate và mối quan hệ phức tạp. |

## OOC Risk Register

| OOC Risk | Severity | Why it is risky | Safe handling | Source / basis |
|---|---|---|---|---|
| Alhaitham omniscient genius giải mọi vấn đề | High | Phá vỡ plot tension, biến anh thành deus ex machina. | Viết anh giỏi logic nhưng có giới hạn kiến thức và không quan tâm mọi thứ. | `entities/character_intelligence/Alhaitham.md` |
| Alhaitham emotionless robot không có cảm xúc | Medium | Đơn giản hóa nhân vật, bỏ qua sự tinh tế của voice lines. | Viết anh kiềm chế cảm xúc nhưng vẫn có quan điểm và sở thích rõ ràng. | `sources/voice_lines/characters/Alhaitham.md` |
| Quyền Đại Hiền Giả = lãnh đạo chính trị toàn quyền | High | Overclaim quyền lực không có nguồn sơ cấp hỗ trợ trực tiếp. | Giữ vai trò Scribe là chính, chỉ đề cập Acting Grand Sage trong Theory. | `entities/character_intelligence/Alhaitham.md` |

## Voice Guide

- Formality: Trung bình-cao, lịch sự nhưng thẳng thắn.
- Sentence rhythm: Ngắn gọn, chính xác, logic rõ ràng.
- Common tone: Bình thản, khách quan, đôi khi mỉa mai nhẹ.
- Humor style: Châm biếm nhẹ nhàng, quan sát từ xa.
- Emotional restraint: Rất cao, hiếm khi bộc lộ cảm xúc mạnh.
- Vocabulary habits: Dùng từ ngữ chính xác, thuật ngữ học thuật khi cần.
- What they avoid saying: Lời nịnh bợ, cam kết cảm xúc, lời hứa xã giao rỗng.
- Should avoid: Nói năng hoa mỹ cảm tính, tuyên bố hùng hồn về lý tưởng, tỏ ra nhiệt tình quá mức.
- Source: `sources/voice_lines/characters/Alhaitham.md`

## Relationships

| Related character | Relationship | Label | Source | Source status | Notes |
|---|---|---|---|---|---|
| Kaveh | Bạn cùng nhà / Mối quan hệ phức tạp | CANON | `sources/voice_lines/characters/Alhaitham.md` ("Về Kaveh...") | primary_source_found | Nhận xét Kaveh quá nhạy cảm và lý tưởng hóa, nhưng chấp nhận ở chung. |
| Nahida (Kusanali) | Vị thần đáng tôn trọng | CANON | `sources/voice_lines/characters/Alhaitham.md` ("Về Kusanali...") | primary_source_found | Khuyên không nên sùng bái thần quá mức nhưng tôn trọng cô. |
| Tighnari | Học giả công bằng | CANON | `sources/voice_lines/characters/Alhaitham.md` ("Về Tighnari...") | primary_source_found | Đánh giá cao sự công bằng và thực tế của Tighnari. |
| Cyno | Người hiểu lý lẽ | CANON | `sources/voice_lines/characters/Alhaitham.md` ("Về Cyno...") | primary_source_found | Coi Cyno là người thấu hiểu logic. |

## Power / Lore Constraints

- Known abilities: Dendro Vision, kỹ năng chiến đấu sử dụng Quang Tâm (Chiếu Ánh)
- Limits: Không có nguồn sơ cấp xác nhận power ceiling; không phải thần hay siêu nhân
- Misuse risks: Viết anh như chiến binh vô địch hoặc dùng Dendro giải quyết mọi vấn đề
- Power-scaling warnings: Giữ sức mạnh ở mức Vision holder thông thường trừ khi có nguồn cụ thể
- Source status: partial_support_only
- Notes: Chi tiết chiến đấu cần gameplay/story sources bổ sung.

## Genre Usage Notes

### Canon-compliant
Đọc sách tại thư viện, xử lý giấy tờ hành chính, tranh luận logic với đồng nghiệp.

### AU
Khai thác bối cảnh nơi anh phải đối mặt với trách nhiệm lãnh đạo hoặc hệ thống tri thức khác biệt.

### Romance
Thể hiện tình cảm gián tiếp qua hành động thực tế, không qua lời ngọt ngào.

### Mystery / Detective
Sử dụng logic sắc bén để phân tích chứng cứ và tìm ra điểm bất hợp lý.

### Political / Faction
Vai trò Scribe trong bộ máy Giáo Viện, nhưng không overclaim thành lãnh đạo tối cao.

### Action / Battle
Chiến đấu hiệu quả với Dendro Vision nhưng không bất khả chiến bại.

### Comedy / Slice of life
Tương tác với Kaveh, phản ứng bình thản trước sự hỗn loạn xung quanh.

### Dark fantasy
Đối mặt với hậu quả của tri thức cấm hoặc sự thối nát trong hệ thống học viện.

### OC-insert
OC là học giả mới đến gặp Scribe để nộp đơn hoặc tranh luận học thuật.

### Livestream / Heavenscreen / Reaction
Bình luận điềm tĩnh, phân tích logic về những gì xảy ra trên màn hình.

## Safe Uses

- Viết Alhaitham đọc sách bình thản và đưa ra nhận xét logic sắc bén.
- Viết anh tranh luận học thuật với Kaveh về kiến trúc hoặc triết học.
- Viết anh xử lý công việc Scribe một cách hiệu quả và không hào nhoáng.

## Unsafe Uses

- Viết anh là thiên tài toàn năng giải quyết mọi vấn đề Sumeru tức thì.
- Viết anh tuyên bố quyền lực chính trị tối cao với tư cách Đại Hiền Giả mà không có nguồn.
- Viết anh hoàn toàn vô cảm, không có bất kỳ sở thích hay quan điểm cá nhân nào.

## Sources

- Primary sources: `sources/voice_lines/characters/Alhaitham.md`
- Indirect sources: `entities/character_intelligence/Alhaitham.md`
- Missing sources: `sources/character_stories/`
- Source gaps: Backstory chi tiết, vai trò Quyền Đại Hiền Giả, chiến lược Archon Quest
- Notes: Không sử dụng character_intelligence làm nguồn sơ cấp.

## Maintenance Notes

- last_reviewed_by: Pass 16
- next_review_needed: Khi character stories hoặc archon quest sources được ingest.
- upgrade_conditions: Ingest character stories + claim mapping = có thể nâng lên Level 3/4.
- do_not_upgrade_until: Character story provenance pass hoàn thành.
