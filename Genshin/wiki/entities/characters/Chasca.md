---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-22
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "natlan", "anemo"]
related_pages: ["./Mualani.md", "./Xilonen.md", "./Kinich.md", "./Mavuika.md", "./Kachina.md", "./Citlali.md", "./Iansan.md"]
---

# Chasca

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 18 — Natlan Character Foundation Batch (patched 18.1) |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Chasca.md` |
| indirect_sources | `entities/character_intelligence/Chasca.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Chi tiết Vực Sâu tha hóa chỉ có partial_support; quan hệ Coya–Chasca cần thêm voice line xác nhận |

## Summary

Chasca là thành viên Bộ Lạc Hoa Vũ (Flower-Feather Clan) tại Natlan, đóng vai trò trung gian hòa giải ("trọng tài") trong cộng đồng. Cô được nuôi dưỡng một phần bởi Qucusaur mẹ Coya và gia đình nhận nuôi con người (cha mẹ Chuychu). Chasca sử dụng khẩu súng do Xilonen chế tạo, mang Vision Anemo — nhận được trong cuộc chiến chống Vực Sâu. Cô đã vượt qua sự tha hóa của Vực Sâu ("âm thanh của Vực Sâu") và tiếp tục tuần tra Natlan cùng các kỵ sĩ Qucusaur.

## Source Coverage Notes

### identity

Đầy đủ — voice line tự giới thiệu xác nhận tên, bộ lạc, vai trò trung gian.

### personality

Đầy đủ — voice line mô tả tính cách tự tin, thẳng thắn, quan tâm nhưng khó mở lòng.

### relationships

Đầy đủ — voice line đề cập Mualani, Kachina, Xilonen, Kinich/Ajaw, Mavuika, Citlali, Ifa, Iansan, Chuychu, Coya.

### powers

Một phần — Vision Anemo và súng được xác nhận; chi tiết tha hóa Vực Sâu chỉ partial_support.

### backstory

Một phần — được Qucusaur nuôi dưỡng, gia đình nhận nuôi, "người mất cánh" được đề cập; chi tiết cụ thể về quá trình tha hóa còn thiếu.

### faction role

Đầy đủ — Flower-Feather Clan, vai trò tuần tra và hòa giải.

### major lore claims

Thiếu — "Người mất cánh" (failed flight trials) được đề cập nhưng chưa có nguồn đầy đủ; Abyss corruption chi tiết cần thêm nguồn.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Name | Chasca | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Affiliation | Bộ Lạc Hoa Vũ (Flower-Feather Clan) | CANON | `sources/voice_lines/characters/Chasca.md` ("Muốn gia nhập Chasca") | primary_source_found |
| Role | Trung gian hòa giải / Trọng tài | CANON | `sources/voice_lines/characters/Chasca.md` ("Tôi là Chasca của Hội Hoa Vũ") | primary_source_found |
| Weapon | Súng (do Xilonen chế tạo) | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Vision | Anemo | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Adoptive family | Cha mẹ Chuychu (gia đình nhận nuôi) | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Qucusaur mother | Coya | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |

## Canon Personality

* [CHAR-CHASCA-TRAIT-001] Tự tin và thẳng thắn trong giao tiếp, không vòng vo khi giải quyết xung đột
  * label: CANON
  * source: `sources/voice_lines/characters/Chasca.md` ("Tự giới thiệu")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CHASCA-TRAIT-002] Quan tâm sâu sắc đến người khác nhưng khó thể hiện sự yếu đuối
  * label: CANON
  * source: `sources/voice_lines/characters/Chasca.md` ("Tâm sự")
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CHASCA-TRAIT-003] Sử dụng ngôn ngữ casual, trực tiếp, ấm áp nhưng đề phòng khi nói về cảm xúc
  * label: CANON
  * source: `sources/voice_lines/characters/Chasca.md` (tổng hợp nhiều voice line)
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CHASCA-TRAIT-004] Dùng hình ảnh ẩn dụ liên quan đến chim và saurian khi diễn đạt
  * label: CANON
  * source: `sources/voice_lines/characters/Chasca.md` (các voice line nhắc đến bay, cánh, Qucusaur)
  * source_status: primary_source_found
  * confidence: high

