# Pass 18 — Báo Cáo Risk & Guardrail

**Trạng thái:** Hoàn thành (đã patch Pass 18.1)
**Ngày tạo:** Pass 18
**Ngày cập nhật cuối:** Pass 18.1

---

## Tổng Quan Risk

Pass 18 xử lý 8 nhân vật Natlan mới. Risk chính nằm ở:

1. **Overclaim mechanics** — gán mechanics-level claims là CANON khi chỉ có partial evidence
2. **Template non-compliance** — cấu trúc trang không đúng chuẩn
3. **Report inconsistency** — báo cáo ghi "đạt" khi thực tế chưa đạt

---

## Risk Register Trước Pass 18.1

### Mavuika — HIGH RISK

| Risk | Mô tả | Severity | Status (trước 18.1) |
|------|-------|----------|---------------------|
| "Xích Tùng Vương" | Claim từ bộ nhớ, không có voice line evidence | **Critical** | Gán CANON (sai) |
| Gnosis | Claim Gnosis ownership không có trong voice lines | **High** | Gán CANON (sai) |
| Sacred Flame mechanics | Chi tiết cơ chế Sacred Flame thiếu voice line | **High** | Gán `primary_source_found (context)` |
| Kế hoạch 500 năm | Chi tiết cụ thể kế hoạch thiếu evidence | **High** | Gán `primary_source_found (context)` |
| Ode of Resurrection | Cơ chế chi tiết thiếu voice line | **Medium** | Gán `primary_source_found (context)` |
| Night Kingdom mechanics | Cơ chế Night Kingdom thiếu voice line | **Medium** | Gán `primary_source_found (context)` |
| Archon death-resurrection | Cơ chế Archon chết/sống lại thiếu evidence | **High** | Gán `primary_source_found (context)` |

### Các nhân vật khác — LOW-MEDIUM RISK

| Character | Risk chính | Severity |
|-----------|-----------|----------|
| Chasca | Abyss corruption details, legal/military authority overclaim | Medium |
| Citlali | Divination accuracy, elder authority overclaim | Medium |
| Kachina | Night Kingdom/Ancient Name mechanics, infantilization | Medium |
| Kinich | Ajaw nature/power overclaim (self-proclaimed title) | Medium |
| Mualani | Political authority, combat power overclaim | Low |
| Ororon | Capitano/Fatui relationship speculation, soul-sensing limits | Medium |
| Xilonen | Omnipotent smith / all-knowing lore master overclaim | Low |

### Natlan-Wide Mechanics — MEDIUM RISK

| Risk | Mô tả | Severity |
|------|-------|----------|
| Natlan mechanics tổng quát | Các cơ chế Natlan-wide (Sacred Flame, Night Kingdom, Ode) áp dụng cho tất cả nhân vật khi chỉ một số có evidence | Medium |
| Cross-character assumptions | Giả định mechanics của nhân vật này áp dụng cho nhân vật khác | Medium |

---

## Pass 18.1 — Sửa Chữa Risk & Guardrail

### Mavuika: Overclaim Fixes (Chi Tiết)

| Claim | Trước 18.1 | Sau 18.1 | Action |
|-------|-----------|----------|--------|
| **"Xích Tùng Vương"** | CANON (sai) | **Xóa hoàn toàn** (0 references) | Removed |
| **Gnosis** | CANON (sai) | Chỉ trong guardrail/theory/maintenance context | Downgraded |
| **Archon mechanics (chung)** | `primary_source_found (context)` | `source_missing` | Downgraded |
| **Sacred Flame chi tiết** | `primary_source_found (context)` | `partial_support_only` | Downgraded |
| **Kế hoạch 500 năm chi tiết** | `primary_source_found (context)` | `partial_support_only` | Downgraded |
| **Ode of Resurrection mechanics** | `primary_source_found (context)` | `source_missing` | Downgraded |
| **Night Kingdom mechanics** | `primary_source_found (context)` | `source_missing` | Downgraded |
| **Archon death-resurrection** | `primary_source_found (context)` | `source_missing` | Downgraded |

**Claims CANON an toàn được giữ nguyên:**
- ✅ Tự xưng "Hỏa Thần đương nhiệm" (voice line trực tiếp)
- ✅ Tóc lửa (voice line + visual)
- ✅ Em gái Hine (voice line trực tiếp)
- ✅ Yumkasaur Hitata (voice line trực tiếp)
- ✅ Xe máy Xilonen (voice line trực tiếp)
- ✅ Ý kiến về các nhân vật khác (voice line trực tiếp)
- ✅ Lời dạy của cha (voice line trực tiếp)

### Natlan-Wide Mechanics: Guardrail Fixes

| Cơ chế | Trước 18.1 | Sau 18.1 |
|---------|-----------|----------|
| Sacred Flame (tổng quát) | Áp dụng rộng | Guarded — chỉ CANON nếu locally supported cho từng nhân vật |
| Night Kingdom (tổng quát) | Áp dụng rộng | Guarded — `source_missing` nếu không có voice line cụ thể |
| Ode of Resurrection (tổng quát) | Áp dụng rộng | Guarded — `source_missing` nếu không có voice line cụ thể |
| Natlan faction mechanics | Áp dụng rộng | Guarded — cross-character assumptions bị cấm |

### Template v2 Compliance

| Vấn đề | Trước 18.1 | Sau 18.1 |
|---------|-----------|----------|
| Section numbering | Đánh số (## 1., ## 2., ...) | **Không đánh số** (## Audit Status, ## Summary, ...) |
| Section naming | Tiếng Việt legacy | **Tiếng Anh theo template v2** |
| Section count | Thay đổi tùy trang | **17 sections chuẩn** cho tất cả 8 trang |
| Frontmatter | Thiếu/inconsistent | **Đầy đủ:** status, reliability, character_level, source_policy |
| Legacy sections | Có | **Xóa hoàn toàn** |

---

## Risk Register Sau Pass 18.1

### Mavuika — MEDIUM RISK (giảm từ HIGH)

- ✅ "Xích Tùng Vương" — **removed**
- ✅ Gnosis — **guarded** (không CANON)
- ✅ Archon mechanics — **source_missing** hoặc **partial_support_only**
- ⚠️ Vẫn cần thêm voice line evidence để nâng cấp mechanics claims trong tương lai

### Các nhân vật khác — LOW-MEDIUM RISK (không thay đổi lớn)

- Template v2 compliance: ✅
- Natlan-wide mechanics guarded: ✅
- Overclaim risk giảm đáng kể

### Overall Risk Level

| Metric | Trước 18.1 | Sau 18.1 |
|--------|-----------|----------|
| Critical risks | 1 (Xích Tùng Vương) | **0** |
| High risks | 4 (Gnosis, Sacred Flame, 500yr, death-resurrection) | **0** |
| Medium risks | 6 | **3** (monitoring) |
| Low risks | 8 | **8** |

---

## Remaining Risks (Chưa Giải Quyết)

1. **Mavuika mechanics chi tiết** — vẫn cần thêm voice line evidence để confirm Sacred Flame, Ode, Night Kingdom mechanics ở mức CANON
2. **Ifa/Iansan/Varesa** — chưa có voice line file, vẫn skipped/source_missing
3. **Natlan cross-character mechanics** — cần review lại khi có thêm voice lines từ future updates
