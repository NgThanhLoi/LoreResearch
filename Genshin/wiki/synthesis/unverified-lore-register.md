# Unverified Lore Register

Tài liệu này quản lý các điểm lore có độ rủi ro cao, chưa được xác minh đầy đủ hoặc có lỗi cơ sở dữ liệu trong workspace. Mọi dự án fanfic bắt buộc phải đối chiếu bảng này để xác định phán quyết sử dụng phù hợp.

## Lore Register Table

| Lore / Concept | Label | Risk | Existing source | Source status | Allowed use | Banned use | Needs primary source? |
| :--- | :--- | :--- | :--- | :---: | :--- | :--- | :---: |
| **Columbina = Kuutar** | STRONGLY IMPLIED / THEORY | Dễ bị game retcon khi ra mắt patch chính thức; tiết lộ quá sớm phá vỡ bí ẩn. | `entities/nations/Nod_Krai.md#L30`, `topics/nod-krai/mythology.md#L30` | indirect_source_only | **ALLOW AS RUMOR / ALLOW AS CHARACTER BELIEF** | **DO NOT USE AS PLOT FOUNDATION / NARRATOR-CONFIRMED CANON** | Yes |
| **True Welkin Moon** | THEORY / UNVERIFIED | Không có căn cứ trong game; tạo ra cosmology giả mâu thuẫn với game gốc. | Chưa tìm thấy nguồn trong workspace. | source_missing | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Tri-Lunar Authority** | UNVERIFIED | Phụ thuộc hoàn toàn vào cốt truyện Acts II-VII chưa được xác minh nguồn thô. | Chưa tìm thấy nguồn trong workspace. | source_missing | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Dottore chế tạo Thần Mặt Trăng Giả** | THEORY / HEADCANON | Phá vỡ power scaling và timeline chính thức; buff Dottore vô lý. | `entities/nations/Nod_Krai.md#L53` | indirect_source_only | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION / CANON-COMPLIANT NARRATOR FACT** | Yes |
| **Ianikuinen = Nibelung** | THEORY / UNVERIFIED | Đồng nhất sai lệch giữa Thợ Rèn Nguyên Thủy và Long Vương Nibelung. | `topics/nod-krai/mythology.md#L8-L9` | source_conflict | **ALLOW AS CHARACTER BELIEF** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Tháp Embla** | UNVERIFIED | Tên công trình cơ khí Khaenri'ah này hoàn toàn không có trong in-game sources. | Chưa tìm thấy nguồn trong workspace. | source_missing | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Mũi Tên Terpikeraunas** | UNVERIFIED | Không tồn tại trong dữ liệu vũ khí/thánh di vật chính thức. | Chưa tìm thấy nguồn trong workspace. | source_missing | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Cỗ Máy Sampo của Rotwang** | UNVERIFIED / THEORY | Lỗi nhầm lẫn (conflation) giữa thiết bị của Rotwang và bảo vật Sampo Mill. | `synthesis/contradiction-register.md` | source_conflict | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Sampo Mill** | CANON | Dễ dùng sai bối cảnh nếu gắn cho Rotwang. | `sources/book_texts/Đạo Tặc Reed Miller Huyền Thoại.md` | primary_source_found | **ALLOW AS CANON (in folklore context)** | **DO NOT conflate with Rotwang / DO NOT treat as Khaenri'ah machine unless AU** | No |
| **Act II–VII Nod-Krai / Version 6.1–6.7** | UNVERIFIED | Toàn bộ cốt truyện quy mô lớn này chỉ là tóm tắt lý thuyết, thiếu file đối thoại gốc. | `entities/nations/Nod_Krai.md#L47-L54` | indirect_source_only | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Hyperborea** | CANON (name) / THEORY (political) | Sự tồn tại của tên trong văn bản là canon; địa lý/chính trị hiện tại là theory. | `sources/book_texts/Tập Thơ Nơi Cực Bắc.md`, `sources/book_texts/nod-krai/Hymns of the Far North.md` | primary_source_found | **ALLOW AS RUMOR / ALLOW AS CHARACTER BELIEF** | **DO NOT treat as active political nation unless AU** | Yes (for interpretation) |
| **Vision là thiết bị giám sát** | THEORY | Giả thuyết cộng đồng rất phổ biến, dễ nhầm thành sự thật khách quan. | Chưa tìm thấy nguồn trong workspace. | source_missing | **ALLOW AS CHARACTER BELIEF** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Celestia là nhà tù vàng** | THEORY | Giả thuyết chưa được kiểm chứng, dễ nhầm thành sự thật khách quan. | Chưa tìm thấy nguồn trong workspace. | source_missing | **ALLOW AS CHARACTER BELIEF** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Gnosis là xiềng xích** | THEORY / STRONGLY IMPLIED | Skirk gọi Gnosis là "tàn dư mang lại bất hạnh", cơ chế "xiềng xích" cụ thể chưa rõ. | `entities/dragon_sovereigns/Overview.md#L26` (Dẫn lời thoại Skirk trong AQ) | indirect_source_only | **ALLOW AS CHARACTER BELIEF / NEEDS PRIMARY SOURCE** | **DO NOT USE AS PLOT FOUNDATION** | Yes |
| **Tâm lý tự chế của nhân vật chính thức** | HEADCANON | Làm méo mó hình tượng gốc (Diluc sợ lửa, Kaeya phobia bị bỏ rơi, Zhongli trauma hải sản). | `entities/character_intelligence/Kaeya.md#L45`, `entities/character_intelligence/Diluc.md#L45` | indirect_source_only | **ALLOW ONLY IN AU** | **DO NOT USE AS PLOT FOUNDATION** | Yes |

