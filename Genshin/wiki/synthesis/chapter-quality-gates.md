# Chapter Quality Gates

Tài liệu này cung cấp quy trình và các chốt kiểm soát chất lượng (QA) bắt buộc cho từng chương truyện trước khi công bố hoặc đưa vào lưu trữ chính thức.

---

## 1. Before Writing (Trước khi viết)
* **Khóa tệp cấu hình:** Người viết phải mở tệp cấu hình dự án (`projects/[project_name]/Project_Profile.md`) và đối chiếu các thông số.
* **Kiểm tra Patch Lock:** Xác định mốc patch game tối đa và dòng thời gian của chương.
* **Xác nhận danh sách nhân vật:** Đọc kỹ hướng dẫn chất giọng và rủi ro OOC của các nhân vật sẽ xuất hiện trong chương từ [ooc-risk-index.md](ooc-risk-index.md).
* **Đăng ký điểm rẽ nhánh:** Đảm bảo điểm rẽ nhánh (Divergence Point) của dòng thời gian được ghi nhận chi tiết.

---

## 2. During Writing (Trong khi viết)
* **Bám sát giới hạn sức mạnh:** Đảm bảo các màn combat tuân thủ đúng các quy tắc tiêu hao thể lực và phản ứng nguyên tố trong [power-system-governance.md](power-system-governance.md).
* **Tránh info-dump:** Lồng ghép lore gián tiếp qua hành động, vật phẩm hoặc hội thoại ngắn. Không viết các đoạn văn tả cảnh hoặc giải thích lịch sử quá 200 chữ liên tục.
* **Duy trì chất giọng thoại:** Đối chiếu trực tiếp cách dùng từ, xưng hô của nhân vật với Voice Guide.

---

## 3. After Writing (Sau khi viết)
* **Chạy bảng kiểm duyệt QA:** Thực hiện kiểm tra chéo và chấm điểm chương truyện dựa trên Bảng QA dưới đây.
* **Ghi chú nguồn sơ cấp:** Đính kèm mã Source ID hoặc link nguồn thô ở cuối chương để phục vụ hậu kiểm.

---

## QA Table (Bảng kiểm duyệt chất lượng chương)

Người viết chạy kiểm duyệt chương dựa trên các tiêu chí sau và điền kết quả vào file `Chapter_QA.md` của dự án:

| Hạng mục QA | Mô tả tiêu chí kiểm tra | Đạt (Pass) | Cảnh báo (Warning) | Không đạt (Fail) |
| :--- | :--- | :---: | :---: | :---: |
| **Canon QA** | Chương không chứa các tuyên bố sai canon hoặc sử dụng các unverified lore (như Columbina=Kuutar) làm sự thật khách quan. | Không có lỗi. | Có dùng unverified lore nhưng ở dạng tin đồn / suy đoán nhân vật. | Chứa lỗi sai canon vật lý hoặc dùng unverified lore làm nút thắt plot. |
| **OOC QA** | Dàn cast giữ đúng chất giọng, cách xưng hô và động cơ gốc. Không sa vào các trope fanon độc hại (Diluc giận dữ, Kaeya bi lụy). | Hội thoại tự nhiên, chuẩn tính cách. | Nhân vật có thói quen headcanon được dán nhãn nhưng xưng hô hơi gượng. | Nhân vật hành xử trái ngược đạo đức/động cơ canon hoặc khóc lóc bi lụy vô cớ. |
| **Timeline QA** | Trật tự các sự kiện trong chương nhất quán với mốc thời gian đã chọn và điểm rẽ nhánh. Tránh nghịch lý thời gian. | Nhất quán 100%. | Nhân vật biết thông tin hơi sớm nhưng có lý giải nhẹ. | Thay đổi lịch sử xảy ra trước điểm rẽ nhánh, hoặc nhân vật trẻ tuổi hành động ở thời kỳ cổ đại. |
| **Power QA** | Việc dùng Vision/Delusion tiêu hao stamina và có backfire rõ ràng. Không buff bẩn, combat nguyên tố có chiến thuật phản ứng. | Combat hợp lý, có trả giá và chiến thuật. | OC hơi mạnh nhưng có hạn chế thể lực rõ. | OC một hit hạ Archon, dùng Delusion/Abyss không tốn sức, hoặc dùng phép tự chế không giới hạn. |
| **Style QA** | Viết theo phong cách Show-don't-tell. Không info-dump. Cảnh viết có cấu trúc mục tiêu - xung đột - thay đổi rõ ràng. | Nhịp truyện mượt mà, chèn lore gián tiếp xuất sắc. | Có một đoạn giải thích lore hơi dài (150-200 chữ). | Info-dump nguyên trang wiki, nhân vật nói chuyện giải thích lore như cái loa của tác giả. |
