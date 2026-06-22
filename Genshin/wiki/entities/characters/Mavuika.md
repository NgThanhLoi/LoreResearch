---
wiki_type: entity
entity_type: character
status: active
reliability: mixed
last_audited: 2026-06-22
source_level: mixed
character_level: Level 2
source_policy: source_first
tags: ["character", "natlan", "pyro"]
related_pages: ["./Xilonen.md", "./Capitano.md", "./Citlali.md", "./Mualani.md"]
---

# Mavuika

## Audit Status

| Field | Value |
|---|---|
| audit_level | Level 2 Character Foundation |
| character_level | Level 2 |
| pass | Pass 18 — Natlan Character Foundation Batch (patched 18.1) |
| source_status | mixed |
| primary_sources_found | `sources/voice_lines/characters/Mavuika.md` |
| indirect_sources | `entities/character_intelligence/Mavuika.md` |
| missing_sources | `sources/character_stories/` (không tồn tại trong workspace) |
| unresolved_issues | Thiếu nguồn cho cơ chế Gnosis, cơ chế Lửa Thánh, chi tiết kế hoạch 500 năm, cơ chế Ode of Resurrection, phạm vi thẩm quyền Archon |

## Summary

Mavuika là Hỏa Thần đương nhiệm của Natlan, tự giới thiệu bản thân với phong thái tự tin, ấm áp và có uy quyền nhưng dễ gần. Cô là nhà lãnh đạo của Natlan, người mang trong mình ngọn lửa — theo nghĩa đen, mái tóc của cô là lửa. Cô có mối quan hệ rộng khắp với các nhân vật Natlan, thể hiện sự quan tâm và hiểu biết sâu sắc về từng người. Giọng điệu của cô mang tính kể chuyện, thường xuyên tham chiếu đến lịch sử, truyền thống và trách nhiệm của mình.

## Source Coverage Notes

### identity
Tự giới thiệu: "Hỏa Thần đương nhiệm, Mavuika tôi đây" — CANON trực tiếp từ voice lines. Tên, vùng Natlan, nguyên tố Hỏa (Pyro) đều xác nhận trực tiếp.

### personality
Phong thái tự tin, ấm áp, uy quyền nhưng dễ gần — CANON trực tiếp từ tone và nội dung voice lines. Phong cách kể chuyện, tham chiếu lịch sử.

### relationships
Mối quan hệ với tất cả nhân vật Natlan được đề cập trực tiếp trong voice lines: chị gái Hine, Yumkasaur Hitata, Xilonen (người tạo xe máy), Capitano (tôn trọng như chiến binh), và nhiều nhân vật khác.

### powers
Nguyên tố Hỏa (Pyro) — CANON. Tóc là lửa — CANON ("ngọn lửa vô cùng thân thiện"). Cơ chế thẩm quyền Archon — source_missing.

### backstory
Tham chiếu "năm trăm năm trước" — CANON. Chi tiết kế hoạch — source_missing. Cha dạy về "thanh ngắn nhất" — CANON.

### faction role
Lãnh đạo Natlan — partial_support_only (tự xưng Hỏa Thần, các nguồn chéo hỗ trợ nhưng cơ chế Archon chưa xác nhận).

### major lore claims
Lửa Thánh, Ode of Resurrection, Night Kingdom, Wayob — đều được đề cập ngắn gọn nhưng chi tiết cơ chế đều source_missing.

## Canon Identity

| Field | Value | Label | Source | Source status |
|---|---|---|---|---|
| Tên | Mavuika | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Vùng | Natlan | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Nguyên tố | Hỏa (Pyro) | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Tự xưng | Hỏa Thần đương nhiệm | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Vai trò công khai | Lãnh đạo Natlan | CANON | `sources/voice_lines/characters/Mavuika.md` + cross-refs | partial_support_only |
| Mái tóc | Là lửa thật sự | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Gia đình | Chị gái Hine | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Thú nuôi/Bạn đồng hành | Yumkasaur Hitata | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |
| Phương tiện | Xe máy do Xilonen chế tạo | CANON | `sources/voice_lines/characters/Mavuika.md` | primary_source_found |

## Canon Personality

* [CHAR-MAVUIKA-TRAIT-001] Tự tin và quyết đoán — thể hiện qua cách tự giới thiệu trực tiếp "Hỏa Thần đương nhiệm, Mavuika tôi đây", không vòng vo hay khiêm tốn giả tạo
  * Label: Sự tự tin
  * Source: voice_lines/Mavuika (self-intro)
  * Source status: CANON
  * Confidence: high

