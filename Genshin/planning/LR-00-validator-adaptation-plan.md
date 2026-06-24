# Validator Adaptation Plan (LR-00)

## Hiện trạng _tools/ scripts
Dựa trên phân tích thư mục `_tools/`, LoreResearch hiện có các công cụ dạng `.ps1` (PowerShell) và vài `.js`, `.py` chủ yếu phục vụ cho:
- Lấy và crawl dữ liệu (`fetch_*.ps1`).
- Sửa lỗi encoding (`fix_encoding.ps1`, `fix_intelligence_encoding.py`).
- Sinh profile và index (`generate_manual_profiles.*`, `generate_indexes.ps1`).
- Một số công cụ test nhỏ (`test_diag.ps1`, `validate_links.ps1`).

**Thiếu vắng:** Một bộ validator Python/Node.js tổng thể có khả năng quét toàn bộ repo và áp dụng semantic rules (semantic checks).

## Có nên tạo `_tools/validate_lore_repo.py` không?
**Có.** 
Các scripts hiện tại (như `validate_links.ps1`) chạy rải rác và chủ yếu tập trung vào local paths. Cần một Master Validator chạy tự động qua CI hoặc chạy thủ công trước khi chốt một Pass lớn.

## Validator nên check những gì ở mức repo (Repo-level)
1. **JSON/Markdown Validation:** Parse mọi file JSON và Markdown để chống lỗi syntax cơ bản.
2. **Broken Local Links:** Cải thiện `validate_links.ps1` để đọc cấu trúc `[text](path)`, chống 404 chết (đặc biệt khi reference chéo).
3. **Stale Inventory Counts:** Quét các file index/inventory và đối chiếu đếm số file thực tế trong `entities/`, `sources/`. Nếu Header ghi 84 nhân vật mà đếm ra 85 -> Cảnh báo.
4. **Shell Pages Detection:** Quét các file trong `entities/` mà kích thước < 500 bytes hoặc chỉ chứa headers template chưa điền nội dung.
5. **Orphan Files:** File không có link nào trỏ tới.

## Validator nên check những gì theo pass (Pass-level & Semantic Checks)
1. **Canon claim without source:** Quét các dòng hoặc blocks có đánh nhãn `[CANON]` xem có hyperlink/chú thích trỏ đến folder `sources/` hay `_data/` không.
2. **Theory/headcanon in canon section:** Áp dụng text matching/regex để bắt lỗi dùng từ ngữ mơ hồ ("tôi nghĩ", "có lẽ", "headcanon", "theory") bên trong block được gán thẻ CANON.
3. **source_missing marker:** Tìm các flag `[SOURCE_MISSING]` hoặc `TODO: add source` để report lên console.
4. **Unverified Nod-Krai content:** Quét `nations/nod-krai/` hoặc `topics/nod-krai/`, nếu phát hiện thiếu nhãn `UNVERIFIED`, tự động báo warning.
5. **Review bundle consistency:** Đối chiếu thông số trong `review-bundle-XXX.md` với log hệ thống.
