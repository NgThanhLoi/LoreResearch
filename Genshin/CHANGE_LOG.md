# CHANGE LOG — Lore Bible Audit & Repair (2026-06-19)

> Tài liệu ghi nhận tất cả các sửa đổi được thực hiện dựa trên kết quả audit và adversarial second-pass verification.

---

## Ký hiệu phân loại (Classification Legend)
- ✅ Confirmed Canon — Xác nhận trực tiếp từ nguồn sơ cấp
- 🟡 Strongly Implied — Suy luận mạnh từ bối cảnh
- 🟡 Weakly Implied — Suy luận yếu, ít bằng chứng
- ❓ Unverified — Không có source file để kiểm chứng
- ❌ Speculative — Suy đoán của người viết, không phải canon

---

## 1. entities/nations/Mondstadt.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 1 | Section header line 41 | "Tai Ương **Trăm** Năm Trước (500 năm trước)" | "Tai Ương **Năm Trăm** Năm Trước (500 năm trước)" | Header nói "100 năm" nhưng nội dung nói 500 năm. Canon xác nhận Cataclysm xảy ra ~500 năm trước. | Tất cả nguồn in-game (Before Sun and Moon, quest dialogue) đều xác nhận khoảng cách 500 năm. |

---

## 2. entities/organizations/global/Fatui.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 2 | Bảng Harbinger | Chỉ liệt kê 10/11 thành viên (thiếu Pulcinella) | Thêm hàng #11: Pulcinella (Gà Trống) + ghi chú xếp hạng | File tuyên bố "Mười Một" nhưng bảng chỉ có 10. Pulcinella xuất hiện trong voice lines của Tartaglia và Arlecchino. | Voice lines Tartaglia ("Về Pulcinella"), Arlecchino ("Về Pulcinella"), video "A Winter Night's Lazzo". |
| 3 | Il Capitano description | "Chiến binh mạnh nhất Teyvat về mặt võ lực phàm nhân" | Thêm 🟡 "Được đồn đại là..." + ghi chú chưa có nguồn xếp hạng chính thức | Đây là danh tiếng in-game, không phải xếp hạng chính thức. Không có dialogue nào nói "Capitano is THE strongest." | Không tìm thấy source xác nhận claim tuyệt đối này. |
| 4 | Delusion mechanism | "sử dụng hài cốt hoặc oán niệm của các Ma Thần đã chết" (stated as fact) | Thêm 🟡 Strongly Implied + ghi chú chưa có nguồn trực tiếp | Cơ chế sản xuất cụ thể chưa được xác nhận rõ ràng trong game. | Không tìm thấy source trực tiếp giải thích manufacturing process. |

---

