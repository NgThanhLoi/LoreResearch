# Entities Layer

## Purpose

* Lớp dữ liệu lưu trữ hồ sơ chi tiết của các thực thể trong Genshin Impact (nhân vật, thế lực, địa danh, hệ sức mạnh, sự kiện lịch sử, vật phẩm, khái niệm).
* Giúp người viết tra cứu nhanh các thuộc tính cố định của thực thể trước khi đưa vào cốt truyện.
* Đảm bảo tính nhất quán của thực thể qua các thể loại truyện khác nhau.

## Page Schema Summary

Mọi hồ sơ thực thể phải sử dụng frontmatter chuẩn hóa theo `SCHEMA.md` và tuân thủ các đề mục nội dung nghiêm ngặt:
* **Summary:** Tóm tắt ngắn gọn thực thể.
* **Canon Facts:** Danh sách các tuyên bố được chứng minh bằng nguồn sơ cấp (sử dụng Claim format).
* **Strongly Implied:** Các chi tiết ngầm định trong game.
* **Theory / Interpretation:** Giả thuyết cộng đồng hoặc phân tích của nhà nghiên cứu.
* **Headcanon / Fanon:** Thói quen nhỏ hoặc bổ sung sáng tạo.
* **OOC Risks / Unverified:** Cảnh báo các rủi ro viết lệch giọng điệu.
* **Sources:** Danh sách liên kết nguồn thô.
* **Related Pages:** Liên kết ngược đến các thực thể khác.

## Current Status

* **Weapons & Artifacts:** Độ che phủ xuất sắc (kế thừa liên kết từ `sources/`).
* **Nations & Organizations:** Phần lớn là shell rỗng, ngoại trừ Mondstadt và Fatui đã được audit cơ bản.
* **Characters:** Hơn 60 shell thông tin cơ bản. Hồ sơ phân tích tâm lý (`character_intelligence`) đang bị ô nhiễm bởi headcanon chưa dán nhãn.
* **Races & Gods:** Trống hoàn toàn (0% dữ liệu).

## How to Add a New Page

1. Lựa chọn template tương ứng trong thư mục thực thể (ví dụ: `characters/_template.md`).
2. Sao chép và tạo file mới với tên tiếng Anh không dấu, viết theo kiểu snake_case (ví dụ: `kaeyas_profile.md`).
3. Điền đầy đủ thông tin frontmatter và khai báo trạng thái là `draft`.
4. Điền các mục nội dung. Mọi Canon Fact bắt buộc phải có mã Source ID hoặc link đến file nguồn sơ cấp trong `sources/`.
5. Cập nhật liên kết của trang mới vào README chỉ mục của thư mục thực thể đó.

## Warnings about Source & Reliability

> [!WARNING]
> * Cấm tạo hàng loạt trang thực thể trống rỗng không có nội dung.
> * Tuyệt đối không sử dụng các chi tiết trong phần **Theory** hoặc **Headcanon** làm xương sống để giải quyết các nút thắt cốt truyện chính.
> * Rà soát kỹ các hồ sơ nhân vật để bóc tách các suy đoán tâm lý chưa được audit trước khi viết.