## Source Audit Notes

* **Rows upgraded with primary source:**
  - `Sampo Mill` (BK-0004): Xác minh thấy nguồn sách sơ cấp chính thức `sources/book_texts/Đạo Tặc Reed Miller Huyền Thoại.md` trong workspace.
  - `Hyperborea` (BK-0003): Xác minh thấy nguồn sách sơ cấp chính thức `sources/book_texts/Tập Thơ Nơi Cực Bắc.md` và tệp dịch tiếng Anh `sources/book_texts/nod-krai/Hymns of the Far North.md`. *Lưu ý: Chỉ nâng cấp độ tin cậy cho sự tồn tại của tên trong văn bản cổ; các diễn giải địa lý/chính trị hiện tại vẫn ở nhãn THEORY.*
* **Rows downgraded due to missing source:**
  - `True Welkin Moon`, `Tri-Lunar Authority`, `Tháp Embla`, `Mũi Tên Terpikeraunas`, `Vision là thiết bị giám sát`, `Celestia là nhà tù vàng` đều được hạ/giữ nhãn độ tin cậy thấp (`UNVERIFIED` hoặc `THEORY`) do hoàn toàn không tìm thấy tệp tin nguồn sơ cấp tương ứng trong workspace.
* **Rows still indirect-only:**
  - `Columbina = Kuutar`: Chỉ tồn tại dưới dạng tóm tắt của nhà nghiên cứu ở `entities/nations/Nod_Krai.md`.
  - `Dottore chế tạo Thần Mặt Trăng Giả`: Chỉ tồn tại dưới dạng tóm tắt của nhà nghiên cứu.
  - `Act II–VII Nod-Krai / Version 6.1–6.7`: Chỉ tồn tại dưới dạng tóm tắt lý thuyết.
  - `Gnosis là xiềng xích`: Chỉ tồn tại dưới dạng trích dẫn gián tiếp qua overview của Long Vương, thiếu tệp thoại gốc của Skirk.
  - `Tâm lý tự chế của nhân vật chính thức`: Chỉ tồn tại dưới dạng tóm tắt phân tích tâm lý chưa được dán nhãn của `character_intelligence`.
* **Rows requiring raw dialogue:**
  - `Columbina = Kuutar`, `Act II–VII Nod-Krai`, `Gnosis là xiềng xích` yêu cầu bổ sung các tệp thoại gốc (raw dialogue transcripts) của game để tiến hành audit nâng cấp.
* **Rows requiring future official confirmation:**
  - Tất cả các giả thuyết Vực Sâu, Celestia là nhà tù vàng, Vision giám sát, và các phần nội dung của Nod-Krai Acts II-VII đều cần các phiên bản cập nhật chính thức sau này của game (hoặc cache dữ liệu game đầy đủ) để xác minh.
