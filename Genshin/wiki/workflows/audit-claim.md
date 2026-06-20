# Workflow: Audit Claim

Quy trình này hướng dẫn cách kiểm duyệt và đánh giá độ tin cậy của một tuyên bố (claim) cụ thể trong cơ sở dữ liệu.

---

## Các bước thực hiện

### Bước 1: Xác định tuyên bố cần kiểm duyệt
1. Định vị tuyên bố cụ thể cần audit (ví dụ: "Zhongli ghét hải sản vì ác mộng thời chiến tranh").
2. Đánh dấu trạng thái trang liên quan là `needs_audit`.

### Bước 2: Tìm kiếm nguồn sơ cấp đối chiếu
1. Thực hiện tìm kiếm trong thư mục `sources/` xem có văn bản vũ khí, di vật, sách hay thoại nhân vật nào đề cập trực tiếp đến chi tiết này không.
2. Nếu không tìm thấy bất kỳ nguồn sơ cấp nào, đánh dấu thuộc tính `source_missing: true` hoặc ghi nhận: *"chưa tìm thấy nguồn trong workspace"*.

### Bước 3: Gán nhãn độ tin cậy
1. Đối chiếu quy định tại [canon-governance.md](../synthesis/canon-governance.md).
2. Phân loại nhãn tương thích:
   - Gán `CANON` nếu có văn bản game trực tiếp xác nhận.
   - Gán `STRONGLY IMPLIED` nếu có ẩn dụ logic rất mạnh.
   - Gán `THEORY` nếu chỉ là suy đoán cộng đồng.
   - Gán `HEADCANON` nếu là thói quen nhỏ do người viết tự bổ sung.
   - Gán `UNVERIFIED` nếu hoàn toàn thiếu bằng chứng đối chiếu.

### Bước 4: Kiểm tra mâu thuẫn dữ liệu
1. So sánh tuyên bố với các nguồn khác. Nếu phát hiện mâu thuẫn trực tiếp (ví dụ: Diluc sợ lửa vs Pyro Vision), tiến hành đăng ký mâu thuẫn mới vào [contradiction-register.md](../synthesis/contradiction-register.md) theo đúng format.
2. Gán nhãn tuyên bố bị xung đột là `ERROR / CONTRADICTION`.

### Bước 5: Cập nhật trang thực thể và Ghi log
1. Cập nhật nhãn độ tin cậy của claim và đính kèm link nguồn thô đối chiếu trên trang thực thể.
2. Đổi trạng thái trang từ `needs_audit` về `active`.
3. Ghi log hoạt động vào [log.md](../log.md).

