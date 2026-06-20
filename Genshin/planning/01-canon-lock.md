# Canon Lock

## Canon version / phạm vi canon

* Ghi rõ phạm vi dữ liệu đang dùng: Dữ liệu dựa trên hệ thống base của Genshin Impact tính đến hiện tại, được phản ánh qua các source đã lưu trữ trong `sources/`.
* Đối với vùng Nod-Krai (Version 6.1-6.7): Các sự kiện thuộc Act II–VII chưa được dùng làm canon tuyệt đối do hiện tại đang bị flag ❓ Unverified (thiếu source sơ cấp/raw dialogue). Chỉ được phép dùng làm nền nếu dán nhãn AU/Theory.

## Source hierarchy

Sắp xếp độ tin cậy từ cao xuống thấp để lấy chất liệu viết truyện:

1. **Source sơ cấp trong game**: quest dialogue, item description, artifact lore, book, character story (Nằm trong `sources/weapon_stories/`, `sources/artifact_descriptions/`).
2. **Official website / official trailer / official post**: Dữ liệu từ các kênh truyền thông chính thức.
3. **Tóm tắt nội bộ có dẫn nguồn**: Các file overview có cite nguồn cụ thể trong `entities/`.
4. **Phân tích / theory**: Các kết nối và diễn giải trong `topics/` (như `relationship_graphs.md`).
5. **Headcanon / AU**: Các suy đoán tâm lý và thói quen cá nhân trong `entities/character_intelligence/`.

## Canon chắc chắn

| Lore point | Mức độ chắc chắn | Nguồn nội bộ | Ghi chú sử dụng trong truyện |
| ---------- | ---------------- | ------------ | ---------------------------- |
| Tiểu sử Vũ khí / Di vật | 95/100 | `sources/weapon_stories/`, `sources/artifact_descriptions/` | Dùng làm xương sống cho các plot liên quan lịch sử. |
| Tên 3 mặt trăng (Aria, Sonnet, Canon) | 90/100 | `RELIABILITY_SUMMARY.md` | Dùng được, nhưng không gán vội tính chất (Frost/Eternal...) nếu chưa check. |
| Mục đích của Rotwang | 90/100 | Artifact source | Có thể dùng để xây dựng động cơ cho NPC hệ Khaenri'ah. |

## Canon cần kiểm lại patch/version

| Lore point | Vì sao cần kiểm | Nguồn hiện có | Có được dùng không? |
| ---------- | --------------- | ------------- | ------------------- |
| Nod-Krai Acts II-VII | Chưa có source dialogue | Tóm tắt / Topic files (Flagged ❓) | **KHÔNG** (Trừ khi viết AU Nod-Krai). |
| Columbina = Kuutar | Chỉ dựa trên tóm tắt | `topics/` (Flagged 🟡) | Được, nhưng giữ ở mức hint, không reveal absolute truth. |
| Hyperborea | Là vương quốc có thật? | Topic files & Hymns of the Far North | Được, nhưng giữ ở dạng huyền thoại/tên gọi cổ. |

## Những điều không được phá

* **Không thay đổi bản chất nhân vật chính thức** nếu không đánh dấu AU. Đặc biệt cẩn thận với các section 3-8 trong Character Intelligence vì có trộn lẫn headcanon.
* **Không dùng theory như sự thật tuyệt đối**. (Ví dụ: Không khẳng định Ianikuinen = Nibelung trong truyện).
* **Không reveal bí mật lớn** của Celestia/Khaenri'ah/Abyss nếu chưa có nền plot vững chắc.
* **Không để OC mạnh hơn hệ thống thế giới** khi chưa có giới hạn rõ (Ví dụ: Không tạo OC một hit chết Archon).
* **Không lấy Sampo Mill gắn cho Rotwang** (đã được bóc tách là conflation).
