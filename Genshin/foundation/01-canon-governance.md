# Canon Governance

## Source Hierarchy (Hệ thống phân cấp nguồn)

Khi thu thập và sử dụng chất liệu để viết truyện, độ tin cậy của thông tin được phân cấp từ cao xuống thấp như sau:

1. **Nguồn sơ cấp trực tiếp trong game (Primary In-game Sources):** Hội thoại nhiệm vụ (Quest dialogue), mô tả vật phẩm/vũ khí ([weapon_stories](file:///d:/LoreResseach/Genshin/sources/weapon_stories)), mô tả thánh di vật ([artifact_descriptions](file:///d:/LoreResseach/Genshin/sources/artifact_descriptions)), sách trong game ([book_texts](file:///d:/LoreResseach/Genshin/sources/book_texts)), và câu chuyện/lời thoại nhân vật ([voice_lines](file:///d:/LoreResseach/Genshin/sources/voice_lines)). Đây là bộ xương sống bất biến.
2. **Nguồn truyền thông chính thức (Official Media Sources):** Thông tin từ Website chính thức của miHoYo, các trailer giới thiệu nhân vật (Character Teasers/Demos), và bài đăng trên các kênh mạng xã hội chính thức.
3. **Tóm tắt nội bộ có dẫn nguồn (Cited Internal Summaries):** Các tài liệu phân tích hoặc tóm tắt thực thể trong thư mục `entities/` có trích dẫn mã nguồn in-game hoặc lời thoại cụ thể.
4. **Phân tích và Giả thuyết (Analysis & Theories):** Các liên kết logic tự suy luận hoặc phân tích của cộng đồng/nhà nghiên cứu lưu trữ trong thư mục `topics/` (ví dụ: các suy đoán về mối quan hệ).
5. **Headcanon / AU:** Các phác thảo tâm lý tự bổ sung hoặc giả thiết thế giới song song trong các tài liệu phân tích tính cách nhân vật (đặc biệt là các mục từ 3-8 trong hồ sơ [character_intelligence](file:///d:/LoreResseach/Genshin/entities/character_intelligence)).

---

## Reliability Labels (Nhãn phân loại độ tin cậy)

Mọi thông tin sử dụng trong dự án phải được phân loại rõ ràng bằng một trong các nhãn sau:

### CANON
* **Điều kiện:** Có nguồn sơ cấp hoặc nguồn truyền thông chính thức trực tiếp xác nhận. Không bị mâu thuẫn bởi các cập nhật (patch/version) mới hơn từ nhà phát hành game. Không chứa sự suy diễn chủ quan từ người viết database.

### STRONGLY IMPLIED
* **Điều kiện:** Có rất nhiều gợi ý, hình ảnh ẩn dụ hoặc manh mối liên kết logic trong game, nhưng chưa được hội thoại hoặc văn bản chính thức của game xác nhận một cách trực diện.

### THEORY
* **Điều kiện:** Là suy luận logic của cộng đồng nghiên cứu dựa trên các dữ liệu rời rạc. Giả thuyết này có tính thuyết phục cao nhưng không được viết hoặc khẳng định như một sự thật tuyệt đối trong truyện nếu chưa được game xác nhận.

### HEADCANON
* **Điều kiện:** Ý tưởng, thói quen, chi tiết đời sống hoặc động cơ tâm lý do người viết tự bổ sung nhằm làm phong phú thêm tính cách nhân vật hoặc thế giới mà không mâu thuẫn với canon hiện có.

### AU (Alternate Universe)
* **Điều kiện:** Những điểm cố ý thay đổi hoặc đi chệch khỏi canon (ví dụ: nhân vật không có Vision, bối cảnh hiện đại). Mọi thay đổi AU phải được khai báo rõ ràng trong hồ sơ dự án.

### UNVERIFIED
* **Điều kiện:** Thiếu nguồn sơ cấp đối chiếu, không rõ xuất xứ, có thể là lỗi hoặc sự nhầm lẫn của database cũ. Tuyệt đối không được dùng làm nền tảng cho plot chính của truyện.

---

## Quy tắc sử dụng trong Fanfiction

| Label | Có được dùng trong fanfic không? | Dùng thế nào | Không được làm gì |
| :--- | :---: | :--- | :--- |
| **CANON** | **CÓ** | Sử dụng làm nền tảng thiết lập thế giới, lịch sử, tính cách và các sự kiện cố định của Teyvat. | Không được tự ý thay đổi hoặc bỏ qua các sự kiện canon lớn (trừ khi khai báo dự án thuộc AU). |
| **STRONGLY IMPLIED** | **CÓ** | Dùng làm chất liệu tạo hint, xây dựng các chi tiết mờ ảo hoặc động cơ ẩn của nhân vật. | Không được khẳng định nó là sự thật tuyệt đối ngay từ đầu truyện; hãy giữ ở dạng phỏng đoán hoặc góc nhìn nhân vật. |
| **THEORY** | **CÓ** | Dùng làm giả thuyết điều tra, suy luận của nhân vật, hoặc định hướng cho các plot twist bất ngờ. | Không được xây dựng toàn bộ cốt truyện xoay quanh một theory chưa được kiểm chứng làm nền tảng không thể lay chuyển. |
| **HEADCANON** | **CÓ** | Chỉ dùng để tô điểm thêm màu sắc sinh hoạt, thói quen nhỏ, phản ứng cảm xúc phụ để làm sinh động câu chuyện. | Không được dùng headcanon để giải thích cho các sự kiện lịch sử canon hoặc làm thay đổi hoàn toàn giá trị cốt lõi của nhân vật. |
| **AU** | **CÓ** | Chỉ dùng khi dự án được phân loại rõ ràng là AU ngay từ tệp khai báo dự án. | Không được viết AU một cách tùy tiện mà không có tệp khai báo cụ thể (AU Declaration). |
| **UNVERIFIED** | **HẠN CHẾ** | Chỉ được dùng như tin đồn vỉa hè vô căn cứ của NPC, hoặc cấm tuyệt đối nếu đụng đến cosmology/power scaling. | Không được đưa vào làm cơ sở giải quyết mâu thuẫn hoặc làm sức mạnh thực tế của nhân vật chính. |

---

## Red lines (Giới hạn đỏ không được vượt qua)

Để bảo vệ tính toàn vẹn của dự án, người viết phải tuân thủ nghiêm ngặt 5 giới hạn đỏ sau:
1. **Không OOC (Out of Character) nặng:** Nhân vật canon không được thay đổi bản tính, hành vi, đạo đức hay cách xưng hô đặc trưng của họ trừ khi có nguyên nhân cực kỳ rõ ràng nằm trong quy định của AU được phê duyệt.
2. **Không biến Theory thành Canon:** Không viết theo dạng người kể chuyện (narrator) khẳng định một giả thuyết cộng đồng (ví dụ: Ianikuinen = Nibelung) là chân lý hiển nhiên của vũ trụ.
3. **Không dùng Unverified Lore làm nền plot:** Các chi tiết như Columbina = Kuutar hay Dottore chế tạo Thần Mặt Trăng Giả không được dùng làm nút thắt quan trọng để giải quyết cốt truyện chính.
4. **Không Buff OC vô hạn:** Nhân vật tự tạo (OC) không được sở hữu sức mạnh vượt qua giới hạn của hệ thống thế giới (không mạnh hơn Archon hay Long Vương) nếu không có cơ chế giới hạn, cái giá phải trả và hậu quả rõ ràng.
5. **Không reveal bí mật lớn quá sớm:** Không tiết lộ bản chất bầu trời giả, Celestia hay Descender ở những chương đầu chỉ vì database có ghi chép phân tích. Phải tôn trọng nhịp độ phát triển tự nhiên của cốt truyện.
