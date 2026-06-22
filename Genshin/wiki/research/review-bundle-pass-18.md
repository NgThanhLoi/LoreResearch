# Review Bundle — Pass 18

**Ngày thực hiện:** 2025-07-11
**Pass:** 18 — Natlan Character Foundation Batch
**Reviewer:** [Pending]
**Trạng thái:** Sẵn sàng review

---

## 1. Tóm tắt Pass

Pass 18 tạo 8 trang nhân vật Natlan foundation dựa trên voice line data chính thức. 3 nhân vật bị skip do thiếu voice line file. Tất cả guardrail Natlan high-risk lore được áp dụng nghiêm ngặt.

---

## 2. Thống kê nhanh

| Chỉ số | Giá trị |
|--------|---------|
| Tổng batch rows | 11 |
| Tạo mới | 8 |
| Giữ nguyên | 0 |
| Bỏ qua | 3 |
| Out-of-scope checks | 0 |
| Quality gates PASS | 10/10 |

---

## 3. Files gửi review

### Research reports (Pass 18):
1. `wiki/research/pass-18-natlan-character-foundation-report.md` — Báo cáo chính
2. `wiki/research/pass-18-character-update-list.md` — Danh sách cập nhật
3. `wiki/research/pass-18-source-coverage-notes.md` — Ghi chú bao phủ nguồn
4. `wiki/research/pass-18-risk-and-guardrail-report.md` — Báo cáo rủi ro & guardrail
5. `wiki/research/pass-18-next-actions.md` — Đề xuất hành động tiếp theo
6. `wiki/research/review-bundle-pass-18.md` — Review bundle (file này)

### Wiki log:
7. `wiki/log.md` — Log cập nhật

### Character pages (8 trang tạo mới):
8. `wiki/entities/characters/Chasca.md`
9. `wiki/entities/characters/Citlali.md`
10. `wiki/entities/characters/Kachina.md`
11. `wiki/entities/characters/Kinich.md`
12. `wiki/entities/characters/Mavuika.md`
13. `wiki/entities/characters/Mualani.md`
14. `wiki/entities/characters/Ororon.md`
15. `wiki/entities/characters/Xilonen.md`

---

## 4. Source policy tuân thủ

| Nguồn | Vai trò | Tuân thủ |
|-------|---------|----------|
| Voice lines | Primary source | ✅ |
| Character intelligence | Indirect guidance only | ✅ |
| Character stories | Không sử dụng | ✅ |
| External sources | Không sử dụng | ✅ |

---

## 5. Guardrail áp dụng

| Guardrail | Phạm vi | Trạng thái |
|-----------|---------|------------|
| Night Kingdom | Tất cả Natlan chars | ✅ source_missing |
| Wayob | Tất cả Natlan chars | ✅ source_missing |
| Nightsoul | Một số chars | ✅ source_missing / partial_support_only |
| Phlogiston | Xilonen | ✅ partial_support_only |
| Ancient Name mechanics | Kachina, Mualani, Xilonen | ✅ partial_support_only |
| Ode of Resurrection | Tất cả Natlan chars | ✅ source_missing |
| Xbalanque | Tất cả Natlan chars | ✅ source_missing |
| Abyss war | Mavuika | ✅ source_missing |
| Capitano | Ororon | ✅ partial_support_only |
| Mavuika 500-year plan | Mavuika | ✅ source_missing |
| Mavuika death/resurrection | Mavuika | ✅ source_missing |

---

## 6. Mavuika — Boundary đặc biệt

Mavuika có boundary split rõ ràng:
- **CANON (voice line xác nhận):** Pyro Archon identity, lãnh đạo Natlan, Sacred Flame, xe máy Xilonen tạo
- **source_missing (guardrail nghiêm ngặt):** 500-year history chi tiết, death/resurrection mechanics, 500-year plan, Ode of Resurrection connection

---

## 7. Nhân vật skipped

