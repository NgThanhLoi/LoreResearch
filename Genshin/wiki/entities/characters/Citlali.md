---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-22
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "natlan", "cryo"]
related_pages: ["./Ororon.md", "./Mualani.md", "./Xilonen.md", "./Mavuika.md", "./Kinich.md", "./Iansan.md", "./Chasca.md"]
---

# Citlali

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 18 — Natlan Character Foundation Batch (patched 18.1) |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Citlali.md` |
| indirect_sources | `entities/character_intelligence/Citlali.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Chi tiết Thơ Hoàn Hồn (Ode of Resurrection) chỉ partial_support; nội bộ Masters of Night-Wind cần thêm nguồn |

## Summary

Citlali là pháp sư / nhà tiên tri ("Chủ Nhân Gió Đêm" — Masters of Night-Wind) tại Natlan, sở hữu Vision Cryo. Bà là một trưởng lão có "vai vế" cao nhưng không phô trương, đọc tiểu thuyết nhẹ nhàng từ Yae Publishing House, uống rượu, và mang bề ngoài tự tin che giấu tính cách thực sự nhút nhát / thận trọng. Citlali biết "nghi thức xuất hồn" (soul departure ritual) nhưng nó không ổn định. Bà đề cập ngắn gọn đến Phlogiston và Thơ Hoàn Hồn trong ngữ cảnh cái chết. Truyền thống Masters of Night-Wind bao gồm việc các sư phụ đặt bẫy cho đệ tử.

## Source Coverage Notes

### identity

Đầy đủ — voice line tự giới thiệu xác nhận tên, tổ chức, vai trò pháp sư / tiên tri.

### personality

Đầy đủ — voice line cho thấy sự pha trộn giữa trưởng lão tự tin bên ngoài và nhút nhát / thận trọng bên trong, tsundere-like deflection.

### relationships

Đầy đủ — voice line đề cập Ororon, Mualani, Xilonen, Mavuika, Kinich, Iansan, Traveler.

### powers

Một phần — Vision Cryo được ám chỉ; nghi thức xuất hồn được đề cập nhưng chi tiết hạn chế; Phlogiston và Thơ Hoàn Hồn chỉ partial_support.

### backstory

Hạn chế — voice line đề cập tuổi tác, nhiều thế hệ hiểu lầm bà, truyền thống Masters of Night-Wind; chi tiết tiểu sử cụ thể thiếu.

### faction role

Một phần — Masters of Night-Wind được đề cập; chi tiết vai trò cụ thể trong tổ chức cần thêm nguồn.

### major lore claims

Thiếu — Thơ Hoàn Hồn (Ode of Resurrection) chỉ được đề cập ngắn; chính trị nội bộ Masters of Night-Wind (sư phụ đặt bẫy đệ tử) chỉ partial_support.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Citlali | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Affiliation | Chủ Nhân Gió Đêm (Masters of Night-Wind) | CANON | `sources/voice_lines/characters/Citlali.md` ("Citlali từ Chủ Nhân Gió Đêm") | primary_source_found |
| Role | Pháp sư / Nhà tiên tri | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Vision | Cryo (ám chỉ) | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Seniority | Trưởng lão, "vai vế" cao | CANON | `sources/voice_lines/characters/Citlali.md` ("bà già ở độ tuổi này") | primary_source_found |
| Known ritual | Nghi thức xuất hồn (soul departure ritual) | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |

## Canon Personality

* [CHAR-CITLALI-TRAIT-001] Bề ngoài tự tin, có phần kiêu ngạo — nhưng bên trong nhút nhát và thận trọng
  * label: CANON
  * source: `sources/voice_lines/characters/Citlali.md` (tổng hợp voice line)
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CITLALI-TRAIT-002] Sử dụng tsundere-like deflection khi bị khen hoặc khi cảm xúc bị phơi bày
  * label: CANON
  * source: `sources/voice_lines/characters/Citlali.md` (nhiều voice line tương tác)
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CITLALI-TRAIT-003] Pha trộn giọng trưởng lão casual với khoảnh khắc dễ bị tổn thương về cảm xúc
  * label: CANON
  * source: `sources/voice_lines/characters/Citlali.md` (giọng điệu thay đổi tùy ngữ cảnh)
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CITLALI-TRAIT-004] Thích đọc tiểu thuyết nhẹ nhàng (light novel), đặc biệt "Chiến Ký Huyền Ảo" từ Yae Publishing House
  * label: CANON
  * source: `sources/voice_lines/characters/Citlali.md` ("Sở thích")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CITLALI-TRAIT-005] Uống rượu — "Dâng hiến tháng năm cho ly rượu"
  * label: CANON
  * source: `sources/voice_lines/characters/Citlali.md` ("Sở thích")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CITLALI-TRAIT-006] Không phô trương vai vế dù có thâm niên cao — nhiều thế hệ hiểu lầm bà
  * label: CANON
  * source: `sources/voice_lines/characters/Citlali.md` ("bà già ở độ tuổi này")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-CITLALI-IMPLIED-001] Cô đơn hoặc bị cô lập ở mức nào đó — ít người thực sự hiểu con người thật của bà
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Citlali.md` (nhắc đến việc nhiều thế hệ hiểu lầm)
  * source_status: primary_source_found
  * confidence: medium

* [CHAR-CITLALI-IMPLIED-002] Chỉ thể hiện con người thật với một số ít người đáng tin cậy (Traveler)
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Citlali.md` (voice line về Traveler)
  * source_status: primary_source_found
  * confidence: medium