* [CHAR-CHASCA-TRAIT-005] Coi trọng nỗ lực cá nhân — đánh giá cao Kachina vì sự cố gắng
  * label: CANON
  * source: `sources/voice_lines/characters/Chasca.md` ("Về Kachina")
  * source_status: primary_source_found
  * confidence: high

## Strongly Implied Traits

* [CHAR-CHASCA-IMPLIED-001] Mang mặc cảm hoặc tổn thương sâu liên quan đến thời gian bị Vực Sâu tha hóa
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Chasca.md` (nhắc đến "âm thanh của Vực Sâu")
  * source_status: primary_source_found
  * confidence: medium
  * note: Voice line đề cập nhưng không mô tả chi tiết quá trình tha hóa

* [CHAR-CHASCA-IMPLIED-002] Có mối liên kết đặc biệt với Qucusaur vượt trên mức thú cưỡi thông thường — xem Coya là mẹ
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Chasca.md` (voice line về Coya)
  * source_status: primary_source_found
  * confidence: medium

* [CHAR-CHASCA-IMPLIED-003] Cảm thấy trách nhiệm nặng nề với vai trò hòa giải, có xu hướng gánh vác một mình
  * label: STRONGLY IMPLIED
  * source: `sources/voice_lines/characters/Chasca.md` (giọng điệu khi nói về công việc)
  * source_status: primary_source_found
  * confidence: medium

## Theory / Interpretation

* [CHAR-CHASCA-THEORY-001] Vision Anemo có thể liên quan đến khao khát tự do và ước muốn bay — phản ánh nguồn gốc được Qucusaur nuôi dưỡng
  * label: THEORY
  * source: diễn giải từ voice line + lore Natlan
  * source_status: interpretation
  * confidence: low

* [CHAR-CHASCA-THEORY-002] "Người mất cánh" có thể ám chỉ những người thất bại trong nghi thức bay của Flower-Feather Clan và bị mất kết nối với Qucusaur
  * label: THEORY
  * source: voice line đề cập thuật ngữ, chi tiết chưa xác nhận
  * source_status: partial_support_only
  * confidence: low

## Headcanon / Fanon

* [CHAR-CHASCA-FANON-001] Thường được fan mô tả như "cowgirl Natlan" hoặc "edgy gunslinger" — KHÔNG được voice line ủng hộ như đặc điểm tính cách chính
  * label: HEADCANON
  * source: cộng đồng fan
  * source_status: fanon_only
  * confidence: none
  * warning: Giảm nhân vật thành khuôn mẫu "tay súng ngầu" bỏ qua vai trò hòa giải và chiều sâu cảm xúc

## OOC Risk Register

| Risk | Severity | Guidance |
|---|---|---|
| Biến thành "edgy gunslinger" một chiều | HIGH | Guardrail: Chasca là trung gian hòa giải, không phải sát thủ hay lính đánh thuê |
| Bỏ qua vai trò hòa giải / trọng tài | HIGH | Đây là identity cốt lõi — "Tôi là Chasca của Hội Hoa Vũ" |
| Mô tả tha hóa Vực Sâu quá chi tiết | MEDIUM | Chi tiết cụ thể chỉ partial_support — không bịa thêm |
| Phớt lờ mối quan hệ với Coya | MEDIUM | Qucusaur mẹ là phần quan trọng trong backstory |
| Cho Chasca hành động như chỉ huy / phán xét | HIGH | Cô là mediator — hòa giải, không ra lệnh hay phán quyết |

## Voice Guide

| Dimension | Guidance |
|---|---|
| Tone | Casual, trực tiếp, ấm áp — nhưng trở nên dè dặt khi đề cập cảm xúc cá nhân |
| Vocabulary | Đơn giản, không hoa mỹ; dùng ẩn dụ chim/bay/saurian tự nhiên |
| Sentence style | Ngắn gọn, rõ ràng; không nói dài dòng về bản thân |
| Emotional range | Thoải mái khi nói về công việc và người khác; khép lại khi nói về quá khứ hoặc tổn thương |
| Key phrases | "bảo dưỡng súng", nhắc đến "mẹ" (Coya), hình ảnh bay và cánh |

## Relationships