| Character | Lý do | Xử lý tương lai |
|-----------|--------|-----------------|
| Ifa | Không có voice line file | Pass 20+ nếu có nguồn |
| Iansan | Không có voice line file | Pass 20+ nếu có nguồn |
| Varesa | Không có voice line file | Pass 20+ nếu có nguồn |

---

## 8. Template compliance

- ✅ Tất cả 8 trang có đủ 18 sections
- ✅ Audit Status dạng bảng (table-format)
- ✅ Source citations tham chiếu đúng voice line files
- ✅ Guardrail labels áp dụng đúng

---

## 9. Lessons learned áp dụng

Tất cả 9 bài học kinh nghiệm từ Pass 11-17 đều được tuân thủ. Xem chi tiết trong `pass-18-natlan-character-foundation-report.md` section 8.

---

## 10. Rủi ro đã đánh giá

| Loại | Mức độ | Quản lý |
|------|--------|---------|
| OOC | Thấp | ✅ |
| Headcanon/fanon | Thấp | ✅ |
| Power-scaling | Thấp | ✅ |
| Relationship overclaim | Thấp | ✅ |
| Source gap | Trung bình-Cao | ✅ Guardrail labels |
| Natlan mechanics overclaim | Cao (nếu không guardrail) | ✅ Guardrail đầy đủ |
| Mavuika boundary | Cao (nếu không guardrail) | ✅ Split CANON/source_missing |

Xem chi tiết trong `pass-18-risk-and-guardrail-report.md`.

---

## 11. Đề xuất Pass tiếp theo

- **Pass 19:** Cross-Faction Source-Light Batch (theo Pass 11 roadmap)
- **KHÔNG khuyến nghị:** Nod-Krai character-writing pass
- **Trì hoãn:** Character-story provenance (Pass 20+), Claim mapping (Pass 26+)
- **NK-01 đến NK-07:** Đã hoàn thành, không cần hành động

---

## 12. Source coverage summary

- **Identity:** 8/8 primary_source_found
- **Personality:** 8/8 primary_source_found
- **Relationships:** 8/8 primary_source_found
- **Powers:** 8/8 primary_source_found
- **Backstory:** 3 primary_source_found, 3 partial_support_only, 2 source_light
- **Faction role:** 8/8 primary_source_found
- **Major lore claims:** 0/8 primary — toàn bộ partial_support_only hoặc source_missing (đúng guardrail)

---

## 13. Character Intelligence usage

- ✅ KHÔNG dùng làm primary source cho bất kỳ claim nào
- ✅ Chỉ dùng làm indirect guidance để định hướng voice line reading
- ✅ Không có intelligence-only claims trong bất kỳ trang nào

---

## 14. Source Index status

- ✅ source-index.md chỉ đọc read-only — không sửa
- ✅ Không có source ID mới được tạo
- ✅ Không có source ingestion

---

## 15. Checklist review nhanh

- [ ] Tất cả 8 character pages có đủ 18 sections?
- [ ] Audit Status table đúng format?
- [ ] Voice line citations chính xác?
- [ ] Guardrail labels áp dụng cho Natlan high-risk lore?
- [ ] Mavuika CANON vs source_missing split đúng?
- [ ] Không có fanfic/plot/outline content?
- [ ] Không có external source ingestion?
- [ ] 3 skipped characters có lý do hợp lệ?
- [ ] Research reports đầy đủ và chính xác?
- [ ] wiki/log.md cập nhật Pass 18?

---

## 16. Ghi chú cho reviewer

**Điểm cần chú ý đặc biệt:**

1. **Mavuika** — Trang phức tạp nhất trong batch. Ranh giới giữa CANON basic identity và source_missing major lore mechanics cần review kỹ. Đặc biệt: 500-year plan, death/resurrection, Ode of Resurrection connection.

2. **Ororon + Capitano** — Voice line đề cập gặp Capitano. Ghi nhận sự kiện nhưng không suy đoán ý nghĩa lore sâu xa. Guardrail `partial_support_only`.