* [CHAR-MAVUIKA-TRAIT-002] Ấm áp và dễ gần — dù là Archon, giọng điệu cô mang tính thân thiện, chào đón, không tạo khoảng cách quyền lực
  * Label: Sự ấm áp
  * Source: voice_lines/Mavuika (tone tổng thể)
  * Source status: CANON
  * Confidence: high

* [CHAR-MAVUIKA-TRAIT-003] Uy quyền nhưng không áp đặt — có thẩm quyền tự nhiên, thể hiện qua cách nói về trách nhiệm và lịch sử, không qua mệnh lệnh
  * Label: Uy quyền mềm
  * Source: voice_lines/Mavuika (tone tổng thể)
  * Source status: CANON
  * Confidence: high

* [CHAR-MAVUIKA-TRAIT-004] Phong cách kể chuyện — thường xuyên tham chiếu lịch sử, truyền thống, dùng câu chuyện để truyền đạt ý tưởng
  * Label: Người kể chuyện
  * Source: voice_lines/Mavuika (nhiều dòng tham chiếu lịch sử)
  * Source status: CANON
  * Confidence: high

* [CHAR-MAVUIKA-TRAIT-005] Quan tâm sâu sắc đến từng cá nhân — có nhận xét riêng về tất cả nhân vật Natlan, thể hiện sự hiểu biết và quan tâm
  * Label: Sự quan tâm cá nhân
  * Source: voice_lines/Mavuika (opinions về Natlan characters)
  * Source status: CANON
  * Confidence: high

* [CHAR-MAVUIKA-TRAIT-006] Tôn trọng sức mạnh và tinh thần chiến binh — thể hiện rõ qua cách nói về Capitano
  * Label: Tôn trọng chiến binh
  * Source: voice_lines/Mavuika (Capitano lines)
  * Source status: CANON
  * Confidence: high

## Strongly Implied Traits

* [CHAR-MAVUIKA-IMPLIED-001] Gánh nặng trách nhiệm — cách nói về kế hoạch và "năm trăm năm trước" gợi ý gánh nặng lịch sử lớn, nhưng chi tiết cụ thể chưa rõ
  * Source: voice_lines/Mavuika
  * Source status: partial_support_only
  * Confidence: medium

* [CHAR-MAVUIKA-IMPLIED-002] Triết lý về sự tồn tại — thông điệp trong Lửa Thánh: "Trước khi trở thành lửa, hãy tự hào về sự tồn tại của bản thân" cho thấy triết lý sâu sắc về giá trị cá nhân
  * Source: voice_lines/Mavuika
  * Source status: partial_support_only
  * Confidence: medium

* [CHAR-MAVUIKA-IMPLIED-003] Linh hoạt và thích ứng — đề cập việc điều chỉnh kế hoạch cho Traveler, cho thấy khả năng thích ứng
  * Source: voice_lines/Mavuika
  * Source status: partial_support_only
  * Confidence: medium

## Theory / Interpretation

> ⚠️ Phần này chứa các tuyên bố KHÔNG xác nhận từ nguồn cục bộ. Cần nguồn bổ sung trước khi nâng cấp.

* [CHAR-MAVUIKA-THEORY-001] **Gnosis tồn tại** — Là Hỏa Thần đương nhiệm, theo logic game cô phải sở hữu Pyro Gnosis. Tuy nhiên, KHÔNG có dòng voice line nào xác nhận trực tiếp sự tồn tại của Gnosis. Source status: source_missing.

* [CHAR-MAVUIKA-THEORY-002] **Cơ chế Lửa Thánh (Sacred Flame)** — Cô đề cập Lửa Thánh chứa kiến thức từ các Archon tiền nhiệm và cô để lại một thông điệp. Tuy nhiên, cơ chế hoạt động, cách truy cập, và vai trò cụ thể đều chưa rõ. Source status: source_missing.

* [CHAR-MAVUIKA-THEORY-003] **Cơ chế Ode of Resurrection / Thơ Hoàn Hồn** — Được đề cập trong voice lines của cô và các nhân vật khác, nhưng cơ chế hoạt động, điều kiện kích hoạt, và hiệu ứng cụ thể đều source_missing.

* [CHAR-MAVUIKA-THEORY-004] **Kế hoạch 500 năm** — Cô tham chiếu "năm trăm năm trước" và đề cập việc điều chỉnh kế hoạch, nhưng chi tiết kế hoạch là gì, mục tiêu cụ thể, và các bước thực hiện đều source_missing.

* [CHAR-MAVUIKA-THEORY-005] **Cơ chế chết/phục sinh** — Liên quan đến Ode of Resurrection, nhưng cơ chế cụ thể hoàn toàn source_missing.

* [CHAR-MAVUIKA-THEORY-006] **Night Kingdom / Vương Quốc Dạ Thần** — Được đề cập ngắn gọn, nhưng bản chất, cơ chế hoạt động, và mối liên hệ với Mavuika đều source_missing.

