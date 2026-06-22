# Pass 18 — Natlan Character Foundation Report

**Trạng thái:** Hoàn thành (đã patch Pass 18.1)
**Ngày tạo:** Pass 18
**Ngày cập nhật cuối:** Pass 18.1

---

## Mục Tiêu

Pass 18 thiết lập nền tảng cho 8 nhân vật Natlan trên wiki, bao gồm:

- Tạo trang nhân vật cho các nhân vật Natlan chưa có trang
- Cập nhật trang đã tồn tại với dữ liệu mới
- Đảm bảo coverage nguồn (source coverage) cho từng nhân vật
- Ghi nhận risk/guardrail cho các claim có nguy cơ overclaim

## 8 Nhân Vật Được Xử Lý

| # | Nhân vật | File | Hành động Pass 18 |
|---|----------|------|--------------------|
| 1 | Chasca | `wiki/entities/characters/Chasca.md` | Tạo mới |
| 2 | Citlali | `wiki/entities/characters/Citlali.md` | Tạo mới |
| 3 | Kachina | `wiki/entities/characters/Kachina.md` | Tạo mới |
| 4 | Kinich | `wiki/entities/characters/Kinich.md` | Tạo mới |
| 5 | Mavuika | `wiki/entities/characters/Mavuika.md` | Tạo mới |
| 6 | Mualani | `wiki/entities/characters/Mualani.md` | Tạo mới |
| 7 | Ororon | `wiki/entities/characters/Ororon.md` | Tạo mới |
| 8 | Xilonen | `wiki/entities/characters/Xilonen.md` | Tạo mới |

## Vấn Đề Phát Hiện Sau Pass 18

Pass 18 tạo/cập nhật thành công 8 trang nhưng có **3 blocking issues**:

### Issue 1: Cấu trúc trang sai template
- Các trang sử dụng section đánh số legacy (`## 1. Kiểm Toán Nguồn`, `## 2. Bảng Danh Tính Canon`, v.v.)
- Không tuân thủ cấu trúc `_character-template-v2.md` đã được phê duyệt
- Template v2 yêu cầu section không đánh số với tên tiếng Anh chuẩn

### Issue 2: Overclaim trên Mavuika
- **"Xích Tùng Vương"** — lấy từ bộ nhớ, không có trong voice lines
- **"Gnosis"** — không xuất hiện trong voice lines dưới dạng CANON
- **Nhãn `primary_source_found (context)`** cho Archon mechanics — không đủ evidence

### Issue 3: Báo cáo sai template compliance
- Report/log ghi "tuân thủ template v2" nhưng thực tế trang dùng legacy format
- Quality gate chưa phản ánh đúng trạng thái

## Kết Quả Sau Pass 18 (Trước Patch)

- 8 trang tạo/cập nhật — **cấu trúc legacy**
- Source coverage: ghi nhận đầy đủ
- Risk register: có cảnh báo nhưng chưa đủ guardrail
- Template compliance: **KHÔNG ĐẠT**

---

## Pass 18.1 Patch Note

**Trạng thái:** ✅ Hoàn thành

Pass 18.1 được thực hiện để sửa 3 blocking issues nói trên.

### Tóm tắt thay đổi

1. **Cấu trúc trang sửa hoàn toàn** — Toàn bộ 8 trang Natlan được patch từ legacy numbered sections sang cấu trúc `_character-template-v2.md` với 17 section không đánh số:
   - Frontmatter (status, reliability, character_level, source_policy)
   - Audit Status, Summary, Source Coverage Notes, Canon Identity, Canon Personality, Strongly Implied Traits, Theory / Interpretation, Headcanon / Fanon, OOC Risk Register, Voice Guide, Relationships, Power / Lore Constraints, Genre Usage Notes, Safe Uses, Unsafe Uses, Sources, Maintenance Notes

2. **Mavuika overclaim sửa triệt để:**
   - "Xích Tùng Vương" — **xóa hoàn toàn** (0 references)
   - "Gnosis" — chỉ xuất hiện trong ngữ cảnh guardrail/theory/maintenance, không bao giờ là CANON
   - Archon mechanics, Sacred Flame, kế hoạch 500 năm, Ode of Resurrection, Night Kingdom mechanics — hạ xuống `source_missing` hoặc `partial_support_only`
   - Các claim CANON an toàn được giữ nguyên: tự xưng "Hỏa Thần đương nhiệm", tóc lửa, em gái Hine, Yumkasaur Hitata, xe máy Xilonen, ý kiến cá nhân, lời dạy của cha

3. **Báo cáo/log/bundle sửa:**
   - Quality gate cập nhật phản ánh đúng trạng thái sau patch
   - Template v2 compliance: **ĐẠT** (sau patch)
   - Source-index.md được kiểm tra read-only, **không chỉnh sửa**
   - Không tạo source ID mới

### Kết quả sau Pass 18.1

- **8 trang patched** — tuân thủ template v2
- **3 trang skipped** (Ifa/Iansan/Varesa — preserved, không thuộc scope)
- **0 trang recreated** — tất cả đều edit-in-place
- **0 trang out-of-scope**
- Source-index: không thay đổi
- External/web/API: không sử dụng

### Quality Gate (Sau Patch)

| Gate | Kết quả |
|------|---------|
| Template v2 structure | ✅ Pass |
| Overclaim guardrails | ✅ Pass |
| Section numbering removed | ✅ Pass |
| Source-index unchanged | ✅ Pass |
| Report consistency | ✅ Pass |
