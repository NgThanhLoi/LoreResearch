# Data Cleaning Roadmap

Tài liệu này vạch ra lộ trình làm sạch, chuẩn hóa và hoàn thiện cơ sở dữ liệu cho hệ thống LLM Wiki. Lộ trình này được thiết kế trung lập, tập trung vào hoàn thiện nền tảng cốt lõi và không phụ thuộc vào bất kỳ premise hay thể loại truyện cụ thể nào.

---

## 1. Các mức độ ưu tiên làm sạch (Cleaning Priorities)

### Ưu tiên cao (High Priority)
*Những công việc bắt buộc phải hoàn thành trước khi thiết lập bất kỳ dự án fanfic nào:*
* **Chốt nhãn độ tin cậy cốt lõi (Claim labels & Page schema):** Đồng bộ hóa các nhãn dán CANON, THEORY, HEADCANON, UNVERIFIED và cấu trúc frontmatter vào toàn bộ các tài liệu phân tích hiện có.
* **Hoàn thiện Unverified Lore Register:** Đảm bảo toàn bộ 15 điểm lore nguy hiểm đã được phân loại và chốt phán quyết sử dụng.
* **Thanh lọc hồ sơ nhân vật (Character page audit priority):** Tiến hành rà soát các hồ sơ nhân vật chính trong `entities/character_intelligence/` để bóc tách hoặc gắn nhãn cảnh báo đối với các suy đoán tâm lý học sâu chưa được xác thực ở các mục từ 3 đến 8.
* **Khóa van hệ thống sức mạnh (Power page audit priority):** Ban hành và tuân thủ các quy tắc giới hạn scaling sức mạnh và cấm đoán combat phi lý tại `power-system-governance.md`.

### Ưu tiên trung bình (Medium Priority)
*Những công việc chỉ tiến hành thực hiện khi người viết đã bắt đầu chọn được cấu trúc dự án cụ thể:*
* **Xây dựng Character Bible chi tiết:** Hoàn thiện hồ sơ cho riêng các nhân vật sẽ trực tiếp xuất hiện trong truyện dựa trên template nhân vật.
* **Xây dựng Faction Bible liên quan:** Áp dụng template thế lực để phác thảo cơ cấu và xung đột của riêng các tổ chức tham gia cốt truyện.
* **Xây dựng Region Bible liên quan:** Áp dụng template vùng miền để khóa worldbuilding của quốc gia bối cảnh.
* **Tóm tắt Quest cụ thể:** Chỉ lấp đầy nội dung cho các file nhiệm vụ trong [quests/](quests/) nếu cốt truyện của fanfic chạm trực tiếp vào dòng sự kiện của nhiệm vụ đó.

### Ưu tiên thấp (Low Priority)
*Những công việc chưa cần thiết thực hiện ở giai đoạn này và nên trì hoãn để tránh lãng phí tài nguyên:*
* **Lấp đầy toàn bộ nation trống:** Chưa cần viết bối cảnh chi tiết cho Liyue, Inazuma, Sumeru, v.v. khi câu chuyện chưa có dấu hiệu dịch chuyển địa lý tới đó.
* **Tóm tắt toàn bộ 57 file quest trống:** Việc lấp đầy các file quest không có vai trò thúc đẩy cốt truyện hiện tại là không cần thiết.
* **Viết chi tiết hồ sơ 13 vị thần/archons trống:** Trì hoãn trừ khi nhân vật chính đối đầu trực tiếp với họ.

---

## 2. Chiến lược xử lý các vùng trống (Layer Strategies)

### Chiến lược cho Quest Layer (Quest Layer Strategy)
* **Quy tắc:** **KHÔNG** lấp đầy toàn bộ 57 file quest trống một cách ồ ạt.
* **Hành động:** Chỉ bổ sung tóm tắt cốt truyện và lời thoại cho một quest cụ thể khi dự án fanfic được duyệt yêu cầu nhân vật đi qua hoặc nhắc lại sự kiện của quest đó. Giữ các quest khác ở dạng khung xương (skeleton) để tối ưu không gian lưu trữ.

### Chiến lược cho Entity Shells (Entity Shell Strategy)
* **Quy tắc:** **KHÔNG** viết bừa bãi hoặc tự bịa thông tin cho các quốc gia hay thần linh đang trống rỗng.
* **Hành động:** Chấp nhận sự tồn tại của các tệp shell trống. Khi cần dùng đến một quốc gia (như Snezhnaya) hoặc một thần linh (như Tsaritsa), tiến hành nhân bản template và điền thông tin dựa trên dữ liệu sơ cấp thực tế của game.