* [CHAR-MAVUIKA-THEORY-007] **Wayob** — Không có thông tin chi tiết từ voice lines. Source status: source_missing.

* [CHAR-MAVUIKA-THEORY-008] **Phạm vi thẩm quyền Archon đầy đủ** — Cô tự xưng Hỏa Thần, nhưng phạm vi cụ thể của thẩm quyền (giới hạn, điều kiện, mối quan hệ với Celestia) đều source_missing.

* [CHAR-MAVUIKA-THEORY-009] **Mối quan hệ với Capitano** — Cô thể hiện sự tôn trọng, nhưng chi tiết về xung đột hay liên minh cụ thể đều source_missing.

* [CHAR-MAVUIKA-THEORY-010] **Tumaini — Tên cổ đại của Traveler** — Cô đề cập "Tumaini" (Hope) là Ancient Name của Traveler, nhưng ý nghĩa sâu hơn và hệ quả cốt truyện đều source_missing.

## Headcanon / Fanon

> ⚠️ Phần này KHÔNG có xác nhận canon. Chỉ dùng cho tham khảo cộng đồng.

* Cộng đồng thường mô tả Mavuika như hình mẫu "chị đại" — mạnh mẽ, bảo vệ, nhưng ẩn chứa nỗi buồn. Đây là diễn giải, không phải canon xác nhận.
* Một số fan cho rằng mái tóc lửa liên quan đến sinh mệnh lực của cô — không có xác nhận.

## OOC Risk Register

| Risk | Description | Severity |
|---|---|---|
| Quá lạnh lùng / xa cách | Mavuika ấm áp và dễ gần, không phải kiểu Archon lạnh lùng bí ẩn | HIGH |
| Mất uy quyền | Cô có uy quyền tự nhiên, không nên viết như nhân vật phụ thuộc hay do dự | HIGH |
| Quá bi kịch | Dù gánh nặng trách nhiệm, cô thể hiện sự lạc quan và quyết tâm, không chìm trong bi kịch | MEDIUM |
| Bỏ qua yếu tố kể chuyện | Phong cách kể chuyện là đặc trưng — thiếu nó sẽ mất voice | MEDIUM |
| Đề cập Gnosis như canon | Gnosis KHÔNG xác nhận trong nguồn cục bộ — đề cập như fact là overclaim | HIGH |
| Overclaim cơ chế Lửa Thánh | Chỉ đề cập ngắn gọn, chi tiết source_missing — không mô tả cơ chế | HIGH |
| Overclaim kế hoạch 500 năm | Tham chiếu tồn tại, chi tiết source_missing — không bịa chi tiết | HIGH |

## Voice Guide

**Tone chính:** Tự tin, ấm áp, uy quyền nhưng dễ gần.

**Đặc điểm ngôn ngữ:**
- Tự giới thiệu trực tiếp, không vòng vo
- Dùng câu chuyện và tham chiếu lịch sử để truyền đạt
- Xen lẫn sự trang nghiêm của Archon với sự thân thiện đời thường
- Nhắc đến người khác với sự quan tâm và hiểu biết cụ thể

**Từ vựng đặc trưng:**
- "Hỏa Thần đương nhiệm, Mavuika tôi đây" (self-intro)
- Tham chiếu "năm trăm năm trước"
- "Lửa Thánh", "Nghi Lễ Hành Hương"
- "Trước khi trở thành lửa, hãy tự hoài về sự tồn tại của bản thân"

**Ví dụ voice đúng:**
> "À, cậu muốn nghe về Lửa Thánh à? Hmm... nơi đó chứa đựng kiến thức từ các vị Hỏa Thần tiền nhiệm. Tôi cũng đã để lại một thông điệp ở đó — 'Trước khi trở thành lửa, hãy tự hoài về sự tồn tại của bản thân.' Cậu thấy thế nào?"

**Ví dụ voice SAI (OOC):**
> ❌ "Ta là Hỏa Thần, quỳ xuống trước ta." (Quá kiêu ngạo, không đúng character)
> ❌ "Tôi không biết gì về kế hoạch đó..." (Quá thụ động, mất uy quyền)

## Relationships