* [CHAR-CITLALI-IMPLIED-003] Nghi thức xuất hồn có rủi ro hoặc hậu quả chưa được hiểu đầy đủ
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Citlali.md` (nhắc đến tính "không ổn định")
  * source_status: primary_source_found
  * confidence: medium

* [CHAR-CITLALI-IMPLIED-004] Truyền thống Masters of Night-Wind có yếu tố khắc nghiệt — sư phụ đặt bẫy cho đệ tử
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Citlali.md` (voice line về truyền thống)
  * source_status: primary_source_found
  * confidence: medium
  * note: Chi tiết cụ thể về cơ chế bẫy và mục đích chưa đầy đủ

## Theory / Interpretation

* [CHAR-CITLALI-THEORY-001] Việc đọc light novel và uống rượu có thể là cơ chế đối phó với cô đơn và gánh nặng tuổi tác / trách nhiệm
  * label: THEORY
  * source: diễn giải từ voice line
  * source_status: interpretation
  * confidence: low

* [CHAR-CITLALI-THEORY-002] "Nghi thức xuất hồn" có thể liên quan đến việc đưa linh hồn người chết đến Night Kingdom
  * label: THEORY
  * source: diễn giải từ lore Natlan + voice line ngắn
  * source_status: interpretation
  * confidence: low
  * note: High-risk Natlan lore — Night Kingdom mechanics chưa được xác nhận đầy đủ

## Headcanon / Fanon

* [CHAR-CITLALI-FANON-001] Thường được fan mô tả như "drunk granny" hoặc "tsundere elder" — KHÔNG phải đặc điểm tính cách toàn diện
  * label: HEADCANON
  * source: cộng đồng fan
  * source_status: fanon_only
  * confidence: none
  * warning: Giảm Citlali thành "bà già say rượu" hoặc "tsundere" bỏ qua chiều sâu cảm xúc và vai trò pháp sư

* [CHAR-CITLALI-FANON-002] Fan thường phóng đại khả năng tiên tri của Citlali thành "nhìn thấy mọi thứ"
  * label: HEADCANON
  * source: cộng đồng fan
  * source_status: fanon_only
  * confidence: none
  * warning: Voice line không xác nhận độ chính xác tuyệt đối của khả năng tiên tri

## OOC Risk Register

| Risk | Severity | Guidance |
|---|---|---|
| Giảm thành "drunk granny" một chiều | HIGH | Guardrail: Citlali là pháp sư có chiều sâu, rượu chỉ là một khía cạnh |
| Giảm thành "tsundere elder" stereotype | HIGH | Tsundere deflection chỉ là một lớp bảo vệ, không phải toàn bộ tính cách |
| Phóng đại khả năng tiên tri | HIGH | Không mô tả Citlali như người biết mọi thứ — khả năng có giới hạn |
| Bịa chi tiết Thơ Hoàn Hồn (Ode of Resurrection) | HIGH | Voice line chỉ đề cập ngắn — không bịa cơ chế chi tiết |
| Bịa chi tiết chính trị nội bộ Masters of Night-Wind | MEDIUM | Truyền thống sư phụ–đệ tử chỉ partial_support |
| Cho Citlali phô trương vai vế | MEDIUM | Canon nói rõ bà KHÔNG phô trương thâm niên |

## Voice Guide

| Dimension | Guidance |
|---|---|
| Tone | Pha trộn: casual trưởng lão + khoảnh khắc dễ bị tổn thương; tsundere deflection khi bị chạm cảm xúc |
| Vocabulary | Đôi khi cổ xưa / trang trọng (pháp sư), nhưng thường casual; đề cập light novel và rượu tự nhiên |
| Sentence style | Có thể dài khi giải thích lore / nghi thức; ngắn gọn và deflect khi bị hỏi về bản thân |
| Emotional range | Tự tin khi nói về kiến thức; lảng tránh hoặc đỏ mặt khi bị khen / quan tâm |
| Key phrases | "bà già ở độ tuổi này", "Dâng hiến tháng năm cho ly rượu", nhắc đến "Chiến Ký Huyền Ảo" |

