# Workflow: Create Entity Page

Quy trình này hướng dẫn các bước để LLM hoặc người viết tạo mới một hồ sơ thực thể (entity page) chuẩn hóa.

---

## Các bước thực hiện

### Bước 1: Chọn tệp mẫu (Template) tương thích
1. Xác định loại thực thể cần tạo (character, faction, region, power, event, item, concept).
2. Định vị tệp mẫu tương ứng trong thư mục con của `entities/` (ví dụ: `entities/characters/_template.md`).

### Bước 2: Nhân bản và đặt tên tệp mới
1. Sao chép nội dung tệp mẫu sang file mới.
2. Đặt tên file bằng tiếng Anh không dấu, sử dụng snake_case (ví dụ: `kaeyas_profile.md`).

### Bước 3: Điền Frontmatter YAML
1. Khai báo các thông số frontmatter theo chuẩn SCHEMA.md.
2. Gán trạng thái ban đầu là `status: draft`.
3. Điền ngày hiện tại vào `last_audited: YYYY-MM-DD`.

### Bước 4: Điền thông tin và Canon Facts
1. Trích lục thông tin từ các nguồn thô.
2. Thiết lập các Canon Facts sử dụng đúng claim format:
   - Gán nhãn `CANON` hoặc nhãn độ tin cậy tương ứng.
   - Trích dẫn đường dẫn nguồn sơ cấp cụ thể trong `sources/`.

### Bước 5: Thiết lập liên kết ngược (Related Pages)
1. Điền thông tin liên kết ngược đến các thực thể khác liên quan (nhân vật, vùng đất, thế lực...).
2. Đảm bảo các liên kết sử dụng chuẩn markdown chéo.

### Bước 6: Cập nhật chỉ mục thư mục
1. Mở file README chỉ mục của thư mục thực thể đó (ví dụ: `entities/characters/README.md`).
2. Thêm liên kết của trang thực thể mới tạo vào phần danh sách.
