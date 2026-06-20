# Source Map

## Source Folders (Bản đồ thư mục nguồn)

Dưới đây là bảng đánh giá tổng thể độ tin cậy và mục đích sử dụng của các thư mục dữ liệu hiện có trong workspace:

| Folder/File | Loại dữ liệu | Độ tin cậy | Dùng tốt cho | Rủi ro |
| :--- | :--- | :---: | :--- | :--- |
| [sources/](file:///d:/LoreResseach/Genshin/sources) | Toàn bộ nguồn thô sơ cấp | **90-95/100** | Đối chiếu thông tin gốc, kiểm tra câu chữ chuẩn xác. | Khối lượng văn bản lớn, cần thời gian đọc và lọc. |
| [weapon_stories/](file:///d:/LoreResseach/Genshin/sources/weapon_stories) | Mô tả cốt truyện vũ khí | **95/100** | Khai thác lịch sử cổ đại, Khaenri'ah, các chiến binh vô danh và truyền thuyết vũ khí. | Cực kỳ chi tiết nhưng rời rạc, cần tự kết nối logic. |
| [artifact_descriptions/](file:///d:/LoreResseach/Genshin/sources/artifact_descriptions) | Mô tả cốt truyện thánh di vật | **95/100** | Xây dựng bối cảnh các nền văn minh sụp đổ, các Ma Thần cổ đại, và quy luật vũ trụ. | Mang tính biểu tượng cao, nhiều ẩn dụ cần giải mã. |
| [entities/](file:///d:/LoreResseach/Genshin/entities) | Hồ sơ tổng hợp các thực thể | **Khác nhau** | Tra cứu nhanh thuộc tính thực thể (nhân vật, vũ khí, vật phẩm). | Nhiều thư mục con chứa các file template trống rỗng. |
| [character_intelligence/](file:///d:/LoreResseach/Genshin/entities/character_intelligence) | Hồ sơ phân tích tâm lý nhân vật | **70/100** | Tham khảo cách giữ giọng nhân vật (speech patterns), quan hệ và thói quen sinh hoạt. | **Cao.** Trộn lẫn suy đoán tâm lý sâu sắc chưa dán nhãn ở các mục 3-8. |
| [nations/](file:///d:/LoreResseach/Genshin/entities/nations) | Dữ liệu về các quốc gia | **65/100** | Xây dựng bối cảnh Mondstadt, Khaenri'ah và Nod-Krai cơ bản. | 5/9 quốc gia chỉ là shell trống rỗng. File Nod-Krai chứa nhiều unverified lore. |
| [organizations/](file:///d:/LoreResseach/Genshin/entities/organizations) | Dữ liệu phe phái/tổ chức | **70/100** | Tra cứu cơ cấu Fatui, Knights of Favonius, Abyss Order và Hexenzirkel. | 10 file shell trống. Dữ liệu phe phái Nod-Krai chưa được xác minh. |
| [topics/](file:///d:/LoreResseach/Genshin/topics) | Các phân tích tổng hợp chuyên sâu | **55-60/100** | Tham khảo các kết nối quan hệ và phân tích thần thoại địa phương. | Chứa các lập luận chủ quan của nhà nghiên cứu, cần kiểm chứng. |
| [quests/](file:///d:/LoreResseach/Genshin/quests) | Cấu trúc nhiệm vụ trong game | **15/100** | Xem danh sách các quest để định vị thời điểm câu chuyện diễn ra. | **Trống 100% nội dung.** Chỉ có khung xương file. |
| [Timeline.md (Entities)](file:///d:/LoreResseach/Genshin/entities/Timeline.md) | Dòng thời gian lịch sử tổng quan | **90/100** | Khóa mốc lịch sử lớn (Thời đại Rồng, Phanes, Ma Thần, Cataclysm). | Mang tính tóm lược vĩ mô, không chi tiết đến các năm lẻ. |
| [mythology.md (Nod-Krai)](file:///d:/LoreResseach/Genshin/topics/nod-krai/mythology.md) | Phân tích thần thoại Nod-Krai | **65/100** | Tham khảo truyền thuyết Ba Mặt Trăng và Hyperborea. | Trộn lẫn giữa canon xác thực và giả thuyết unverified chưa có raw dialogue. |

---

## Best Source Pools (Các nhóm nguồn đáng tin cậy nhất)

Khi cần tìm kiếm lore chính xác làm điểm tựa cho plot, hãy ưu tiên các nguồn sau:
* **Weapon stories & Artifact descriptions:** Đây là kho tàng lore bất di dịch của game. Ví dụ, thông tin về nhà giả kim Rotwang trong bộ thánh di vật *Đêm Trời Hé Lộ* là canon tuyệt đối, dùng rất tốt để viết về tàn tích Khaenri'ah.
* **Character stories:** Hồ sơ tiểu sử chính thức đi kèm nhân vật in-game (được sao lưu trong `sources/`). Cung cấp thông tin nền tảng về cuộc đời và các sự kiện bước ngoặt (ví dụ: đêm Kaeya thú nhận với Diluc).
* **Books in-game:** Sách thu thập trong game (như *Heart's Desire* xác nhận tên 3 mặt trăng Aria, Sonnet, Canon) cung cấp thế giới quan lịch sử và thơ ca cổ đại rất phong phú.
* **Quest dialogue:** Lời thoại trực tiếp trong game (nếu được trích lục trong `sources/`) là bằng chứng thép về lời nói của nhân vật.
* **Official summaries:** Các phần tóm tắt cốt truyện được đăng tải chính thức bởi miHoYo.

---

## Weak Source Pools (Các nhóm nguồn yếu và rủi ro)

Cần cảnh giác và hạn chế phụ thuộc vào các vùng dữ liệu sau:
* **Quest files trống:** Toàn bộ thư mục [quests/](file:///d:/LoreResseach/Genshin/quests) đều trống nội dung. Đừng cố tra cứu tóm tắt nhiệm vụ ở đây.
* **Nation shells trống:** Các file [Fontaine.md](file:///d:/LoreResseach/Genshin/entities/nations/Fontaine.md), [Liyue.md](file:///d:/LoreResseach/Genshin/entities/nations/Liyue.md), v.v. chỉ có vỏn vẹn vài dòng metadata.
* **Character Intelligence chứa headcanon:** Các mục từ 3 đến 8 trong hồ sơ nhân vật (như [Kaeya.md](file:///d:/LoreResseach/Genshin/entities/character_intelligence/Kaeya.md) hay [Diluc.md](file:///d:/LoreResseach/Genshin/entities/character_intelligence/Diluc.md)) chứa các suy đoán về chấn thương tâm lý, nỗi sợ bị bỏ rơi,... do nhà nghiên cứu tự phân tích dưới góc nhìn tâm lý học sâu. **Đây không phải canon.**
* **Topic files thiếu nguồn:** Các phân tích về Nod-Krai Acts II-VII trong [topics/nod-krai/](file:///d:/LoreResseach/Genshin/topics/nod-krai) thiếu hoàn toàn trích dẫn hội thoại sơ cấp.

---

## Quy trình tra nguồn khi viết (Step-by-Step Source Verification)

Mỗi khi đưa một chi tiết lore vào truyện, người viết phải thực hiện quy trình 5 bước sau:

1. **Tìm kiếm điểm lore (Identify Lore Point):** Xác định khái niệm, nhân vật hoặc sự kiện muốn đưa vào truyện.
2. **Kiểm tra nguồn sơ cấp (Verify Primary Source):** Tìm kiếm trong thư mục [sources/](file:///d:/LoreResseach/Genshin/sources) xem có văn bản mô tả vũ khí, di vật, sách hay hội thoại nào xác nhận chi tiết này không.
3. **Kiểm tra nhãn độ tin cậy (Check Reliability Label):** Đối chiếu với bảng [01-canon-governance.md](file:///d:/LoreResseach/Genshin/foundation/01-canon-governance.md) để xác định xem chi tiết này thuộc loại CANON, THEORY hay HEADCANON.
4. **Kiểm tra mâu thuẫn phiên bản (Patch Conflict Check):** Đối chiếu xem chi tiết lore này có bị phủ định bởi các patch game mới hơn không (đặc biệt là các thông tin liên quan đến các nhân vật mới ra mắt).
5. **Ghi nguồn vào Chapter Note (Document Citation):** Ghi rõ tên file nguồn sơ cấp hoặc đường dẫn nội bộ (ví dụ: `sources/weapon_stories/Sword_of_Descension.md`) vào phần ghi chú cuối chương để phục vụ quá trình Audit chất lượng. Nếu không tìm thấy nguồn in-game nào, phải ghi rõ: *"chưa tìm thấy nguồn trong workspace"*.
