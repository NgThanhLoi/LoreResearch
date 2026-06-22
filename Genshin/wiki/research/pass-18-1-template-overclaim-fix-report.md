# Pass 18.1 — Báo Cáo Sửa Template & Overclaim

**Trạng thái:** ✅ Hoàn thành
**Ngày thực hiện:** Pass 18.1
**Loại:** Patch pass (không tạo trang mới)

---

## 1. Lý Do Pass 18.1 Cần Thiết

Pass 18 tạo/cập nhật 8 trang nhân vật Natlan nhưng có **3 blocking issues** cần sửa trước khi tiếp tục:

### Blocking Issue 1: Cấu trúc trang sai template
- Tất cả 8 trang sử dụng **legacy numbered sections** (`## 1. Kiểm Toán Nguồn`, `## 2. Bảng Danh Tính Canon`, v.v.)
- Template được phê duyệt `_character-template-v2.md` yêu cầu **unnumbered sections** với tên tiếng Anh chuẩn
- Vi phạm structural convention của wiki

### Blocking Issue 2: Overclaim trên Mavuika
- **"Xích Tùng Vương"** — danh hiệu lấy từ bộ nhớ, không có trong voice lines → gán CANON sai
- **"Gnosis"** — claim Gnosis ownership không xuất hiện trong voice lines → gán CANON sai
- **Archon mechanics** — gắn nhãn `primary_source_found (context)` cho Sacred Flame, kế hoạch 500 năm, Ode of Resurrection, Night Kingdom, death-resurrection → không đủ evidence

### Blocking Issue 3: Báo cáo sai compliance
- Report/log ghi "tuân thủ template v2" nhưng thực tế trang dùng legacy format
- Quality gate phản ánh sai trạng thái thật

**Kết luận:** 3 issues trên blocking — phải sửa trước khi Pass 19 có thể bắt đầu.

---

## 2. Files Đọc Trước (Read-Only)

Trước khi patch, các file sau được đọc để xác nhận trạng thái:

- `_character-template-v2.md` — xác nhận cấu trúc chuẩn
- `source-index.md` — kiểm tra read-only, xác nhận không cần thay đổi
- 8 trang nhân vật Natlan hiện tại — xác nhận legacy structure
- Pass 18 reports — xác nhận blocking issues

**Không có file nào được chỉnh sửa trước khi patch plan hoàn tất.**

---

## 3. Trang Nhân Vật Được Patched

| # | Nhân vật | File | Patch action |
|---|----------|------|-------------|
| 1 | Chasca | `wiki/entities/characters/Chasca.md` | Full restructure |
| 2 | Citlali | `wiki/entities/characters/Citlali.md` | Full restructure |
| 3 | Kachina | `wiki/entities/characters/Kachina.md` | Full restructure |
| 4 | Kinich | `wiki/entities/characters/Kinich.md` | Full restructure |
| 5 | Mavuika | `wiki/entities/characters/Mavuika.md` | Full restructure + overclaim fix |
| 6 | Mualani | `wiki/entities/characters/Mualani.md` | Full restructure |
| 7 | Ororon | `wiki/entities/characters/Ororon.md` | Full restructure |
| 8 | Xilonen | `wiki/entities/characters/Xilonen.md` | Full restructure |

**Trang skipped (ngoài scope — không có voice line file):**
- Ifa — preserved, source_missing
- Iansan — preserved, source_missing
- Varesa — preserved, source_missing

---

## 4. Sections Chuyển Đổi Sang Template v2

Tất cả 8 trang được chuyển từ legacy numbered sections sang **17 unnumbered sections** theo `_character-template-v2.md`:

