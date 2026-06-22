# Pass 18 — Ghi Chú Coverage Nguồn

**Trạng thái:** Hoàn thành (đã patch Pass 18.1)
**Ngày tạo:** Pass 18
**Ngày cập nhật cuối:** Pass 18.1

---

## Ghi Chú Chung

Bảng dưới đây ghi nhận coverage nguồn cho 8 nhân vật Natlan được xử lý trong Pass 18, **đã cập nhật sau Pass 18.1 patch** để phản ánh đúng trạng thái source (không overclaim).

Sau Pass 18.1, các claim trước đây được gắn nhãn `primary_source_found` nhưng thiếu evidence trực tiếp đã được hạ xuống `source_missing` hoặc `partial_support_only`.

---

## Bảng Coverage Nguồn

| Character | Identity | Personality | Relationships | Powers | Backstory | Faction role | Major lore claims |
|-----------|----------|-------------|---------------|--------|-----------|--------------|-------------------|
| Chasca | primary_source_found | primary_source_found | primary_source_found | partial_support_only | source_missing | primary_source_found | partial_support_only |
| Citlali | primary_source_found | primary_source_found | partial_support_only | partial_support_only | source_missing | primary_source_found | source_missing |
| Kachina | primary_source_found | primary_source_found | primary_source_found | partial_support_only | partial_support_only | primary_source_found | source_missing |
| Kinich | primary_source_found | primary_source_found | primary_source_found | partial_support_only | source_missing | primary_source_found | source_missing |
| Mavuika | primary_source_found | primary_source_found | primary_source_found | partial_support_only | partial_support_only | partial_support_only | source_missing |
| Mualani | primary_source_found | primary_source_found | primary_source_found | partial_support_only | partial_support_only | primary_source_found | source_missing |
| Ororon | primary_source_found | primary_source_found | partial_support_only | partial_support_only | source_missing | primary_source_found | source_missing |
| Xilonen | primary_source_found | primary_source_found | primary_source_found | primary_source_found | source_missing | primary_source_found | source_missing |

---

## Chi Tiết Coverage Theo Nhân Vật

### Mavuika
- **Voice lines có:** tự xưng "Hỏa Thần đương nhiệm", mô tả tóc lửa, em gái Hine, Yumkasaur Hitata, xe máy Xilonen, ý kiến về các nhân vật khác, lời dạy của cha
- **Voice lines KHÔNG cover:** "Xích Tùng Vương" (đã xóa), Gnosis (hạ cấp), chi tiết Sacred Flame mechanics, kế hoạch 500 năm cụ thể, Ode of Resurrection mechanics, Night Kingdom mechanics chi tiết, cơ chế Archon death-resurrection
- **Coverage verdict:** `partial_support_only` cho mechanics-level claims; CANON chỉ cho personality/identity claims có voice line trực tiếp

### Kachina
- **Voice lines có:** personality (shy, emotional, determined), relationships (Mualani, Kinich, Chasca, Iansan, Citlali, Xilonen, Mavuika, Ifa, Pacal), Ancient Name Uthabiti, Tepetlisaur Ayo, drill Mũi Khoan Quay Tròn, Night Kingdom experience, Wayob encounter
- **Voice lines KHÔNG cover:** chi tiết cơ chế Ancient Name, cơ chế Night Kingdom, chi tiết Wayob, tournament/pilgrimage structure
- **Coverage verdict:** `mixed` — identity/personality/relationships strong, mechanics/backstory guarded

### Xilonen
- **Voice lines có:** personality, relationships, crafting/artisan identity, motorcycle
- **Coverage verdict:** `good` — coverage rộng nhất trong nhóm Natlan

### Chasca
- **Voice lines có:** personality traits, Flower of Revelation connection (basic)
- **Voice lines KHÔNG cover:** Flower mechanics chi tiết
- **Coverage verdict:** `mixed`

### Ororon
- **Voice lines có:** personality, Smoke Mirror connection (basic), Nightsoul reference
- **Voice lines KHÔNG cover:** mechanics chi tiết
- **Coverage verdict:** `mixed`

### Citlali
- **Voice lines có:** personality, Iktamisaurus bond, ancient name reference
- **Voice lines KHÔNG cover:** mechanics chi tiết
- **Coverage verdict:** `mixed`

### Kinich
- **Voice lines có:** personality, Saurian Claw companion relationship
- **Voice lines KHÔNG cover:** companion mechanics chi tiết
- **Coverage verdict:** `mixed`

### Mualani
- **Voice lines có:** personality, surfing/shark theme, energetic disposition
- **Coverage verdict:** `mixed` — low overclaim risk

---

## Thay Đổi Coverage Sau Pass 18.1

| Claim | Coverage trước 18.1 | Coverage sau 18.1 |
|-------|---------------------|-------------------|
| Mavuika "Xích Tùng Vương" | `primary_source_found` (sai) | **Xóa hoàn toàn** |
| Mavuika Gnosis | `primary_source_found (context)` (sai) | `source_missing` — chỉ trong guardrail/theory |
| Mavuika Sacred Flame mechanics | `primary_source_found (context)` | `partial_support_only` |
| Mavuika 500-year plan details | `primary_source_found (context)` | `partial_support_only` |
| Mavuika Ode of Resurrection mechanics | `primary_source_found (context)` | `source_missing` |
| Mavuika Night Kingdom mechanics | `primary_source_found (context)` | `source_missing` |
| Mavuika Archon death-resurrection | `primary_source_found (context)` | `source_missing` |
| Natlan-wide mechanics (chung) | Overclaim risk | Guarded — chỉ CANON nếu locally supported |

---

## Ghi Chú Bổ Sung

- **Source-index.md:** Kiểm tra read-only, không chỉnh sửa. Không có source ID mới được tạo.
- **External/web/API:** Không sử dụng trong Pass 18 hoặc 18.1.
- **Character-story provenance:** Không thực hiện claim mapping chi tiết.
- **Unofficial/fan sources:** Không sử dụng — tất cả claims dựa trên voice lines và game text chính thức.