| Character | Relationship | Source | Source status |
|---|---|---|---|
| Hine | Chị gái | voice_lines/Mavuika | CANON |
| Hitata | Yumkasaur đồng hành | voice_lines/Mavuika | CANON |
| Xilonen | Người chế tạo xe máy cho cô | voice_lines/Mavuika | CANON |
| Capitano | Tôn trọng như chiến binh | voice_lines/Mavuika | CANON (sự tôn trọng); source_missing (chi tiết xung đột) |
| Traveler | Tumaini — Ancient Name (Hy Vọng) | voice_lines/Mavuika | partial_support_only (tên CANON; ý nghĩa source_missing) |
| Mualani | Nhân vật Natlan, có ý kiến riêng | voice_lines/Mavuika | CANON |
| Kachina | Nhân vật Natlan, có ý kiến riêng | voice_lines/Mavuika | CANON |
| Kinich | Nhân vật Natlan, có ý kiến riêng | voice_lines/Mavuika | CANON |
| Citlali | Nhân vật Natlan, có ý kiến riêng | voice_lines/Mavuika | CANON |
| Chasca | Nhân vật Natlan, có ý kiến riêng | voice_lines/Mavuika | CANON |
| Iansan | Nhân vật Natlan, có ý kiến riêng | voice_lines/Mavuika | CANON |

## Power / Lore Constraints

| Constraint | Description | Source status |
|---|---|---|
| Nguyên tố Hỏa (Pyro) | Xác nhận từ voice lines | CANON |
| Tóc là lửa | "Ngọn lửa vô cùng thân thiện" — không gây hại cho đồng minh | CANON |
| Thẩm quyền Archon | Tự xưng Hỏa Thần — phạm vi và giới hạn chưa rõ | partial_support_only |
| Gnosis | KHÔNG xác nhận trong nguồn cục bộ | source_missing |
| Cơ chế Lửa Thánh | Đề cập ngắn gọn, chi tiết chưa rõ | source_missing |
| Ode of Resurrection | Đề cập, cơ chế chưa rõ | source_missing |
| Power scaling cấp Archon | KHÔNG có nguồn xác nhận mức sức mạnh cụ thể | source_missing |

## Genre Usage Notes

- **Phù hợp:** Drama chính trị Natlan, câu chuyện về trách nhiệm lãnh đạo, mentor figure, exploration of Natlan culture
- **Hạn chế:** Không nên dùng làm trung tâm combat scenes mà không acknowledge source_missing về power scaling
- **Tone phù hợp:** Ấm áp nhưng trang nghiêm, storytelling, philosophical

## Safe Uses

- Viết Mavuika trong vai trò lãnh đạo Natlan với phong thái tự tin, ấm áp
- Đề cập mối quan hệ với chị Hine, Hitata, Xilonen
- Sử dụng thông điệp Lửa Thánh: "Trước khi trở thành lửa, hãy tự hoài về sự tồn tại của bản thân"
- Thể hiện sự tôn trọng với Capitano như chiến binh
- Phong cách kể chuyện, tham chiếu lịch sử
- Đề cập "Nghi Lễ Hành Hương"
- Cha dạy về "thanh ngắn nhất"
- Nhắc đến "Tumaini" là Ancient Name của Traveler

## Unsafe Uses

- ❌ Mô tả cơ chế Gnosis — source_missing
- ❌ Mô tả chi tiết cơ chế Lửa Thánh — source_missing
- ❌ Mô tả chi tiết kế hoạch 500 năm — source_missing
- ❌ Mô tả cơ chế chết/phục sinh — source_missing
- ❌ Mô tả cơ chế Night Kingdom — source_missing
- ❌ Archon-level power scaling cụ thể — source_missing
- ❌ Đề cập "Xích Tùng Vương" — imported from memory, KHÔNG có trong nguồn cục bộ
- ❌ Viết "Pyro Gnosis" hoặc "Hỏa Gnosis" — KHÔNG xác nhận
- ❌ Overclaim thẩm quyền Archon vượt quá tự xưng

## Sources

| Source | Path | Status |
|---|---|---|
| Voice Lines Mavuika | `sources/voice_lines/characters/Mavuika.md` | Available |
| Character Intelligence | `entities/character_intelligence/Mavuika.md` | Indirect |
| Character Stories | `sources/character_stories/` | Missing (không tồn tại trong workspace) |
| Quest Dialogue | — | Not checked |

## Maintenance Notes

- **Cập nhật gần nhất:** 2026-06-22 — Pass 18 Natlan Character Foundation Batch (patched 18.1)
- **Đã sửa:** Loại bỏ overclaim "Xích Tùng Vương", "Gnosis", và các cơ chế chưa xác nhận
- **Cần làm:** Bổ sung nguồn từ character_stories, quest dialogue, và in-game books khi có
- **Ưu tiên:** Xác nhận/từ chối Gnosis, cơ chế Lửa Thánh, kế hoạch 500 năm
- **Lưu ý:** Các mối quan hệ với nhân vật Natlan đều CANON từ voice lines nhưng chỉ ở mức "có ý kiến" — cần nguồn bổ sung để biết chi tiết từng mối quan hệ