| # | Section | Mô tả |
|---|---------|-------|
| — | **Frontmatter** | YAML: status (`active`), reliability (`mixed`), character_level (`Level 2`), source_policy (`source_first`) |
| 1 | **Audit Status** | Bảng audit — template v2 table format |
| 2 | **Summary** | Tóm tắt ngắn nhân vật |
| 3 | **Source Coverage Notes** | 7 subsections ghi chú coverage |
| 4 | **Canon Identity** | Bảng 5 cột — danh tính CANON |
| 5 | **Canon Personality** | Tính cách CANON với ID format `CHAR-NAME-TRAIT-XXX` |
| 6 | **Strongly Implied Traits** | Traits strongly implied nhưng không 100% CANON |
| 7 | **Theory / Interpretation** | Claims ở mức theory, có guardrail |
| 8 | **Headcanon / Fanon** | Claims fanon — cảnh báo OOC |
| 9 | **OOC Risk Register** | Register các risk out-of-character |
| 10 | **Voice Guide** | Hướng dẫn voice/tone cho writing |
| 11 | **Relationships** | Quan hệ với nhân vật khác |
| 12 | **Power / Lore Constraints** | Giới hạn sức mạnh và lore |
| 13 | **Genre Usage Notes** | Ghi chú sử dụng theo genre |
| 14 | **Safe Uses** | Các use case an toàn (CANON supported) |
| 15 | **Unsafe Uses** | Các use case không an toàn (overclaim risk) |
| 16 | **Sources** | Danh sách nguồn tham chiếu |
| 17 | **Maintenance Notes** | Ghi chú bảo trì cho pass tiếp theo |

**Legacy sections bị xóa:**
- ~~`## 1. Kiểm Toán Nguồn`~~
- ~~`## 2. Bảng Danh Tính Canon`~~
- ~~`## 3. Tính Cách Canon`~~
- ~~Và các numbered sections khác~~

---

## 5. Mavuika Overclaim Fixes (Chi Tiết)

### 5a. Claims Xóa Hoàn Toàn

| Claim | Lý do xóa |
|-------|-----------|
| **"Xích Tùng Vương"** | Danh hiệu không có trong voice lines. Lấy từ bộ nhớ/assumption. 0 references sau patch. |

### 5b. Claims Hạ Cấp (Downgraded)

| Claim | Trước 18.1 | Sau 18.1 | Lý do |
|-------|-----------|----------|-------|
| **Gnosis** | CANON | Guardrail/theory/maintenance only | Không có trong voice lines |
| **Archon mechanics (chung)** | `primary_source_found (context)` | `source_missing` | Voice lines không cover chi tiết mechanics |
| **Sacred Flame chi tiết** | `primary_source_found (context)` | `partial_support_only` | Một phần có evidence, chi tiết cụ thể thiếu |
| **Kế hoạch 500 năm chi tiết** | `primary_source_found (context)` | `partial_support_only` | Framework có, chi tiết từng bước thiếu |
| **Ode of Resurrection mechanics** | `primary_source_found (context)` | `source_missing` | Voice lines không cover cơ chế |
| **Night Kingdom mechanics** | `primary_source_found (context)` | `source_missing` | Voice lines không cover cơ chế |
| **Archon death-resurrection** | `primary_source_found (context)` | `source_missing` | Không có evidence trực tiếp |

### 5c. Claims CANON An Toàn Được Giữ Nguyên

| Claim | Evidence |
|-------|----------|
| Tự xưng "Hỏa Thần đương nhiệm" | Voice line trực tiếp |
| Tóc lửa (fire hair) | Voice line + visual evidence |
| Em gái Hine | Voice line trực tiếp |
| Yumkasaur Hitata | Voice line trực tiếp |
| Xe máy Xilonen | Voice line trực tiếp |
| Ý kiến về các nhân vật khác | Voice line trực tiếp |
| Lời dạy của cha | Voice line trực tiếp |

---

## 6. Natlan-Wide Overclaim Fixes

Ngoài Mavuika, các Natlan-wide mechanics cũng được guard:

| Cơ chế | Trước 18.1 | Sau 18.1 |
|---------|-----------|----------|
| Sacred Flame (tổng quát) | Áp dụng rộng cho tất cả Natlan chars | **Guarded** — chỉ CANON nếu locally supported |
| Night Kingdom (tổng quát) | Áp dụng rộng | **Guarded** — `source_missing` nếu thiếu voice line cụ thể |
| Ode of Resurrection (tổng quát) | Áp dụng rộng | **Guarded** — `source_missing` nếu thiếu voice line cụ thể |
| Cross-character mechanics assumptions | Implicit | **Explicitly cấm** — mỗi nhân vật cần evidence riêng |

---

## 7. Report/Log/Review Bundle Fixes

