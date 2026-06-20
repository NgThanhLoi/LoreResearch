# Data Cleaning Roadmap

Tài liệu này vạch ra lộ trình làm sạch, chuẩn hóa và hoàn thiện cơ sở dữ liệu của dự án Genshin Impact Lore. Lộ trình này được thiết kế trung lập, tập trung vào hoàn thiện nền tảng cốt lõi và không phụ thuộc vào bất kỳ premise hay thể loại truyện cụ thể nào.

---

## Các mức độ ưu tiên làm sạch

### Ưu tiên cao (High Priority)
*Những công việc bắt buộc phải hoàn thành trước khi viết dòng đầu tiên của bất kỳ câu chuyện nào:*
* **Chốt nhãn độ tin cậy cốt lõi (Canon labels):** Đồng bộ hóa các nhãn dán CANON, THEORY, HEADCANON, UNVERIFIED vào toàn bộ các tài liệu phân tích hiện có.
* **Hoàn thiện Unverified Lore Register:** Đảm bảo toàn bộ 15 điểm lore nguy hiểm đã được phân loại và chốt phán quyết sử dụng.
* **Thanh lọc hồ sơ nhân vật (Character DB Cleaning):** Tiến hành rà soát các hồ sơ nhân vật chính trong `entities/character_intelligence/` để bóc tách hoặc gắn nhãn cảnh báo đối với các suy đoán tâm lý học sâu chưa được xác thực ở các mục từ 3 đến 8.
* **Khóa van hệ thống sức mạnh (Power Governance):** Ban hành và tuân thủ các quy tắc giới hạn scaling sức mạnh và cấm đoán combat phi lý.
* **Thiết lập quy tắc timeline:** Áp dụng checklist nhất quán sự kiện lịch sử cố định.