| Character | Relationship | Label | Source | Source status |
|---|---|---|---|---|
| Mualani | Bạn thời thơ ấu / đối thủ | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Kachina | Tôn trọng nỗ lực | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Xilonen | Người chế tạo súng cho Chasca | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Kinich | Mối quan hệ đặc biệt | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Ajaw | Mối quan hệ đặc biệt (qua Kinich) | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Mavuika | So sánh với mặt trời | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Citlali | Nghe nói về quyền hạn | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Ifa | Bác sĩ gia đình | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Iansan | Ngưỡng mộ cách giảng dạy | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Chuychu | Chị gái (gia đình nhận nuôi) | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |
| Coya | Mẹ Qucusaur | CANON | `sources/voice_lines/characters/Chasca.md` | primary_source_found |

## Power / Lore Constraints

| Constraint | Detail | Source status |
|---|---|---|
| Vision Anemo | Nhận trong cuộc chiến chống Vực Sâu | primary_source_found |
| Súng Xilonen | Vũ khí chính, do Xilonen chế tạo, cần bảo dưỡng | primary_source_found |
| Tha hóa Vực Sâu | Đã vượt qua "âm thanh của Vực Sâu" — chi tiết quá trình chỉ partial_support | partial_support_only |
| Qucusaur rider | Có thể cưỡi và chiến đấu cùng Qucusaur | primary_source_found |
| Tuần tra Natlan | Flower-Feather Clan có nhiệm vụ tuần tra | primary_source_found |
| "Người mất cánh" | Thuật ngữ liên quan đến failed flight trials — chi tiết chưa đầy đủ | partial_support_only |

## Genre Usage Notes

| Genre | Fit | Notes |
|---|---|---|
| Action / Adventure | Cao | Súng + Qucusaur + Vision Anemo = combat linh hoạt |
| Drama gia đình | Cao | Xung đột identity giữa Qucusaur và con người, gia đình nhận nuôi |
| Political intrigue | Trung bình | Vai trò hòa giải cho phép tham gia xung đột bộ lạc nhưng không phải chính trị gia |
| Mystery | Trung bình | Quá khứ Vực Sâu có thể là hook cho cốt truyện bí ẩn |
| Romance | Trung bình | Khó mở lòng về cảm xúc = slow burn potential |
| Comedy | Thấp-trung bình | Tính cách thẳng thắn có thể tạo tình huống hài hước |

## Safe Uses

* Mô tả Chasca như trung gian hòa giải của Flower-Feather Clan
* Đề cập mối quan hệ với Coya (Qucusaur mẹ) và gia đình nhận nuôi
* Miêu tả phong cách chiến đấu dùng súng và Vision Anemo
* Khám phá xung đột nội tâm giữa tự tin bên ngoài và khó khăn khi thể hiện yếu đuối
* Sử dụng ẩn dụ chim/bay/saurian trong dialogue
* Đề cập Mualani như bạn thời thơ ấu / đối thủ
* Mô tả vai trò tuần tra Natlan

## Unsafe Uses

* Bịa chi tiết cụ thể về quá trình tha hóa Vực Sâu (chỉ partial_support)
* Giảm Chasca thành "tay súng ngầu" hoặc "cowgirl edgy"
* Cho Chasca hành động như chỉ huy quân sự hoặc thẩm phán (cô là mediator)
* Bịa chi tiết về "Người mất cánh" vượt quá những gì voice line đề cập
* Tạo backstory chi tiết về Coya không có trong voice line
* Mô tả Chasca là người lạnh lùng, vô cảm — voice line cho thấy ấm áp nhưng đề phòng

## Sources

| Source | Type | Status |
|---|---|---|
| `sources/voice_lines/characters/Chasca.md` | primary | found |
| `entities/character_intelligence/Chasca.md` | indirect | found |
| `sources/character_stories/Chasca/` | primary | missing |
| `sources/character_stories/` | primary | not_in_workspace |

## Maintenance Notes

* Audit lần cuối: Pass 18 (patched 18.1) — 2026-06-22
* Cần bổ sung khi `sources/character_stories/` có sẵn
* Chi tiết Vực Sâu tha hóa cần nâng cấp khi có thêm voice line hoặc quest transcript
* Quan hệ Coya–Chasca cần xác nhận thêm từ các nguồn khác
* "Người mất cánh" cần tìm thêm nguồn để nâng từ partial_support