## 3. topics/nod-krai/mythology.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 5 | Nguồn gốc sáng thế | "✅ Ba nữ thần mặt trăng được tạo ra bởi **Vua Rồng Nibelung**" | Sửa thành Takoja Ianikuinen (Thợ Rèn Nguyên Thủy) + ghi chú Nibelung=Ianikuinen là suy luận chưa xác nhận | Source file (Hymns of the Far North, Prayer Song VI) nêu rõ "Takoja Ianikuinen, the Primeval Blacksmith... forger of the tripled moons." Tên "Nibelung" không xuất hiện trong BẤT KỲ source file nào. | `sources/book_texts/nod-krai/Hymns of the Far North.md` line 176-178 |
| 6 | Danh tính ba chị em | "Aria (Eternal Moon)", "Sonnet (Iridescent Moon)", "Canon (Frost Moon)" gán cụ thể | Ghi nhận tên Aria/Sonnet/Canon là canon (từ Heart's Desire) nhưng gán Aria=Eternal etc. là ❓ Unverified | Sách "Heart's Desire" chỉ nêu tên, KHÔNG gán loại mặt trăng nào cho tên nào. | `sources/book_texts/Giấc Mơ Tan Vỡ.md` line 305 |
| 7 | Bi kịch vỡ mặt trăng | "Khi họ cố gắng hợp sức (phá bỏ lời thề)... Celestial Principles đã trừng phạt họ" | Sửa theo source: "trong cuộc chiến với Descenders, chỉ Frost Moon còn nguyên vẹn" + flag giải thích "hợp sức bị trừng phạt" là ❓ Unverified | Source (A Dance of Snowy Tides) chỉ nói mặt trăng vỡ trong cuộc chiến. Chi tiết "cố gắng hợp sức" và "bị trừng phạt vì phá lời thề" KHÔNG có trong source. | Researcher summary Act I |
| 8 | Columbina = Kuutar | "✅ Tiết lộ cốt truyện chấn động..." (toàn bộ Acts II-VII content as confirmed) | Reclassify: 🟡 Strongly Implied cho Act I identification + ❓ Unverified cho Acts II-VII content | Nhận dạng Columbina/Kuutar chỉ xuất hiện trong researcher summary (không có raw dialogue). Nội dung Acts II-VII không có source file nào. | Researcher summary labeled "Confirmed Canon" but no raw dialogue available. |

---

## 4. topics/nod-krai/timeline.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 9 | Thuở Sáng Thế | "Long Vương Nibelung tạo ra Ba Chị Em Mặt Trăng" | Sửa thành Takoja Ianikuinen + source citation | Giống #5 — source nêu Ianikuinen, không phải Nibelung. | Hymns of the Far North, Prayer Song VI |
| 10 | Rotwang/Embla/Sampo | "chế tạo Tháp Embla (Pillar of Embla) và Cỗ Máy Sampo (Sampo Mill) nhằm đục thủng bầu trời giả" | Xác nhận Rotwang tồn tại (✅ artifact) + flag "Tháp Embla" và "Cỗ Máy Sampo" là ❓ Unverified | Rotwang CÓ trong artifact source. Nhưng tên "Tháp Embla" và "Cỗ Máy Sampo" KHÔNG có trong bất kỳ source nào. Sampo Mill trong sách Reed Miller là cổ vật khác, không liên quan đến Rotwang. | `sources/artifact_descriptions/Đêm Trời Hé Lộ.md` line 83; `sources/book_texts/nod-krai/Đạo Tặc Reed Miller Huyền Thoại.md` |
| 11 | Alia/Terpikeraunas | "Solovei dùng mũi tên Terpikeraunas đẩy lùi Wild Hunt" | Flag Terpikeraunas là ❓ (không có trong source file nào) | Grep toàn bộ `sources/` cho "Terpikeraunas" = 0 results. | Grep results. |
| 12 | Rerir/Tholindis | "Rerir phản bội để cứu hôn thê Tholindis" | Xác nhận ✅ tên canon + reclassify "phản bội" thành 🟡 Strongly Implied | Cả hai tên xác nhận trong wiki cache (Bedtime Story, A Nation That Doesn't Exist). Nhưng từ "phản bội" là suy luận — source không dùng từ này. | `_data/wiki_cache/en/Bedtime Story.json`, `_data/wiki_cache/en/A Nation That Doesn't Exist.json` |
| 13 | Luna Arc Acts II-VII | Stated as facts without classification | Thêm ⚠️ banner: toàn bộ từ Ver 6.1 trở đi là ❓ Unverified | Không có source file cho Acts II-VII. Chỉ Act I có summary được lưu trữ. | Directory listing of `sources/book_texts/nod-krai/` |

---

## 5. entities/nations/Nod_Krai.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 14 | Section 2A - Ba Mặt Trăng | "cuộc chiến giữa Long Vương Nibelung và Celestia" | Sửa thành Ianikuinen + source + flag Nibelung equation | Giống #5, #9. | Hymns of the Far North, Prayer Song VI |
| 15 | Section 2C - Rotwang/Embla | "chế tạo Tháp Embla hòng đục thủng bầu trời giả" | Xác nhận Rotwang (✅ artifact) + flag tên "Tháp Embla" là ❓ | Giống #10. | `sources/artifact_descriptions/Đêm Trời Hé Lộ.md` |
| 16 | Section 4 - Cốt truyện | Toàn bộ stated as facts | Thêm ⚠️ banner: ❓ Unverified (Acts II-VII) | Không có source files. | N/A |

---

## 6. topics/relationships/relationship_database.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 17 | Header | Chỉ có 1 dòng mô tả | Thêm Methodology Disclaimer giải thích 3 mức độ tin cậy + ghi chú Trust Matrix là editorial | File trộn lẫn canon facts và suy luận mà không phân biệt rõ. | Audit findings. |
| 18 | Jean/Lisa (line 109) | "Lisa dùng sự lười biếng giả vờ để ép Jean nghỉ ngơi" (flat fact) | Thêm 🟡 [Suy luận] + ghi chú: game không xác nhận laziness là deliberate | Không có voice line hay quest xác nhận Lisa's laziness is performative. | No source found. |
| 19 | Zhongli/Hu Tao (line 207) | "Zhongli ngầm dùng sức mạnh tiên nhân bảo vệ Hu Tao" (flat fact) | Thêm ❓ [Không có nguồn] + ghi chú: Speculative | Không có quest, voice line, hay character story xác nhận. | No source found. |
| 20 | Ningguang/Beidou (line 171) | "duy trì vỏ bọc đối đầu trước dư luận Liyue" (flat fact) | Thêm 🟡 [Suy luận] + ghi chú: Community Reading | Game shows both cooperation and conflict but doesn't confirm deliberate facade. | No source for "deliberate" framing. |
| 21 | Neuvillette/Furina (line 561) | "Neuvillette ra lệnh cấm Fatui..." (flat fact) | Thêm ❓ [Không có nguồn] + ghi chú: Speculative | Không có quest hay dialogue xác nhận lệnh cụ thể này. | No source found. |
| 22 | Traveler/Sibling (line 870) | "Sibling âm thầm ra lệnh cho Giáo Hội Vực Sâu..." (flat fact) | Thêm 🟡 [Weakly Implied] + ghi chú: suy luận từ hành vi, không phải sự kiện | Abyss Order không giết Traveler (behavioral pattern) nhưng không có cảnh cho thấy explicit order. | Behavioral inference only. |

---

## SUMMARY

| Severity | Count |
|---|---|
| Critical Errors Fixed | 4 (Mondstadt header, Fatui table, Nibelung→Ianikuinen ×3 files, typo "Quyệt") |
| Reclassifications Applied | 18 |
| Source Notes Added | 14 |
| Methodology Disclaimers Added | 4 |
| **Total Modifications** | **29** |

---

## ADDENDUM: Second Pass Corrections (files not covered in first pass)

### 7. topics/nod-krai/connections_to_other_regions.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 23 | Section 5 - Nibelung moons | "Ba Nữ Thần Mặt Trăng được tạo ra bởi **Long Vương Nibelung**" (stated as fact) | Sửa thành Takoja Ianikuinen (theo Hymns of the Far North) + flag Nibelung equation as ❓ Unverified | Same as corrections #5, #9, #14. Source says Ianikuinen, not Nibelung. | Hymns of the Far North, Prayer Song VI |
| 24 | Section 3 - Rerir | "Rerir đã tiếp nhận sức mạnh Vực Sâu nhằm mục đích cứu hôn thê Tholindis" (flat fact) | ✅ Confirmed names + reclassify "cứu hôn thê" as 🟡 Strongly Implied | Same as correction #12. Source confirms names but "save fiancée" is interpretive. | wiki_cache Bedtime Story, A Nation That Doesn't Exist |
| 25 | Section 3 - Rotwang/Embla/Sampo | "chế tạo Tháp Embla và Cỗ Máy Sampo để đục thủng bầu trời giả" (stated as fact) | ✅ Rotwang canon (artifact). ❓ "Tháp Embla" and "Cỗ Máy Sampo" names unverified. Sampo Mill ≠ Rotwang's device. | Same as correction #10. | artifact Đêm Trời Hé Lộ; Đạo Tặc Reed Miller |
| 26 | Section 2 - Fatui Harbingers Acts II–VII | Three Harbingers' activities marked ✅ (entire Acts II–VII) | ⚠️ Banner added. Only Sandrone's Act I appearance is ✅. All Acts II–VII content reclassified ❓ Unverified. | No source files for Acts II–VII exist in repo. | Directory listing |

### 8. topics/nod-krai/factions_deep_dive.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 27 | Lightkeepers - Rotwang/Embla/Sampo | "Khi Rotwang chế tạo Tháp Embla và Cỗ Máy Sampo đe dọa phá hủy bầu trời địa phương" + "Mũi Tên Terpikeraunas" (stated as facts) | ✅ Rotwang canon + mục đích "phá bầu trời" canon. ❓ "Tháp Embla," "Cỗ Máy Sampo," "Terpikeraunas" flagged as unverified. | Same issues as corrections #10, #11. Names not in source files. | artifact Đêm Trời Hé Lộ; grep results |

### 9. entities/dragon_sovereigns/Overview.md

| # | Mục | Nội dung gốc | Nội dung mới | Lý do | Bằng chứng |
|---|---|---|---|---|---|
| 28 | Section 2 header | "Cuộc Chiến Giành **Quyệt** Kiểm Soát Teyvat" | Sửa typo → "Quyền" + thêm ✅ source citation cho "40 năm" | Typo + cần source cho claim. | Before Sun and Moon: "Bốn mươi mùa đông..." |
| 29 | Section 4 - Nibelung | "Nibelung: Vị Long Vương tối cao" (stated without source note) | Thêm ⚠️ ghi chú: tên "Nibelung" không trong source files + ghi chú Ianikuinen relationship | Name not found in sources/. Ianikuinen connection unverified. | grep toàn bộ sources/ = 0 results cho "Nibelung" |
| 30 | Section 3 - Gnosis creation | "được nén và kết hợp với hài cốt của Kẻ Giáng Lâm Thứ Ba" (stated as fact) | Thêm ✅ cho "Gnosis = remains of Third Descender" (Skirk) + 🟡 cho cơ chế "nén + kết hợp" (suy luận tổng hợp) | Skirk only says "remains" — the compression/combination mechanism is inferred. | wiki_cache Masquerade of the Guilty (Skirk dialogue) |