### Ưu tiên trung bình (Medium Priority)
*Những công việc chỉ tiến hành thực hiện khi người viết đã bắt đầu chọn được premise và thể loại cụ thể:*
* **Xây dựng Character Bible chi tiết:** Áp dụng [05-character-foundation-template.md](file:///d:/LoreResseach/Genshin/foundation/05-character-foundation-template.md) để hoàn thiện hồ sơ cho riêng các nhân vật sẽ trực tiếp xuất hiện trong truyện.
* **Xây dựng Faction Bible liên quan:** Áp dụng [06-faction-foundation-template.md](file:///d:/LoreResseach/Genshin/foundation/06-faction-foundation-template.md) để phác thảo cơ cấu và xung đột của riêng các tổ chức tham gia cốt truyện.
* **Xây dựng Region Bible liên quan:** Áp dụng [07-region-foundation-template.md](file:///d:/LoreResseach/Genshin/foundation/07-region-foundation-template.md) để khóa worldbuilding của quốc gia bối cảnh.
* **Tóm tắt Quest cụ thể:** Chỉ lấp đầy nội dung cho các file nhiệm vụ trong [quests/](file:///d:/LoreResseach/Genshin/quests) nếu cốt truyện của fanfic chạm trực tiếp vào dòng sự kiện của nhiệm vụ đó.

### Ưu tiên thấp (Low Priority)
*Những công việc chưa cần thiết thực hiện ở giai đoạn này và nên trì hoãn để tránh lãng phí tài nguyên:*
* **Lấp đầy toàn bộ nation trống:** Chưa cần viết bối cảnh chi tiết cho Liyue, Inazuma, Sumeru, v.v. khi câu chuyện chưa có dấu hiệu dịch chuyển địa lý tới đó.
* **Tóm tắt toàn bộ 57 file quest trống:** Việc lấp đầy các file quest không có vai trò thúc đẩy cốt truyện hiện tại là không cần thiết.
* **Viết chi tiết hồ sơ 13 vị thần/archons trống:** Trì hoãn trừ khi nhân vật chính đối đầu trực tiếp với họ.
* **Lập outline chi tiết chương:** Tuyệt đối không lập outline khi người viết chưa chọn hướng đi cốt truyện.
* **Tạo thêm nhân vật tự tạo (OC):** Tránh việc tạo thêm hàng chục OC mới khi chưa thiết lập xong bộ khung giới hạn sức mạnh.

---

## Bảng danh sách các file cần làm sạch (Cleaning Backlog)

Dựa trên báo cáo kiểm toán độ tin cậy ([RELIABILITY_SUMMARY.md](file:///d:/LoreResseach/Genshin/RELIABILITY_SUMMARY.md)), dưới đây là danh sách các file và thư mục cần được dọn dẹp kiểm soát:

| File / Folder | Vấn đề hiện tại | Mức ưu tiên | Loại công việc | Ghi chú & Hành động cụ thể |
| :--- | :--- | :---: | :--- | :--- |
| Thư mục [character_intelligence/](file:///d:/LoreResseach/Genshin/entities/character_intelligence) | Chứa khoảng 40+ hồ sơ nhân vật có suy đoán tâm lý học sâu tự biên (fanon/headcanon) chưa được dán nhãn tại các mục từ 3-8. | **CAO** | Thanh lọc dữ liệu | Rà soát từng file nhân vật (đặc biệt là Kaeya, Diluc, Lisa, Jean, Albedo, Klee, Neuvillette, Furina) để di dời các suy đoán vào mục Headcanon hoặc gắn nhãn 🟡 / HEADCANON rõ ràng. |
| File [Dragon Sovereigns Overview](file:///d:/LoreResseach/Genshin/entities/dragon_sovereigns) (nếu có) | Vẫn còn chứa các tuyên bố chưa chính xác đồng nhất Ianikuinen = Nibelung. | **CAO** | Sửa lỗi mâu thuẫn | Tách bạch rõ ràng danh tính Thợ Rèn Nguyên Thủy Ianikuinen khỏi Long Vương Nibelung. |
| Thư mục [topics/nod-krai/](file:///d:/LoreResseach/Genshin/topics/nod-krai) | 2 file phân tích chủ đề vẫn chứa các lập luận chưa chỉnh sửa về sự đồng nhất Nibelung. | **CAO** | Sửa lỗi mâu thuẫn | Chỉnh sửa nội dung, thêm nhãn cảnh báo ❓ Unverified đối với các sự kiện thuộc Act II-VII. |
| File [organizations/regional/Nod_Krai_Factions.md](file:///d:/LoreResseach/Genshin/entities/organizations/regional/Nod_Krai_Factions.md) | Chứa nhiều tuyên bố về các phe phái Nod-Krai chưa có nguồn sơ cấp đối chiếu. | **TRUNG BÌNH** | Dán nhãn kiểm soát | Gắn nhãn ❓ Unverified vào các phần mô tả phe phái chưa có raw dialogue game. |
| Thư mục [nations/](file:///d:/LoreResseach/Genshin/entities/nations) | Trống hoàn toàn thông tin chi tiết của 5 quốc gia (Liyue, Inazuma, Sumeru, Fontaine, Natlan). | **THẤP** | Lấp đầy dữ liệu | Chỉ hoàn thiện khi cốt truyện fanfic di chuyển đến các quốc gia tương ứng. |
| Thư mục [quests/](file:///d:/LoreResseach/Genshin/quests) | 57 file cấu trúc nhiệm vụ trống rỗng 100% nội dung tóm tắt. | **THẤP** | Lấp đầy dữ liệu | Chỉ tóm tắt các quest trực tiếp liên quan đến dòng thời gian của truyện đã chọn. |
| Thư mục [gods_and_archons/](file:///d:/LoreResseach/Genshin/entities/gods_and_archons) | 13 file thần linh đều là template trống rỗng. | **THẤP** | Lấp đầy dữ liệu | Trì hoãn cho đến khi có yêu cầu cụ thể từ cốt truyện. |
