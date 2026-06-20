# Workflow: Add New Source

Quy trình này hướng dẫn cách thức LLM hoặc người dùng tích hợp một tài liệu nguồn sơ cấp mới vào workspace.

---

## Các bước thực hiện

### Bước 1: Lưu trữ tệp nguồn thô
1. Đảm bảo file nguồn thô (raw source) được đặt đúng thư mục trong `sources/` (ví dụ: `sources/weapon_stories/` hoặc `sources/voice_lines/`).
2. Tên file tiếng Anh không dấu, sử dụng snake_case.

### Bước 2: Gán mã Source ID
1. Đối chiếu quy tắc định danh Source ID tại [source-index.md](../sources/source-index.md).
2. Gán mã định danh tương ứng:
   - `WS-xxxx` cho weapon stories.
   - `AR-xxxx` cho artifact descriptions.
   - `BK-xxxx` cho books.
   - `QD-xxxx` cho quest dialogue.
   - `VL-xxxx` cho voice lines.

### Bước 3: Cập nhật chỉ mục nguồn
1. Mở file [source-index.md](../sources/source-index.md).
2. Thêm một dòng mới vào bảng chỉ mục tương ứng bao gồm: Source ID, Path, Source type, Reliability, Main topics, và các ghi chú.

### Bước 4: Liên kết đến các trang Entity/Synthesis liên quan
1. Rà soát xem nguồn mới có cung cấp thêm minh chứng cho thực thể hay chính sách sức mạnh/timeline nào không.
2. Cập nhật mã nguồn hoặc link đến tệp nguồn thô mới vào phần `Sources` của các trang thực thể liên quan.

### Bước 5: Ghi nhật ký thay đổi
1. Mở file [log.md](../log.md).
2. Thêm một bản ghi log mới ghi nhận ngày hiện tại, ghi rõ hành động thêm nguồn và lý do.

