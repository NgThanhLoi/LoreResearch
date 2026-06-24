# Migration Risk Register (LR-00)

Việc áp dụng trực tiếp workflow của dự án Genshin LLM Wiki cũ vào repo LoreResearch hiện tại tiềm ẩn nhiều rủi ro. Dưới đây là bảng đánh giá và kế hoạch phòng ngừa.

## Danh Sách Rủi Ro

### 1. Duplicate governance files
- **Severity:** Medium
- **Why it matters:** Nếu Hermes Agent áp dụng skill `llm-wiki`, nó có xu hướng sinh ra file `SCHEMA.md` hoặc `index.md` đè lên hoặc gây nhiễu cho cấu trúc quản trị sẵn có ở `foundation/` (vd: `01-canon-governance.md`).
- **Guardrail:** Khoá chặt quyền sinh Schema. Yêu cầu Agent đọc `foundation/` thay vì tự quy định quy tắc.
- **Recommended next action:** Thiết lập "do-not-touch" cho toàn bộ thư mục `foundation/`.

### 2. Conflicting source tier names
- **Severity:** High
- **Why it matters:** LoreResearch có hệ thống Nhóm 1-5, trong khi LLM Wiki gọi bằng `official_in_game_mirror`, `wiki_reference`... Gây nhầm lẫn trong lúc review source.
- **Guardrail:** Tham chiếu file `SOURCE_TIER_MAPPING_DRAFT.md` (đã tạo) vào tất cả các Pass.
- **Recommended next action:** Cập nhật script validator để parse map này.

### 3. Applying new template over existing pages
- **Severity:** High
- **Why it matters:** Nếu Hermes áp template mới cho các file trong `entities/` mà file đó đang có nội dung cũ, sẽ dẫn đến mất mát lore (corrupt data).
- **Guardrail:** Áp dụng chế độ "chỉ thêm mới hoặc vá" (patch only). Nếu detect file đã tồn tại, yêu cầu human review.
- **Recommended next action:** Validator phải check size file và ngăn việc xoá file lớn để ghi file nhỏ hơn.

### 4. Accidental canon upgrades
- **Severity:** High
- **Why it matters:** Nội dung từ Fandom hoặc Fanon có thể vô tình bị gắn tag CANON do Agent đánh giá lỏng lẻo.
- **Guardrail:** Chạy script `No canon claim without source` trong Quality Gate.
- **Recommended next action:** Triển khai semantic validator trong Pass tới.

### 5. character_intelligence mixed with canon
- **Severity:** High
- **Why it matters:** Thư mục `character_intelligence/` có các note phân tích tâm lý không chính thức. Lấy nội dung này đắp vào `characters/` sẽ phá vỡ canon.
- **Guardrail:** Tách bạch folder. Quy định rõ: `character_intelligence` chỉ dùng để sinh profile writer (Writer context), không dùng làm minh chứng.
- **Recommended next action:** Thêm check cô lập thư mục này vào Validator.

### 6. Stale inventory causing duplicate pages
- **Severity:** Medium
- **Why it matters:** Số lượng file entity trong file log/inventory không khớp với folder hệ thống. Agent tưởng thiếu nên tự gen file mới.
- **Guardrail:** Bắt buộc đồng bộ file index và thư mục thực tế trước mọi hoạt động ghi.
- **Recommended next action:** Cần có một Pass "Reconciliation & Status Baseline".

### 7. Raw source duplication
- **Severity:** Low
- **Why it matters:** Nhập lại một file raw đã có ở `sources/` dưới tên gọi khác.
- **Guardrail:** Check mã SHA256 hoặc trùng lặp content.
- **Recommended next action:** Review kỹ file JSON log tải source.

### 8. Source index drift
- **Severity:** Medium
- **Why it matters:** File nguồn được thêm mới nhưng index bị lạc nhịp.
- **Guardrail:** "No new source ID without source index update".
- **Recommended next action:** Đảm bảo review bundle có mục liệt kê index bị thay đổi.

### 9. Validator false pass
- **Severity:** High
- **Why it matters:** Script kiểm tra hoạt động sai, dẫn đến việc pass lỗi nhưng log ghi "Done".
- **Guardrail:** Luôn in ra `exit_code` rõ ràng và fail-fast script.
- **Recommended next action:** Viết test cứng cho Validator.

### 10. Review bundle stale counts
- **Severity:** Low
- **Why it matters:** Các con số file thay đổi trong review bundle bị lấy từ clipboard cũ hoặc nhớ nhầm (hallucination).
- **Guardrail:** Tính toán trực tiếp bằng lệnh terminal (`wc`, `find`) rồi gắn vào text, không cho model đoán mò.
- **Recommended next action:** Dùng Python OS traversal chuẩn xác.

## Đề Xuất Pass Tiếp Theo
**Pass 19.0 — Character Inventory Reconciliation & Status Baseline**
*Lý do:* Không thể tạo lập file nội dung mới (content-fill) hoặc vá validator nếu baseline inventory hiện tại bị lệch (`stale inventory causing duplicate pages`). Phải kiểm kê lại chính xác tình trạng các trang thực thể hiện tại so với index/header.