---

## 3. Lộ trình ưu thiện cụ thể (Roadmap Backlog)

| Thứ tự | Nhiệm vụ làm sạch | Mức ưu tiên | Đối tượng ảnh hưởng | Hành động cụ thể |
| :--- | :--- | :---: | :--- | :--- |
| 1 | **Audit Character Intelligence** | Cao | `entities/character_intelligence/` | Rà soát 40+ file nhân vật (đặc biệt là Kaeya, Diluc, Lisa, Jean, Albedo, Klee, Neuvillette, Furina) để gắn nhãn 🟡 hoặc di dời suy đoán tâm lý tự biên vào mục Headcanon. |
| 2 | **Claim labels & Page schema** | Cao | Toàn bộ Wiki | Áp dụng cấu trúc YAML frontmatter và claim format chuẩn hóa cho mọi trang đang hoạt động. |
| 3 | **Source Indexing (Source indexing priority)** | Trung bình | `sources/source-index.md` | Tiếp tục lập chỉ mục chi tiết cấp file/dòng cho các bộ vũ khí (`sources/weapon_stories/`) và thánh di vật (`sources/artifact_descriptions/`). |
| 4 | **Audit Power Claims (Power page audit)** | Trung bình | `synthesis/power-system-governance.md` | Rà soát và cập nhật độ tin cậy của các tuyên bố sức mạnh cổ xưa (Abyss, Khemia) dựa trên các trích dẫn in-game. |
| 5 | **Entity shell population** | Thấp | `entities/` | Chỉ hoàn thiện các shell trống của quốc gia/thế lực khi có yêu cầu cụ thể từ cốt truyện dự án. |

---

## 4. Post Pass 2 Roadmap

### Done in Pass 2
* **Link Portability:** Chuyển đổi toàn bộ liên kết tuyệt đối `file:///d:/LoreResseach/Genshin/` thành liên kết tương đối (relative links) hoặc liên kết tương đối workspace (workspace-relative) để đảm bảo wiki hoạt động trên mọi môi trường.
* **Source Index Partial Expansion:** Mở rộng bảng `source-index.md` từ cấp độ thư mục thành cấp độ tệp tin cho 15+ tài liệu thô quan trọng thuộc vũ khí, di vật, sách cổ và thoại nhân vật.
* **Unverified Lore Source Status Audit:** Rà soát cột nguồn hiện có trong `unverified-lore-register.md` và bổ sung cột trạng thái nguồn thô (`Source status`) cho 15 điểm lore có rủi ro cao.
* **Power Claim Audit:** Bổ sung 13 phần claim-level cụ thể trong `power-system-governance.md` (PWR-xxxx) phân tích rõ ràng nguồn gốc Vision, thiết bị giám sát, Gnosis xiềng xích, và logic của Descender.
* **Contradiction Register Update:** Cập nhật trạng thái giải quyết cho các mâu thuẫn cũ và ghi nhận thêm các lỗi mâu thuẫn mới liên quan đến thư mục ảo và xiềng xích Gnosis.

### Next high-priority wiki tasks
* **Character Intelligence Audit:** Tiến hành rà soát chuyên sâu 40+ hồ sơ nhân vật (đặc biệt là nhóm nhân vật rủi ro cao như Kaeya, Diluc) để bóc tách các headcanon tâm lý học tự biên.
* **Tạo trang nhân vật thực tế:** Chỉ khởi tạo trang nhân vật chính thức đầu tiên sau khi hồ sơ phân tích tương ứng đã được audit và làm sạch hoàn toàn.
* **Tạo trang sức mạnh thực tế:** Chỉ khởi tạo trang sức mạnh chính thức đầu tiên (Vision/Delusion) sau khi các tuyên bố đã có đầy đủ nguồn sơ cấp đối chiếu.
* **Tiếp tục lập chỉ mục nguồn thô:** Tiếp tục mở rộng indexing cấp tệp tin cho phần còn lại của kho vũ khí và thánh di vật.
* **Bổ sung tóm tắt Quest:** Chỉ tóm tắt cốt truyện của quest khi dự án fanfic tương lai bắt đầu đi qua các mốc nhiệm vụ đó.

### Still not recommended (Cấm thực hiện ở giai đoạn này)
* **Lập outline chương hoặc tóm tắt chương truyện.**
* **Chọn premise cụ thể hoặc viết thử chương.**
* **Tạo nhân vật tự biên (OC).**
* **Lấp đầy toàn bộ nation shells hoặc quest layer trống.**