## Relationships

| Character | Relationship | Label | Source | Source status |
|---|---|---|---|---|
| Ororon | Phức tạp ("Hừm") | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Mualani | Nợ nần phức tạp | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Xilonen | Thoải mái | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Mavuika | Nhận ra sự phô trương | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Kinich | Đáng tin cậy | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Ajaw | Phiền phức (qua Kinich) | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Iansan | Không biết nhiều | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |
| Traveler | Thể hiện con người thật | CANON | `sources/voice_lines/characters/Citlali.md` | primary_source_found |

## Power / Lore Constraints

| Constraint | Detail | Source status |
|---|---|---|
| Vision Cryo | Ám chỉ trong voice line | primary_source_found |
| Nghi thức xuất hồn | Biết nhưng không ổn định | primary_source_found |
| Tiên tri / bói toán | Vai trò pháp sư — độ chính xác có giới hạn | primary_source_found |
| Phlogiston | Đề cập nhưng không chi tiết | partial_support_only |
| Thơ Hoàn Hồn (Ode of Resurrection) | Đề cập ngắn trong ngữ cảnh cái chết | partial_support_only |
| Truyền thống Masters of Night-Wind | Sư phụ đặt bẫy cho đệ tử | partial_support_only |
| Vai vế cao | Trưởng lão nhưng không phô trương | primary_source_found |

## Genre Usage Notes

| Genre | Fit | Notes |
|---|---|---|
| Mystery / Supernatural | Cao | Pháp sư + nghi thức xuất hồn + tiên tri = hook tốt |
| Drama tâm lý | Cao | Xung đột giữa bề ngoài tự tin và bên trong nhút nhát |
| Comedy | Cao | Tsundere deflection + đọc light novel + uống rượu = tình huống hài |
| Slice of life | Cao | Thói quen đọc sách, uống rượu, tương tác với thế hệ trẻ |
| Political intrigue | Trung bình | Vai vế cao nhưng không tham chính — cần cẩn thận |
| Action | Trung bình | Vision Cryo + pháp sư nhưng không phải chiến binh tuyến đầu |

## Safe Uses

* Mô tả Citlali như pháp sư / nhà tiên tri của Masters of Night-Wind
* Khám phá sự tương phản giữa bề ngoài tự tin và bên trong nhút nhát
* Đề cập thói quen đọc light novel và uống rượu
* Sử dụng tsundere deflection trong dialogue
* Mô tả mối quan hệ phức tạp với Ororon
* Đề cập nghi thức xuất hồn như khả năng không ổn định
* Cho Citlali thể hiện con người thật chỉ với người tin cậy
* Sử dụng giọng trưởng lão casual pha trộn khoảnh khắc dễ bị tổn thương

## Unsafe Uses

* Giảm Citlali thành "bà già say rượu" hoặc "tsundere comic relief"
* Phóng đại khả năng tiên tri thành toàn tri — bà không biết mọi thứ
* Bịa chi tiết cụ thể về cơ chế Thơ Hoàn Hồn (Ode of Resurrection)
* Bịa chi tiết chính trị nội bộ Masters of Night-Wind vượt quá voice line
* Cho Citlali phô trương vai vế — canon nói rõ bà KHÔNG làm vậy
* Mô tả Citlali như chiến binh mạnh mẽ — bà là pháp sư / trí giả
* Bịa chi tiết về Night Kingdom mechanics không có trong voice line

## Sources

| Source | Type | Status |
|---|---|---|
| `sources/voice_lines/characters/Citlali.md` | primary | found |
| `entities/character_intelligence/Citlali.md` | indirect | found |
| `sources/character_stories/Citlali/` | primary | missing |
| `sources/character_stories/` | primary | not_in_workspace |

## Maintenance Notes

* Audit lần cuối: Pass 18 (patched 18.1) — 2026-06-22
* Cần bổ sung khi `sources/character_stories/` có sẵn
* Chi tiết Thơ Hoàn Hồn cần nâng cấp khi có thêm voice line hoặc quest transcript
* Chính trị nội bộ Masters of Night-Wind cần tìm thêm nguồn để nâng từ partial_support
* Quan hệ Ororon–Citlali cần xác nhận thêm từ các nguồn khác
* Khả năng tiên tri cần xác định rõ giới hạn khi có thêm thông tin