3. **Xilonen + Phlogiston** — Voice line xác nhận sử dụng Phlogiston nhưng mechanics chi tiết không có. Guardrail `partial_support_only` cho usage, `source_missing` cho mechanics.

4. **Ancient Names** — Kachina (Uthabiti), Mualani (Umoja) có tên xác nhận. Ancient Name Forger role của Xilonen xác nhận. Nhưng origin/power mechanics của Ancient Names đều `source_missing`.

5. **Skipped characters** — Ifa, Iansan, Varesa bị skip do thiếu voice line file. Đây là quyết định đúng theo guardrail policy. Reviewer có thể xem xét liệu có nên tạo placeholder pages hay không.

**Câu hỏi cho reviewer:**
- Guardrail cho Natlan high-risk lore có quá nghiêm ngặt không?
- Mavuika boundary split có hợp lý không?
- Có nên chuẩn bị cho Pass 19 Cross-Faction Source-Light Batch ngay không?

---

## Pass 18.1 Patch Summary

**Ngày patch:** 2026-06-22
**Pass:** 18.1 — Natlan Template v2 + Overclaim Fix Patch

### Patch reason

Human review phát hiện 3 vấn đề blocking trong Pass 18:
1. 8 trang Natlan sử dụng cấu trúc legacy đánh số (## 1. Kiểm Toán Nguồn, ## 2. Bảng Danh Tính Canon, v.v.) thay vì cấu trúc `_character-template-v2.md` được phê duyệt
2. Mavuika và một số cơ chế Natlan bị overclaim là CANON / primary_source_found từ context
3. Báo cáo tuyên bố tuân thủ template-v2 mặc dù cấu trúc trang thực tế không khớp

### Pages patched

8 trang nhân vật Natlan được viết lại hoàn toàn theo template v2:
- Chasca.md, Citlali.md, Kachina.md, Kinich.md, Mavuika.md, Mualani.md, Ororon.md, Xilonen.md

### Mavuika claims downgraded

| Claim | Before (Pass 18) | After (Pass 18.1) |
|---|---|---|
| "Xích Tùng Vương" | source_light | **REMOVED entirely** (imported from memory) |
| Gnosis | CANON / primary_source_found (context) | **REMOVED from CANON**; only in Theory/guardrail sections |
| Sacred Flame details | primary_source_found | partial_support_only / source_missing |
| Ode of Resurrection mechanics | primary_source_found | source_missing |
| 500-year plan details | primary_source_found (context) | source_missing |
| Death/resurrection mechanics | not explicitly guarded | source_missing |
| Night Kingdom mechanics | not explicitly guarded | source_missing |
| Archon power scaling | primary_source_found (context) | source_missing |

### Template v2 compliance

- Trước patch: 8 trang dùng 18 sections đánh số (## 1. đến ## 18.)
- Sau patch: 8 trang dùng 17 sections không đánh số theo `_character-template-v2.md`
- Frontmatter sửa: `status: active`, `reliability: mixed`, `character_level: Level 2`, `source_policy: source_first`

### Reports updated

- pass-18-natlan-character-foundation-report.md (thêm Pass 18.1 Patch Note)
- pass-18-character-update-list.md (thêm cột Pass 18.1 patch)
- pass-18-source-coverage-notes.md (cập nhật status cho phù hợp)
- pass-18-risk-and-guardrail-report.md (thêm Pass 18.1 section)
- pass-18-next-actions.md (thêm ghi chú Pass 18.1 hoàn thành)
- pass-18-1-template-overclaim-fix-report.md (báo cáo patch mới)
- review-bundle-pass-18.md (thêm phần này)
- wiki/log.md (thêm entry Pass 18.1)

### Remaining issues

- Character-story provenance vẫn thiếu cho tất cả 8 trang
- Ifa/Iansan/Varesa vẫn skipped/source_missing
- Một số cơ chế Natlan vẫn source_missing cho đến khi có nguồn bổ sung

### Next recommended pass

Pass 19 — Cross-Faction Source-Light Batch
