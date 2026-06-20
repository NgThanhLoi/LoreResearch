# Source Quality Report

Báo cáo này phân tích thực trạng chất lượng, độ che phủ và rủi ro của cơ sở dữ liệu hiện có trong workspace nhằm định hướng công tác làm sạch dữ liệu.

## 1. Source Pools Indexed in Pass 2 (Các nhóm nguồn đã lập chỉ mục)

Trong đợt Pass 2, chúng tôi đã tiến hành lập chỉ mục chi tiết cấp tệp tin (file-level) cho các tệp tin đại diện trong các nhóm nguồn mạnh nhất:
* **Weapon Stories:** Đã lập chỉ mục `Kiếm Giáng Lâm.md` (WS-0001), `Hình Thái Xích Nguyệt.md` (WS-0002), `Phong Ưng Kiếm.md` (WS-0003), `Đường Cùng Của Sói.md` (WS-0004), `Lưỡi Kiếm Narzissenkreuz.md` (WS-0005).
* **Artifact Descriptions:** Đã lập chỉ mục `Đêm Trời Hé Lộ.md` (AR-0001), `Ảo Tưởng Vụn Vỡ Trong Bóng Tối.md` (AR-0002), `Kỵ Sĩ Đạo Nhuốm Máu.md` (AR-0003), `Thợ Săn Marechaussee.md` (AR-0004).
* **Book Texts:** Đã lập chỉ mục `Giấc Mơ Tan Vỡ.md` (BK-0001), `Kho Tàng Vương Quốc Đêm Trắng.md` (BK-0002), `nod-krai/Hymns of the Far North.md` (BK-0003), `Đạo Tặc Reed Miller Huyền Thoại.md` (BK-0004).
* **Voice Lines:** Đã lập chỉ mục `voice_lines/characters/Kaeya.md` (VL-0001) và `voice_lines/characters/Skirk.md` (VL-0002).
* **Entities & Topics:** Đã lập chỉ mục `Timeline.md` (EN-0001), `dragon_sovereigns/Overview.md` (EN-0002), `topics/nod-krai/mythology.md` (TP-0001), `topics/nod-krai/Nod_Krai.md` (TP-0002).

## 2. Source Pools Still Not Indexed (Các nhóm nguồn chưa được lập chỉ mục)

* **Quest Dialogue:** Không có tệp tin hay thư mục nào thuộc `sources/quest_dialogue/` được lập chỉ mục vì thư mục này không tồn tại trong workspace.
* **Official Sources:** Không có tệp tin hay thư mục nào thuộc `sources/official/` được lập chỉ mục vì thư mục này không tồn tại trong workspace.
* **Manga Transcripts:** Thư mục `sources/manga_transcripts/` chưa được lập chỉ mục.
* **Weapon & Artifact Remainder:** Khoảng 222 file vũ khí và 57 file di vật còn lại chưa được lập chỉ mục chi tiết cấp file.
* **Gods and Archons:** Tất cả 13 tệp trong `entities/gods_and_archons/` chưa được lập chỉ mục vì đều là shell trống.

## 3. Missing or Weak Source Areas (Các vùng nguồn thô bị thiếu hụt hoặc yếu)

* **Quest Layer (`quests/`):** Rỗng hoàn toàn (0% dữ liệu tóm tắt). Đây là cơ sở hạ tầng rỗng, chỉ hữu ích để khóa mốc thời gian nhiệm vụ.
* **Nod-Krai Acts II–VII:** Hoàn toàn thiếu hội thoại gốc (raw dialogue) để đối chiếu, toàn bộ cốt truyện chỉ dựa trên tóm tắt lý thuyết (TP-0002).
* **Character Intelligence:** 40+ tệp tin nhân vật trong `entities/character_intelligence/` chứa nhiều headcanon/fanon tự biên chưa được dán nhãn và tách biệt.

## 4. Next Source-Indexing Targets (Mục tiêu lập chỉ mục tiếp theo)

1. **[ ] Indexing Weapon Stories (WS-xxxx):** Tập trung lập chỉ mục cho các vũ khí liên quan đến Mondstadt và Khaenri'ah.
2. **[ ] Indexing Artifact Descriptions (AR-xxxx):** Lập chỉ mục các bộ thánh di vật về Crimson Moon và các nền văn minh cổ.
3. **[ ] Indexing Character Voice Lines (VL-xxxx):** Lập chỉ mục chi tiết cho Diluc và Zhongli.
