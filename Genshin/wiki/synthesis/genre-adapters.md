# Genre Adapters

Tài liệu này cung cấp các "adapter" – bộ hướng dẫn tích hợp và xử lý lore Genshin Impact cho từng thể loại fanfiction cụ thể, giúp người viết giữ đúng không khí thể loại mà không vi phạm quy tắc cốt lõi của thế giới.

---

## 1. Canon-compliant adventure (Phiêu lưu bám sát nguyên tác)
* **How to use lore:** Sử dụng trực tiếp các địa danh, cơ chế nguyên tố, các ủy thác mạo hiểm và ma vật từ game. Tận dụng thông tin từ [weapon_stories](sources/weapon_stories) và [artifact_descriptions](sources/artifact_descriptions) làm cốt lõi cho các di vật cổ đại cần tìm kiếm trong hành trình.
* **What to avoid:** Tránh đưa các thế lực phản diện lớn (như Thiên Lý hay Tsaritsa) vào đối đầu trực tiếp ở quy mô nhỏ. Tránh thay đổi kết cục các nhiệm vụ Ma Thần.
* **Best source types:** `sources/weapon_stories/`, `sources/artifact_descriptions/`, in-game maps.
* **Common failure modes:** Buff sức mạnh nhân vật quá đà, làm ma vật bị đánh bại quá dễ dàng.
* **QA Checklist:**
  - [ ] Địa hình và khí hậu bối cảnh trùng khớp bản đồ game.
  - [ ] Cơ chế chiến đấu bám sát tương tác nguyên tố canon.
  - [ ] Không tạo ra ma vật mới có sức mạnh phá vỡ logic thế giới.

## 2. Canon-divergence (Lệch nhánh nguyên tác)
* **How to use lore:** Tập trung khai thác phản ứng dây chuyền từ Điểm phân nhánh (Divergence Point). Sử dụng lore lịch sử nền (trước điểm rẽ) làm điểm tựa vững chắc để tạo cảm giác quen thuộc cho người đọc trước khi tung ra các thay đổi lớn.
* **What to avoid:** Tránh thay đổi lịch sử cổ đại (như cuộc chiến Phanes hay thảm họa 500 năm trước) nếu điểm rẽ nằm ở thời đại hiện tại. Tránh viết lệch hướng mà không giải thích nguyên nhân logic.
* **Best source types:** `entities/Timeline.md`, main Archon Quest logs.
* **Common failure modes:** Gây đứt gãy tính nhất quán của lịch sử trước điểm rẽ, các tổ chức lớn phản ứng chậm chạp phi logic.
* **QA Checklist:**
  - [ ] Xác định rõ mốc thời gian và sự kiện bắt đầu rẽ nhánh.
  - [ ] Liệt kê đầy đủ các nhân vật bị ảnh hưởng trực tiếp bởi sự thay đổi.
  - [ ] Đảm bảo các thế lực lớn (Fatui, Knights) phản ứng logic với sự thay đổi này.

## 3. OC-insert (Nhân vật tự tạo xuyên không/nhập vai)
* **How to use lore:** Giới hạn sức mạnh và góc nhìn của OC. OC có thể học hỏi võ thuật, tiên thuật hoặc giả kim thuật nhưng phải tuân thủ đúng quy trình huấn luyện và có giới hạn thể chất của người Teyvat.
* **What to avoid:** Tránh biến OC thành Mary Sue/Gary Stu giải quyết mọi xung đột bằng tri thức ngoài đời thực của tác giả. Tránh cho OC sở hữu Vision kép hoặc sức mạnh không rõ nguồn gốc.
* **Best source types:** `synthesis/power-system-governance.md`, character training stories.
* **Common failure modes:** OC làm lu mờ hoàn toàn dàn cast chính, cướp đi vai trò tỏa sáng nguyên bản.
* **QA Checklist:**
  - [ ] Thiết lập rõ ràng giới hạn sức mạnh, điểm yếu và cái giá phải trả của OC.
  - [ ] OC không được cướp đi vai trò tỏa sáng cốt lõi của dàn cast canon.
  - [ ] Hành vi của OC không làm thay đổi tính cách của các nhân vật canon xung quanh một cách vô lý.

