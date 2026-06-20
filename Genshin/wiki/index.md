# Wiki Index

## High-Level Navigation

| Area | Folder/File | Purpose | Reliability | Notes |
| :--- | :--- | :--- | :---: | :--- |
| **Wiki Core** | [README.md](README.md) | Giới thiệu, nguyên tắc và hướng dẫn LLM | High | Điểm khởi đầu cho Agent |
| **Schema** | [SCHEMA.md](SCHEMA.md) | Quy chuẩn định dạng claim, frontmatter, nhãn | High | Cấu trúc dữ liệu chuẩn |
| **Sources** | [sources/](sources/README.md) | Bản đồ nguồn và báo cáo chất lượng nguồn thô | High | Tránh bịa lore |
| **Entities** | [entities/](entities/README.md) | Chỉ mục thực thể (nhân vật, vùng đất, sức mạnh...) | Mixed | Chứa nhiều template mẫu |
| **Synthesis** | [synthesis/](synthesis/README.md) | Hệ điều hành lore (Chính sách, văn phong, QA) | High | Di trú từ foundation/ |
| **Workflows** | [workflows/](workflows/README.md) | Các quy trình thao tác và kiểm tra độ tin cậy | High | Quy trình tự động hóa |
| **Projects** | [projects/](projects/_template/Project_Profile.md) | Thư mục mẫu dự án fanfic trong tương lai | High | Khung thiết lập cấu hình |

## Core Synthesis Pages

* [canon-governance.md](synthesis/canon-governance.md): Phân cấp nguồn và chính sách nhãn.
* [unverified-lore-register.md](synthesis/unverified-lore-register.md): Danh sách các lore nguy hiểm và phán quyết.
* [headcanon-fanon-policy.md](synthesis/headcanon-fanon-policy.md): Ranh giới sử dụng và phòng ngừa OOC.
* [contradiction-register.md](synthesis/contradiction-register.md): Nơi lưu trữ các mâu thuẫn dữ liệu lớn.
* [ooc-risk-index.md](synthesis/ooc-risk-index.md): Chỉ mục rủi ro OOC nhân vật.
* [power-system-governance.md](synthesis/power-system-governance.md): Quy tắc scaling và hạn chế combat nguyên tố.
* [timeline-continuity.md](synthesis/timeline-continuity.md): Quản lý dòng thời gian và điểm rẽ nhánh.
* [au-framework.md](synthesis/au-framework.md): Khung thiết lập thế giới song song.
* [genre-adapters.md](synthesis/genre-adapters.md): Cầu nối áp dụng lore cho từng thể loại truyện.
* [style-guide.md](synthesis/style-guide.md): Hướng dẫn viết gián tiếp, show-don't-tell và hội thoại.
* [chapter-quality-gates.md](synthesis/chapter-quality-gates.md): Cổng kiểm soát QA cho chương truyện.
* [data-cleaning-roadmap.md](synthesis/data-cleaning-roadmap.md): Kế hoạch làm sạch và chuẩn hóa dữ liệu wiki.

## Entity Indexes

* [characters/README.md](entities/characters/README.md): Thực thể Nhân Vật.
* [factions/README.md](entities/factions/README.md): Thực thể Thế Lực / Tổ Chức.
* [regions/README.md](entities/regions/README.md): Thực thể Địa Lý / Quốc Gia.
* [powers/README.md](entities/powers/README.md): Thực thể Hệ Sức Mạnh.
* [events/README.md](entities/events/README.md): Thực thể Sự Kiện Lịch Sử.
* [items/README.md](entities/items/README.md): Thực thể Vật Phẩm / Vũ Khí / Thánh Di Vật.
* [concepts/README.md](entities/concepts/README.md): Thực thể Khái Niệm / Cosmology.

## Known High-Risk Areas (Khu vực rủi ro cao)

Agent cần đặc biệt lưu ý khi làm việc với các vùng dữ liệu sau:
1. **Nod-Krai Acts II–VII:** Thiếu hoàn toàn hội thoại gốc (raw dialogue) trong repo, cốt truyện dựa trên tóm tắt lý thuyết.
2. **Columbina = Kuutar:** Liên kết mang tính giả thuyết suy luận, không được khẳng định tuyệt đối.
3. **True Welkin Moon & Tri-Lunar Authority:** Không tìm thấy nguồn sơ cấp, hoàn toàn unverified.
4. **Dottore tạo Thần Mặt Trăng Giả:** Theory có rủi ro cao làm hỏng power scaling.
5. **Ianikuinen = Nibelung:** Lập lờ giữa Thợ rèn Moon và Long Vương. Đã tách biệt thành 2 thực thể.
6. **Tháp Embla & Mũi Tên Terpikeraunas:** Tên gọi unverified không xuất hiện trong in-game sources.
7. **Cỗ Máy Sampo của Rotwang:** Lỗi conflation với di vật trăng lạnh Sampo Mill.
8. **Character Intelligence chứa headcanon chưa gắn nhãn:** Hơn 40 file chứa suy đoán tâm lý học sâu (như Diluc sợ lửa, Kaeya sợ bị bỏ rơi, Zhongli trauma hải sản).
9. **Quest layer rỗng:** Thư mục `quests/` chỉ có khung xương, không có tóm tắt hội thoại thực tế.

## LLM Quick-Start

Nếu cần giải đáp hoặc viết về:
* **Canon:** Đọc [canon-governance.md](synthesis/canon-governance.md) + [sources/source-map.md](sources/source-map.md) + trang thực thể liên quan.
* **Nhân vật:** Đọc trang character tương ứng + [ooc-risk-index.md](synthesis/ooc-risk-index.md) + [headcanon-fanon-policy.md](synthesis/headcanon-fanon-policy.md).
* **Sức mạnh:** Đọc [power-system-governance.md](synthesis/power-system-governance.md) + trang power tương ứng.
* **AU (Thế giới song song):** Đọc [au-framework.md](synthesis/au-framework.md) + mẫu khai báo dự án.
* **Dòng thời gian:** Đọc [timeline-continuity.md](synthesis/timeline-continuity.md) + trang event tương ứng.
* **Văn phong & Thể loại:** Đọc [genre-adapters.md](synthesis/genre-adapters.md) + [style-guide.md](synthesis/style-guide.md).
