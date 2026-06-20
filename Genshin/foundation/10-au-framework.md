# AU Framework

Tài liệu này cung cấp khung làm việc (framework) để thiết lập và phát triển các dự án thế giới song song (Alternate Universe - AU) một cách nhất quán, tránh tình trạng phá nát cốt lõi nhân vật hoặc làm mất đi tính logic hấp dẫn của Genshin Impact.

---

## AU Types (Các thể loại AU được công nhận)

| Loại AU | Định nghĩa | Có cần bám canon không? | Rủi ro lớn nhất |
| :--- | :--- | :---: | :--- |
| **Canon-divergence** | Rẽ nhánh cốt truyện từ một mốc sự kiện canon xác định. | **CÓ (PHẦN LỚN)** | Dễ bị trượt tay viết lệch luôn cả những sự kiện lịch sử xảy ra trước điểm rẽ. |
| **Modern AU** | Đưa toàn bộ nhân vật vào thế giới hiện đại (trường học, công sở, thành phố thực tế). | **KHÔNG (CHỈ GIỮ TÍNH CÁCH)** | Nhân vật bị mất đi bản sắc giả tưởng, trở thành những con người bình thường nhạt nhẽo. |
| **Roleswap AU** | Hoán đổi vai trò cốt lõi giữa các nhân vật (ví dụ: Diluc làm Cavalry Captain, Kaeya làm Darknight Hero). | **CÓ (CƠ CHẾ THẾ GIỚI)** | Viết không khéo sẽ làm mất đi động cơ gốc độc đáo của mỗi nhân vật. |
| **No Vision AU** | Thế giới không có hệ thống Vision; con người chỉ chiến đấu bằng vũ khí vật lý thông thường. | **CÓ (ĐỊA LÝ/VĂN HÓA)** | Làm giảm tính hấp dẫn của các màn combat phép thuật đặc trưng. |
| **Villain AU** | Biến một nhân vật chính diện thành phản diện hoặc điệp viên của Fatui/Abyss. | **CÓ (PHẦN LỚN)** | Tạo ra sự ác độc khiên cưỡng, OOC nặng mà không có lý do thỏa đáng. |
| **Time travel AU** | Nhân vật du hành về quá khứ để thay đổi thảm họa (ví dụ: cứu vương quốc Khaenri'ah). | **CÓ (LỊCH SỬ CỔ ĐẠI)** | Tạo ra các nghịch lý thời gian và phá vỡ cấu trúc thần thoại nguyên thủy. |
| **OC-insert AU** | Đưa một nhân vật tự tạo xuyên không hoặc nhập vai vào thế giới Teyvat để thay đổi plot. | **CÓ** | Dễ rơi vào bẫy Mary Sue, OC giải quyết mọi việc quá dễ dàng và làm lu mờ dàn cast canon. |
| **Post-canon AU** | Viết về tương lai sau khi cốt truyện chính của game kết thúc hoàn toàn (Celestia sụp đổ, v.v.). | **CÓ (LỊCH SỬ NỀN)** | Dễ bị game gốc retcon hoặc đưa ra các giải thiết vũ trụ sai lệch hoàn toàn với plot cuối của miHoYo. |
| **Dark AU** | Tăng tông màu đen tối, bạo lực, thảm khốc của thế giới (thảm họa tàn phá nhiều hơn, nhân vật dễ tử vong). | **CÓ** | Rơi vào trạng thái edgy quá đà, bạo lực vô nghĩa làm mất đi vẻ đẹp kỳ ảo nguyên bản. |
| **Romance AU** | Tập trung khai thác các mối quan hệ tình cảm và cuộc sống lãng mạn trong bối cảnh thay đổi. | **CÓ** | Nhân vật từ bỏ nghĩa vụ lớn chỉ để chạy theo tình yêu một cách phi lý. |

---

## AU Declaration Template (Template khai báo thế giới song song)

Mỗi dự án AU bắt buộc phải điền tệp khai báo cấu hình sau trước khi viết dòng đầu tiên:

```markdown
# AU Declaration

Project: [Tên dự án truyện]
AU Type: [Chọn 1 hoặc nhiều thể loại AU kết hợp]
Canon kept:
- [Những điểm cốt lõi của canon được giữ nguyên, ví dụ: Địa lý Mondstadt, sự hy sinh của Crepus]
Canon changed:
- [Những thay đổi nền tảng, ví dụ: Diluc là người thừa kế của Fatui]
Divergence point: [Nếu có, chỉ định rõ mốc thời gian rẽ nhánh]
Power system changes: [Có thay đổi cơ chế Vision/Delusion không? Nếu có thì ghi rõ luật mới]
Character changes: [Mô tả các thay đổi về tính cách, thân phận của dàn cast chính]
Faction changes: [Thay đổi về mục tiêu, thành viên của các tổ chức liên quan]
Timeline changes: [Thay đổi về trình tự xảy ra các sự kiện lịch sử]
Things intentionally OOC:
- [Chỉ định cụ thể hành vi nào của nhân vật bị coi là OOC so với canon nhưng được chấp nhận trong AU này]
Things that must remain canon:
- [Những giá trị cốt lõi bất biến của nhân vật bắt buộc phải giữ lại để không bị mất chất]
```

---

## AU Safety Rules (Quy tắc an toàn khi viết AU)

* **Giới hạn số lượng thay đổi lớn:** Mỗi AU chỉ nên có từ **1 đến 3 thay đổi nền tảng lớn** (ví dụ: 1. Đổi vai trò Diluc-Kaeya, 2. Crepus còn sống). Thay đổi quá nhiều sẽ khiến thế giới bị loãng và người đọc không còn nhận ra Genshin Impact.
* **Thay đổi lớn phải có hậu quả logic:** Nếu bạn thay đổi một sự kiện lớn, phải mô tả logic các phản ứng dây chuyền xảy ra sau đó (ví dụ: Nếu Crepus còn sống, Diluc sẽ không rời Đội Kỵ Sĩ, không có mạng lưới ngầm, và mối quan hệ với Kaeya sẽ không bị đổ vỡ kịch liệt đêm đó).
* **Bảo vệ cốt lõi tinh thần nhân vật:** Không được dùng mác "AU" để lột bỏ hoàn toàn bản chất cốt lõi của nhân vật. Diluc dù ở thế giới nào vẫn phải mang tính trách nhiệm cao và trầm lặng; Kaeya dù ở thế giới nào vẫn phải sắc sảo và mang gánh nặng của kẻ đứng giữa hai chiến tuyến.
* **Hành vi OOC phải có nguyên nhân từ thế giới AU:** Nếu nhân vật hành xử khác với canon, người viết phải chỉ rõ trải nghiệm khác biệt nào trong AU đã nhào nặn nên tính cách mới đó (ví dụ: Kaeya lạnh lùng tàn nhẫn hơn vì trong AU này anh lớn lên ở trại huấn luyện Fatui thay vì được Crepus yêu thương nuôi dưỡng).
