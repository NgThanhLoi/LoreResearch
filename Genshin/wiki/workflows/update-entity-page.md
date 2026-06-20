# Workflow: Update Entity Page

Quy trình này hướng dẫn cách cập nhật thông tin trên một trang hồ sơ thực thể sẵn có khi phát hiện dữ liệu mới hoặc có bản cập nhật patch game mới.

---

## Các quy tắc an toàn dữ liệu

* **CẤM ghi đè Claim cũ vô căn cứ:** Tuyệt đối không xóa bỏ các ghi chép claim cũ đã được audit trừ khi chứng minh được nó là lỗi sai thực tế.
* **Bảo toàn lịch sử:** Nếu có nguồn mới phủ định thông tin cũ, tiến hành cập nhật nhãn của claim cũ và đính kèm ghi chú giải thích thay vì xóa bỏ.

---

## Các bước thực hiện

### Bước 1: Khai báo trạng thái kiểm duyệt
1. Mở trang thực thể cần cập nhật.
2. Đổi trạng thái frontmatter sang `status: needs_audit`.

### Bước 2: Tích hợp nguồn mới và Cập nhật nhãn
1. Nếu nguồn mới nâng cao độ tin cậy của một giả thuyết cũ, chuyển nhãn của claim từ `THEORY` hoặc `STRONGLY IMPLIED` thành `CANON`.
2. Thay đổi giá trị `source_level` và trích dẫn link nguồn mới ở cuối claim.

### Bước 3: Đăng ký mâu thuẫn (nếu có)
1. Nếu thông tin mới mâu thuẫn trực tiếp với một claim cũ trên trang mà không thể tự giải quyết:
   - Giữ nguyên cả hai claim.
   - Ghi nhận mâu thuẫn mới vào [contradiction-register.md](../synthesis/contradiction-register.md).
   - Gán nhãn `ERROR / CONTRADICTION` cho cả hai claim trên trang thực thể cho đến khi có phán quyết chính thức.

### Bước 4: Đóng Audit và Ghi log
1. Đổi trạng thái trang về `status: active` và cập nhật ngày `last_audited`.
2. Ghi chép changelog chi tiết vào [log.md](../log.md) theo mẫu định dạng quy định.