## 4. Romance (Lãng mạn/Tình cảm)
* **How to use lore:** Sử dụng bối cảnh đời sống, các ngày lễ hội (Hoa Gió, Hải Đăng) và thói quen sinh hoạt của nhân vật làm chất xúc tác tình cảm. Khai thác các xung đột bổn phận (ví dụ: nghĩa vụ quốc gia vs tình cảm cá nhân) để tạo chiều sâu cho mối quan hệ.
* **What to avoid:** Tránh biến nhân vật thành kẻ cuồng yêu, từ bỏ hoàn toàn lý trí và nghĩa vụ cốt lõi của họ (như Diluc bỏ mặc Mondstadt hay Jean bỏ bê công việc hoàn toàn chỉ để yêu đương). Tránh OOC giọng điệu thoại ngọt ngào quá đà đối với các nhân vật lạnh lùng.
* **Best source types:** `sources/voice_lines/`, character relationship profiles.
* **Common failure modes:** Nhân vật từ bỏ hoàn toàn nghĩa vụ công việc, hành vi và lời thoại sến súa quá đà.
* **QA Checklist:**
  - [ ] Xưng hô và cách tương tác giữ đúng khoảng cách xã hội canon của nhân vật.
  - [ ] Tình cảm phát triển tự nhiên qua các sự kiện, không ép buộc.
  - [ ] Giữ vững các mục tiêu và nghĩa vụ độc lập của mỗi nhân vật ngoài tình yêu.

## 5. Slice of life (Đời thường)
* **How to use lore:** Khai thác tối đa các khía cạnh ẩm thực bản địa, công việc hành chính tại Đội Kỵ Sĩ, việc kinh doanh rượu tại Tửu Trang Dawn, hoặc các buổi trà chiều của Lisa. Tận dụng các chi tiết nhỏ trong daily life để tạo sự ấm áp.
* **What to avoid:** Tránh biến Teyvat thành một xã hội hiện đại hoàn toàn (không dùng điện thoại di động, internet, hay xe hơi hiện đại; dùng xe ngựa, thư gửi bằng chim ưng, đèn dầu).
* **Best source types:** Local NPC dialogues, food descriptions, character hobby logs.
* **Common failure modes:** Hiện đại hóa bối cảnh sai quy luật (anachronism), thiếu conflict khiến câu chuyện bị nhạt nhẽo.
* **QA Checklist:**
  - [ ] Bối cảnh công nghệ bám sát thế giới giả tưởng Trung Cổ/Phục Hưng của game.
  - [ ] Tập trung vào các mâu thuẫn sinh hoạt nhỏ, đáng yêu và hài hước nhẹ nhàng.
  - [ ] Không đưa các thảm họa hủy diệt thế giới vào mạch truyện.

