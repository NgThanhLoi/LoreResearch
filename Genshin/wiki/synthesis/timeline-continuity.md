# Timeline and Continuity Rules

Tài liệu này quy chuẩn hóa việc quản lý dòng thời gian và tính nhất quán (continuity) của các sự kiện lịch sử trong truyện, tránh các lỗi nghịch lý thời gian hoặc đứt gãy mạch logic nguyên tác.

---

## Timeline Layers (Các tầng dòng thời gian)

Lịch sử Teyvat được phân chia thành các lớp thời gian cố định sau:

1. **Thần thoại cổ đại / Kỷ nguyên nguyên sơ (Ancient Myth / Primordial Era):** Thời kỳ thống trị của Bảy Vị Long Vương nguyên thủy, cuộc chiến của Phanes, cuộc xâm lăng của Kẻ Giáng Lâm Thứ Hai, và sự sụp đổ của nền văn minh đầu tiên (Enkanomiya chìm sâu).
2. **Chiến Tranh Ma Thần (Archon War):** Diễn ra hơn 2000 năm trước. Hàng trăm Ma Thần tàn sát lẫn nhau để giành lấy 7 Ngôi Vị Thần Linh và Gnosis.
3. **Thảm họa Khaenri'ah / Tai Ương (Cataclysm):** Diễn ra khoảng 500 năm trước. Sự sụp đổ của Khaenri'ah, ma vật tràn ngập thế giới, các cựu Archon hy sinh, và sự im lặng của Celestia bắt đầu.
4. **Kỷ nguyên Tiền truyện (Pre-game Era):** Khoảng thời gian từ sau Cataclysm cho đến trước khi Nhà Lữ Hành thức tỉnh (ví dụ: tuổi thơ của Kaeya và Diluc, cái chết của Crepus).
5. **Cốt truyện chính của Game (Game Main Story):** Bắt đầu từ lúc Nhà Lữ Hành tỉnh dậy, đi qua các quốc gia Mondstadt, Liyue, Inazuma, Sumeru, Fontaine, Natlan.
6. **Sau cập nhật hiện tại (Post-current Patch):** Các sự kiện diễn ra sau patch game hiện tại mà câu chuyện lấy làm mốc rẽ.
7. **Dòng thời gian thế giới song song (AU Timeline):** Dòng thời gian do người viết tự thiết lập dựa trên các thay đổi nền tảng được khai báo trước.

---

## Rules (Quy tắc quản trị dòng thời gian)

* **Nếu viết Canon-compliant (Tuân thủ nguyên tác):** Cấm tuyệt đối thay đổi các sự kiện lịch sử lớn hoặc kết cục của các sự kiện trong game. Lịch sử Teyvat là cố định.
* **Nếu viết Canon-divergence (Lệch nhánh nguyên tác):** Bắt buộc phải xác định chính xác **Điểm phân nhánh (Divergence Point)**. Kể từ điểm này, các sự kiện có thể diễn ra khác đi, nhưng các sự kiện xảy ra TRƯỚC điểm phân nhánh bắt buộc phải giữ nguyên canon.
* **Nếu viết AU (Thế giới song song):** Phải khai báo thay đổi nền tảng (ví dụ: "Trong AU này, Khaenri'ah không bị Celestia hủy diệt").
* **Nếu viết Tiền truyện (Prequel):** Phải bám sát kết cục canon đã biết. Dù nhân vật có làm gì trong tiền truyện, họ không được thay đổi kết quả lịch sử (ví dụ: viết tiền truyện về quý tộc Lawrence thì cuối cùng Vennessa vẫn phải chiến thắng và thành lập Đội Kỵ Sĩ).
* **Nếu viết Post-canon / Current Patch (Patch Lock policy):** Phải khai báo rõ ràng **Patch Lock** (ví dụ: "Dựa trên nội dung cốt truyện tính đến Patch 6.0"). Mọi chi tiết cốt truyện ra mắt sau patch này của game sẽ được coi là thế giới song song nếu mâu thuẫn với truyện.

---

## Timeline Note Template (Template khai báo dòng thời gian)

Mỗi dự án fanfic bắt buộc phải đính kèm một bản ghi nhớ dòng thời gian theo mẫu sau:

```markdown
# Timeline Note

Project: [Tên dự án truyện]
Canon Patch: [Mốc Patch game tối đa được sử dụng, ví dụ: Patch 4.8 hoặc Patch 6.0]
Divergence Point: [Điểm bắt đầu rẽ nhánh, ví dụ: Sau khi kết thúc nhiệm vụ Ma Thần Mondstadt]
Events kept unchanged:
- [Sự kiện canon 1 được giữ nguyên, ví dụ: Crepus đã qua đời 3 năm trước]
- [Sự kiện canon 2]
Events changed:
- [Sự kiện bắt đầu thay đổi, ví dụ: Kaeya không gia nhập Đội Kỵ Sĩ mà bỏ đi làm lính đánh thuê]
Characters affected:
- [Tên các nhân vật chịu tác động của sự thay đổi]
Lore risks:
- [Các rủi ro mâu thuẫn lịch sử có thể gặp và cách xử lý]
Source references:
- [Các file nguồn sơ cấp đối chiếu dòng thời gian, ví dụ: entities/Timeline.md]
```

---

## Continuity Checklist (Danh sách kiểm soát tính nhất quán)

Trước khi viết hoặc phê duyệt một chương truyện, người viết phải tích đủ các mục kiểm tra sau:

* **[ ] Tuổi và ngoại hình nhân vật:** Nhân vật có ở độ tuổi phù hợp với mốc thời gian đó không? (Ví dụ: 500 năm trước Kaeya chưa ra đời, Diluc chỉ mới 18 tuổi vào đêm Crepus mất).
* **[ ] Trạng thái sự kiện:** Sự kiện lớn đã xảy ra chưa? (Ví dụ: Nếu viết thời kỳ Dvalin bị Abyss kiểm soát, thành phố Mondstadt phải đang ở trạng thái căng thẳng và có tường gió bao quanh).
* **[ ] Quan hệ nhân vật tại thời điểm đó:** Mối quan hệ giữa các nhân vật đã phát triển đến đâu? (Ví dụ: Nếu viết trước đêm Crepus mất, Kaeya và Diluc vẫn là anh em thân thiết, Diluc chưa rời Đội Kỵ Sĩ và chưa có Delusion của cha).
* **[ ] Trạng thái quốc gia:** Quốc gia bối cảnh đang ở tình trạng chính trị nào? (Ví dụ: Liyue sau khi Nham Thần giả chết sẽ do Thất Tinh trực tiếp quản lý).
* **[ ] Tiến độ Archon Quest:** Nhà Lữ Hành đang ở đâu trong hành trình? Đã giải quyết xong vấn đề của vùng đất đó chưa?
* **[ ] Bí mật nhân vật đã biết:** Nhân vật đã biết thông tin mật này chưa? (Ví dụ: Diluc ở thời điểm hiện tại chưa biết Kaeya mang dòng máu hoàng gia Khaenri'ah nếu Kaeya chưa thú nhận).
* **[ ] Vị trí Gnosis:** Gnosis liên quan đang nằm trong tay ai? (Vẫn ở trong người Archon, đã bị Fatui lấy đi, hay đã bị hủy?).
* **[ ] Trạng thái hoạt động của Fatui/Abyss:** Tổ chức đối địch đang hoạt động công khai hay âm thầm trong bóng tối tại vùng đất đó?
