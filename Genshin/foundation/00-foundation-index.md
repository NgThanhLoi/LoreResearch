# Foundation Index

## Trạng thái hiện tại

* **Workspace mạnh ở đâu:**
  * **Source Layer (Nguồn sơ cấp):** Rất mạnh ở kho văn bản gốc vũ khí ([weapon_stories](file:///d:/LoreResseach/Genshin/sources/weapon_stories)) với 227 file và thánh di vật ([artifact_descriptions](file:///d:/LoreResseach/Genshin/sources/artifact_descriptions)) với 61 file. Độ tin cậy cực kỳ cao (90-95%). Các file này đã được chứng minh là các bản ghi gốc chính xác của game.
  * **Quy tắc và sửa lỗi cốt lõi:** Các sửa đổi gần đây đã khắc phục các mâu thuẫn lớn như đồng nhất Ianikuinen = Nibelung (đã tách bạch), xác nhận tính canon của Rotwang và gỡ bỏ sự nhầm lẫn với Sampo Mill, xác định tên của 3 mặt trăng từ nguồn sách *Heart's Desire*, và hoàn thiện thông tin về Fatui (vị trí thứ 11 Pulcinella).
  * **Cấu trúc dữ liệu:** Cấu trúc phân tầng rõ ràng giữa Sources, Entities, Topics và Quests giúp dễ dàng quản trị và tra cứu.

* **Workspace yếu ở đâu:**
  * **Quest Layer (Nhiệm vụ):** Rất yếu. 34 file Archon Quest và 23 file World Quest chỉ có cấu trúc trống rỗng, không chứa tóm tắt nội dung hay hội thoại (mức độ hoàn thiện chỉ đạt 15% về cấu trúc).
  * **Entity Layer (Thực thể):** Rất nhiều file là shell trống. Mục `entities/gods_and_archons` trống 100% (0/13 file). Các quốc gia (`entities/nations`) trống 5/9 quốc gia. Các tổ chức (`entities/organizations`) chỉ điền được 4/14 file.
  * **Character Intelligence:** Gặp tình trạng trộn lẫn headcanon tâm lý học sâu và suy đoán chưa xác thực trong các mục từ 3-8 của khoảng 40+ hồ sơ nhân vật (ví dụ: nỗi sợ bị bỏ rơi của Kaeya, trauma với lửa của Diluc).
  * **Dữ liệu Nod-Krai Acts II-VII:** Thiếu hoàn toàn hội thoại gốc (raw dialogue) và nguồn sơ cấp trong repo, toàn bộ cốt truyện từ bản 6.1 đến 6.7 chỉ dựa trên tóm tắt của nhà nghiên cứu, mang tính unverified cao.

* **Rủi ro lớn nhất:**
  * **Rủi ro OOC (Out of Character):** Người viết vô tình tin vào các suy đoán tâm lý chưa được dán nhãn trong `entities/character_intelligence` và biến nhân vật thành OOC nặng.
  * **Rủi ro Unverified Lore làm nền plot:** Đưa các khái niệm chưa được xác minh hoặc lỗi database (như Columbina = Kuutar, True Welkin Moon, Dottore chế Thần Mặt Trăng Giả, Tháp Embla, Mũi Tên Terpikeraunas, Cỗ Máy Sampo) làm cột trụ chính của cốt truyện, dễ bị game retcon hoặc phá vỡ tính logic.
  * **Rủi ro nhầm lẫn lịch sử:** Conflation giữa cỗ máy của Rotwang và Sampo Mill, hoặc đồng nhất vội vã Ianikuinen với Nibelung.

* **Những file planning cũ còn dùng được:**
  * [00-project-status.md](file:///d:/LoreResseach/Genshin/planning/00-project-status.md): Dùng để nắm bắt tổng quan tiến độ của cơ sở dữ liệu.
  * [01-canon-lock.md](file:///d:/LoreResseach/Genshin/planning/01-canon-lock.md): Dùng làm tài liệu tham chiếu cơ bản cho quy tắc quản trị canon.
  * [02-unverified-lore.md](file:///d:/LoreResseach/Genshin/planning/02-unverified-lore.md): Bảng đăng ký các lore nguy hiểm cần tránh.
  * [03-headcanon-register.md](file:///d:/LoreResseach/Genshin/planning/03-headcanon-register.md): Danh sách headcanon cần rà soát lại để tránh OOC.
  * [04-story-scope.md](file:///d:/LoreResseach/Genshin/planning/04-story-scope.md): Khung khoanh vùng phạm vi viết ban đầu.
  * [08-lore-checklist.md](file:///d:/LoreResseach/Genshin/planning/08-lore-checklist.md): Checklist kiểm tra nhanh khi viết.

* **Những file planning cũ cần archive hoặc không nên dùng làm quyết định:**
  * [05-premise-options.md](file:///d:/LoreResseach/Genshin/planning/05-premise-options.md): Chỉ dùng để tham khảo brainstorming, không dùng làm hướng đi chính.
  * [06-recommended-direction.md](file:///d:/LoreResseach/Genshin/planning/06-recommended-direction.md): Quyết định đề xuất cũ đã lỗi thời vì người viết chưa chọn thể loại và hướng đi.
  * [07-story-bible-skeleton.md](file:///d:/LoreResseach/Genshin/planning/07-story-bible-skeleton.md): Chỉ là khung xương thử nghiệm gắn với các premise cụ thể.
  * [09-next-actions.md](file:///d:/LoreResseach/Genshin/planning/09-next-actions.md): Kế hoạch hành động cũ giả định việc chọn premise sớm, cần được thay thế bằng Data Cleaning Roadmap trung lập.

---

## Các module nền tảng

| Module | File | Mục đích | Trạng thái | Ghi chú |
| :--- | :--- | :--- | :--- | :--- |
| **Canon governance** | [01-canon-governance.md](file:///d:/LoreResseach/Genshin/foundation/01-canon-governance.md) | Quy định cách dùng và phân loại canon cho mọi dự án fanfic. | **Hoàn thành** | Bộ quy tắc lõi cho OS |
| **Source hierarchy** | [02-source-map.md](file:///d:/LoreResseach/Genshin/foundation/02-source-map.md) | Bản đồ định vị các nguồn tài liệu tin cậy và các vùng dữ liệu yếu. | **Hoàn thành** | Dùng để tra cứu nhanh nguồn gốc |
| **Unverified lore** | [03-unverified-lore-register.md](file:///d:/LoreResseach/Genshin/foundation/03-unverified-lore-register.md) | Quản lý và đưa ra phán quyết sử dụng đối với các lore nguy hiểm. | **Hoàn thành** | Rà soát 15+ điểm lore rủi ro cao |
| **Headcanon register** | [04-headcanon-and-fanon-policy.md](file:///d:/LoreResseach/Genshin/foundation/04-headcanon-and-fanon-policy.md) | Quy chuẩn hóa các ranh giới sử dụng headcanon và ngăn ngừa OOC. | **Hoàn thành** | Lọc rủi ro tâm lý học 11+ nhân vật chính |
| **Character usage rules** | [05-character-foundation-template.md](file:///d:/LoreResseach/Genshin/foundation/05-character-foundation-template.md) | Template chuẩn mực để thiết lập hồ sơ nhân vật cho mọi thể loại. | **Hoàn thành** | Khung xây dựng Character Bible |
| **Faction usage rules** | [06-faction-foundation-template.md](file:///d:/LoreResseach/Genshin/foundation/06-faction-foundation-template.md) | Template chuẩn hóa cách thức hoạt động và xung đột của các thế lực. | **Hoàn thành** | Khung xây dựng Faction Bible |
| **Region usage rules** | [07-region-foundation-template.md](file:///d:/LoreResseach/Genshin/foundation/07-region-foundation-template.md) | Template chuẩn hóa thông tin địa lý, đời sống và văn hóa vùng miền. | **Hoàn thành** | Khung xây dựng Worldbuilding Bible |
| **Power system rules** | [08-power-system-governance.md](file:///d:/LoreResseach/Genshin/foundation/08-power-system-governance.md) | Thiết lập giới hạn sức mạnh, quy tắc scaling và các lệnh cấm cụ thể. | **Hoàn thành** | Khóa van an toàn cho combat/magic |
| **Timeline rules** | [09-timeline-and-continuity-rules.md](file:///d:/LoreResseach/Genshin/foundation/09-timeline-and-continuity-rules.md) | Quản lý dòng thời gian cốt truyện và ngăn ngừa đứt gãy logic sự kiện. | **Hoàn thành** | Kèm theo checklist continuity |
| **AU rules** | [10-au-framework.md](file:///d:/LoreResseach/Genshin/foundation/10-au-framework.md) | Khung làm việc thiết lập thế giới song song (AU) có kiểm soát. | **Hoàn thành** | Tránh phá nát cốt lõi nhân vật |
| **Genre adapters** | [11-genre-adapters.md](file:///d:/LoreResseach/Genshin/foundation/11-genre-adapters.md) | Bộ adapter hướng dẫn áp dụng lore cho 10 thể loại fanfic cụ thể. | **Hoàn thành** | Cầu nối từ lore sang cấu trúc truyện |
| **Style guide** | [12-style-guide-foundation.md](file:///d:/LoreResseach/Genshin/foundation/12-style-guide-foundation.md) | Hướng dẫn văn phong viết, quy tắc đưa lore gián tiếp và thoại. | **Hoàn thành** | Chưa chọn tone, trung lập tuyệt đối |
| **Chapter QA** | [13-chapter-quality-gates.md](file:///d:/LoreResseach/Genshin/foundation/13-chapter-quality-gates.md) | Cổng kiểm soát chất lượng chương truyện (Before, During, After). | **Hoàn thành** | Kết hợp QA lore, OOC và continuity |
| **Data cleaning roadmap**| [14-data-cleaning-roadmap.md](file:///d:/LoreResseach/Genshin/foundation/14-data-cleaning-roadmap.md) | Kế hoạch làm sạch cơ sở dữ liệu nền tảng theo mức độ ưu tiên. | **Hoàn thành** | Không phụ thuộc premise |
| **Future project template**| [15-future-project-template.md](file:///d:/LoreResseach/Genshin/foundation/15-future-project-template.md) | Template khai báo dự án fanfic mới để đưa vào chạy thử nghiệm. | **Hoàn thành** | Tệp cấu hình cho mỗi đầu truyện |
| **Archive note** | [16-archive-note-for-premise-files.md](file:///d:/LoreResseach/Genshin/foundation/16-archive-note-for-premise-files.md) | Phân tách rõ ràng các tài liệu thử nghiệm cũ khỏi hệ điều hành mới. | **Hoàn thành** | Tránh sự can thiệp của premise cũ |

---

## Những thứ chưa được làm ở giai đoạn này

* **Chưa chọn premise:** Không chốt bất kỳ cốt truyện, logline hay ý tưởng cụ thể nào.
* **Chưa chọn nhân vật chính:** Hệ thống hoạt động độc lập với việc ai là nhân vật trung tâm.
* **Chưa chọn thể loại:** Chưa ép dự án phải đi theo trinh thám, lãng mạn, slice of life hay phiêu lưu.
* **Chưa lập outline:** Không có outline cho arc lớn hay chi tiết chương.
* **Chưa viết chương:** Không sản sinh bất kỳ văn bản sáng tác, cảnh phim hay hội thoại nào.