## 6. Dark fantasy (Kỳ ảo đen tối)
* **How to use lore:** Khai thác sâu sự ăn mòn của Abyss, thí nghiệm tàn bạo của Fatui (như thí nghiệm Delusion trên trẻ em của Dottore), ma vật đột biến, hoặc tác động của Lời nguyền bất tử lên người Khaenri'ah.
* **What to avoid:** Tránh lạm dụng yếu tố kinh dị/máu me (gore) quá đà chỉ để gây shock. Không phá vỡ hệ thống power scaling của Abyss.
* **Best source types:** `sources/artifact_descriptions/` (Cổ vật Khaenri'ah/Vực sâu), Dottore's lore files.
* **Common failure modes:** Sa đà vào bạo lực vô nghĩa (edgy), phá vỡ logic sức mạnh của Abyss.
* **QA Checklist:**
  - [ ] Mô tả chi tiết tác động vật lý và tinh thần của sự ăn mòn Abyss/Delusion.
  - [ ] Giữ được hy vọng hoặc yếu tố nhân văn giữa không khí đen tối.
  - [ ] Không viết nhân vật canon trở nên độc ác, tàn bạo vô căn cứ.

## 7. Mystery / detective (Điều tra/Trinh thám)
* **How to use lore:** Sử dụng các manh mối từ ghi chép cổ, các tàn tích khảo cổ, ký tự Khaenri'ah, hoặc các vụ trộm bảo vật của Treasure Hoarders. Manh mối phải được phân bổ logic dựa trên thiết kế thế giới game.
* **What to avoid:** Cấm nhân vật giải án nhờ "linh cảm tác giả" hoặc dùng phép thuật vạn năng để biết trước thủ phạm. Tránh dùng các unverified lore làm lời giải cho vụ án.
* **Best source types:** In-game books (`sources/book_texts/`), historical monument text.
* **Common failure modes:** Giải quyết vụ án bằng một phép thuật tự chế, hoặc để thám tử biết tuốt mọi thứ.
* **QA Checklist:**
  - [ ] Thiết lập chuỗi manh mối logic có thể suy luận được từ trước.
  - [ ] Sử dụng các hạn chế POV để người đọc cùng suy luận với nhân vật.
  - [ ] Lời giải vụ án phải tương thích với các quy luật vật lý/phép thuật canon của Teyvat.

## 8. Political intrigue (Đấu tranh chính trị/Ngoại giao)
* **How to use lore:** Khai thác sự đối đầu ngầm giữa Phái đoàn ngoại giao Fatui và Đội Kỵ Sĩ Tây Phong, sự lũng đoạn kinh tế của Hội Buôn Voynich tại Nod-Krai, hoặc mâu thuẫn giai cấp giữa Quý Tộc Cũ Lawrence và người dân.
* **What to avoid:** Tránh info-dump (xả hàng trang tài liệu giải thích lịch sử) khiến mạch truyện bị kéo chậm. Tránh biến các nhà ngoại giao thành những kẻ khờ khạo dễ bị lừa.
* **Best source types:** `entities/organizations/` (Fatui, Knights), region history.
* **Common failure modes:** Info-dump tài liệu chính trị khô khan, biến mâu thuẫn ngoại giao thành cãi vã cá nhân trẻ con.
* **QA Checklist:**
  - [ ] Các nước đi chính trị dựa trên lợi ích cốt lõi của phe phái (đức tin, kinh tế, quyền lực).
  - [ ] Hội thoại ẩn ý sâu sắc, ngôn từ lịch thiệp ngoại giao nhưng sắc bén.
  - [ ] Các âm mưu chính trị được hé lộ dần qua hành động và hậu quả thực tế.

## 9. War / military (Chiến tranh/Quân sự)
* **How to use lore:** Khai thác cách bày binh bố trận của Đội Kỵ Sĩ, sự tàn khốc của lực lượng tiên phong Fatui Skirmisher, hoặc các chiến dịch phòng vệ biên cương. Chú trọng đến tính kỷ luật, vũ khí công thành và hậu cần.
* **What to avoid:** Tránh để một cá nhân Vision holder cân toàn bộ quân đội một cách dễ dàng mà không tốn sức. Tránh bỏ qua yếu tố hậu cần, địa hình và tinh thần binh sĩ.
* **Best source types:** Military logs, faction structures, weapon descriptions.
* **Common failure modes:** Trận chiến diễn ra hỗn loạn phi thực tế, bỏ qua hoàn toàn yếu tố hậu cần và địa hình chiến thuật.
* **QA Checklist:**
  - [ ] Sắp xếp đội hình quân sự logic (bộ binh, xạ thủ nguyên tố, cơ khí hỗ trợ).
  - [ ] Giữ đúng power scaling quân sự (quân đội phàm nhân cần số lượng để vây bắt Vision holder).
  - [ ] Mô tả sự khốc liệt và hậu quả thực tế của chiến tranh đối với thường dân.

## 10. Time travel / memory / Irminsul (Du hành thời gian/Ký ức)
* **How to use lore:** Khai thác quyền năng của Thần Thời Gian Istaroth, dòng ký ức lưu trữ trong Địa Mạch (Ley Lines), hoặc cơ chế viết lại thông tin của cây thế giới Irminsul. Đây là những khái niệm lore cực kỳ phức tạp và nhạy cảm.
* **What to avoid:** **Tuyệt đối cấm** việc du hành thời gian thay đổi vật lý lịch sử một cách dễ dàng mà không gặp sự trừng phạt hay phản phệ từ Thiên Lý. Cấm nhân vật tự ý hack Irminsul xóa sổ một thực thể lớn mà không chịu hậu quả mất mát lớn tương xứng.
* **Best source types:** `entities/Timeline.md`, Sumeru AQ logs on Irminsul rules.
* **Common failure modes:** Thay đổi quá khứ vật lý dễ dàng không chịu phạt, nghịch lý thời gian không được giải quyết, phá vỡ logic vũ trụ.
* **QA Checklist:**
  - [ ] Dòng thời gian du hành tuân thủ quy tắc: Quá khứ là cố định, thay đổi lịch sử sẽ tạo ra dòng thời gian phân nhánh (divergence) hoặc phản phệ tàn khốc.
  - [ ] Việc sửa đổi Irminsul chỉ thay đổi nhận thức/ký ức của nhân loại, sự kiện vật lý thực tế vẫn để lại dấu vết/hậu quả.
  - [ ] Thiết lập cái giá cực đắt (bị thế giới lãng quên, cơ thể bị mài mòn hóa đá) cho hành động can thiệp dòng thời gian/ký ức.

