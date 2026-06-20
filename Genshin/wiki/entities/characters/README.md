# Characters Index

## Purpose

* Quản lý hồ sơ nhân vật Genshin Impact sử dụng trong các tác phẩm fanfiction.
* Giữ đúng chất giọng (voice), tính cách (personality) và các mối quan hệ (relationships) nguyên bản.
* Ngăn ngừa tối đa rủi ro Out of Character (OOC).

## Character Audit Levels

Các nhân vật trong wiki được phân chia theo 3 cấp độ kiểm định để tối ưu hóa nguồn lực:
1. **Level 1 — Inventory Only:** Nhân vật đã được lập danh mục và phân loại rủi ro sơ bộ. Chưa tiến hành kiểm định sâu từng xác nhận.
2. **Level 2 — OOC Risk Audit:** Nhân vật đã được làm sạch tâm lý học đầu cơ, xác nhận các thuộc tính nguyên tác cốt lõi, nhận diện các bẫy OOC và hướng dẫn chất giọng (Voice Guide).
3. **Level 3 — Full Character Page:** Nhân vật có đầy đủ nguồn sơ cấp hỗ trợ, đạt độ tin cậy tuyệt đối để trở thành thực thể chính thức của wiki.

## Character Inventory & Backlog

* Bảng kiểm kê toàn bộ nhân vật: [character-inventory.md](./character-inventory.md)
* Kế hoạch kiểm định theo từng đợt: [character-audit-backlog.md](../../synthesis/character-audit-backlog.md)

## Current Status & Priority Rules

* **Trạng thái hiện tại (Đợt 3.1):** Đã hoàn thành audit cấp độ **Level 2 OOC Risk Audit** cho lô đầu tiên gồm:
  - [Kaeya](./Kaeya.md)
  - [Diluc](./Diluc.md)
  - [Zhongli](./Zhongli.md)
  - [Lisa](./Lisa.md)
  - [Jean](./Jean.md)
* **Quy tắc độ ưu tiên:**
  - **Không thực hiện deep-audit toàn bộ dàn nhân vật** trước khi xác định rõ phạm vi dự án để tránh lãng phí tài nguyên.
  - Các nhân vật có độ ưu tiên thấp (low-priority) sẽ được giữ ở mức **Level 1 — Inventory Only** cho đến khi có dự án truyện cụ thể yêu cầu sử dụng họ.

## Page Schema Summary

Mọi hồ sơ nhân vật phải tuân theo cấu trúc mẫu tại `_template.md` bao gồm:
* **Voice Guide:** Định hướng cách xưng hô, nhịp điệu nói chuyện.
* **Canon Identity & Personality:** Mô tả tính cách đã được xác thực.
* **OOC Risks:** Các bẫy fanon/headcanon phổ biến cần tránh.
* **Genre Usage:** Cách điều chỉnh nhân vật phù hợp với từng thể loại (Romance, Dark fantasy, Slice of life...).

## How to Add New Page

1. Nhân bản file `_template.md` sang tên mới (ví dụ: `Kaeya.md`).
2. Điền frontmatter YAML.
3. Tham chiếu dữ liệu từ `sources/voice_lines/` và hồ sơ chính thức của game để điền thông tin.
4. Ghi rõ các rủi ro OOC tương ứng.