| File | Trước 18.1 | Sau 18.1 |
|------|-----------|----------|
| `pass-18-natlan-character-foundation-report.md` | Ghi "template v2 compliant" (sai) | Cập nhật: ghi rõ legacy → patched |
| `pass-18-character-update-list.md` | Thiếu cột Pass 18.1 patch | Thêm cột Pass 18.1 patch |
| `pass-18-source-coverage-notes.md` | Coverage status inconsistent | Cập nhật consistent với patched pages |
| `pass-18-risk-and-guardrail-report.md` | Thiếu Pass 18.1 section | Thêm section Pass 18.1 chi tiết |
| `pass-18-next-actions.md` | Thiếu note Pass 18.1 complete | Thêm note Pass 18.1 đã hoàn thành |
| `pass-18-1-template-overclaim-fix-report.md` | **Chưa tồn tại** | **Tạo mới** (file này) |

---

## 8. Counts Before/After

### Pages

| Metric | Before 18.1 | After 18.1 |
|--------|-------------|------------|
| Tổng trang Natlan | 11 (8 mới + 3 cũ) | 11 (không đổi) |
| Trang patched | 0 | **8** |
| Trang recreated | 0 | **0** |
| Trang skipped/preserved | 3 | **3** |
| Trang out-of-scope | 0 | **0** |
| Template v2 compliant | 0 | **8** |
| Legacy structure | 8 | **0** |

### Claims (Mavuika)

| Metric | Before 18.1 | After 18.1 |
|--------|-------------|------------|
| "Xích Tùng Vương" references | 1+ | **0** |
| Gnosis as CANON | 1 | **0** |
| `primary_source_found (context)` labels | 6+ | **0** |
| CANON claims an toàn | 7 | **7** (giữ nguyên) |
| Claims hạ cấp | 0 | **7** |

### Reports

| Metric | Before 18.1 | After 18.1 |
|--------|-------------|------------|
| Reports consistent | 0/5 | **5/5** |
| Quality gate phản ánh đúng | Không | **Có** |
| Source-index thay đổi | 0 | **0** |
| Source ID mới | 0 | **0** |

---

## 9. Quality Gates

Tất cả quality gates đều **PASS** sau patch:

| Gate | Kết quả | Ghi chú |
|------|---------|---------|
| Template v2 structure | ✅ **PASS** | 17 sections chuẩn, không đánh số |
| Frontmatter completeness | ✅ **PASS** | status, reliability, character_level, source_policy đầy đủ |
| Overclaim guardrails | ✅ **PASS** | Không còn critical/high overclaim |
| Section numbering removed | ✅ **PASS** | 0 legacy numbered sections |
| Mavuika "Xích Tùng Vương" | ✅ **PASS** | 0 references |
| Mavuika Gnosis CANON | ✅ **PASS** | 0 CANON claims |
| Source-index unchanged | ✅ **PASS** | Read-only verified |
| Report consistency | ✅ **PASS** | 5/5 reports updated |
| No external/web/API | ✅ **PASS** | Không sử dụng |
| No source ID created | ✅ **PASS** | 0 new IDs |

---

## 10. Vấn Đề Chưa Giải Quyết

| # | Vấn đề | Severity | Deferred to |
|---|---------|----------|-------------|
| 1 | Mavuika mechanics chi tiết vẫn `source_missing` | Medium | Pass 19 |
| 2 | Ifa/Iansan/Varesa chưa có voice line file | Medium | Khi có nguồn |
| 3 | Natlan-wide mechanics cần cross-review | Low | Pass 19 |
| 4 | Character-story provenance chưa deep-dive | Low | Pass 20+ |

---

## 11. Khuyến Nghị Pass Tiếp Theo

### Pass 19 — Khuyến Nghị

**Mục tiêu chính:**
1. Cross-Faction Source-Light Batch (Dottore, Sandrone, Columbina, Skirk, etc.)
2. Cross-review Natlan-wide mechanics consistency
3. Relationship cross-reference audit

**Prerequisite:**
- ✅ Pass 18.1 hoàn thành (đã done)
- ✅ Template v2 compliance verified
- ✅ Report bundle updated

**Estimated effort:** Medium-High

---

## Tóm Tắt

| Aspect | Value |
|--------|-------|
| Pass | 18.1 |
| Type | Patch (fix blocking issues) |
| Pages patched | 8 |
| Pages recreated | 0 |
| Pages skipped | 3 (Ifa/Iansan/Varesa) |
| Blocking issues resolved | 3/3 |
| Quality gates passed | 10/10 |
| Source-index changes | 0 |
| Source IDs created | 0 |
| External/web/API used | 0 |
| Status | ✅ **COMPLETE** |
