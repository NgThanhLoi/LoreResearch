# Workflow: Check Timeline Continuity

Quy trình này hướng dẫn LLM cách thức kiểm duyệt tính nhất quán của dòng thời gian (timeline) và lịch sử sự kiện trong chương truyện nháp.

---

## Quy trình chạy Audit

### Bước 1: Tham chiếu quy tắc dòng thời gian
1. Đọc tệp ghi nhớ dòng thời gian của dự án (`Timeline_Note.md`).
2. Xem mốc **Patch Lock** và **Điểm rẽ nhánh (Divergence Point)** của dự án.
3. Đọc kỹ các tầng lịch sử và checklist nhất quán tại [timeline-continuity.md](../synthesis/timeline-continuity.md).

### Bước 2: Rà soát diễn biến trong chương nháp
1. **Kiểm tra trật tự sự kiện (Event order check):** Các sự kiện diễn ra có đúng trình tự lịch sử không? Có sự kiện nào xảy ra trước điểm rẽ nhánh bị thay đổi không?
2. **Kiểm tra giới hạn tri thức (Character knowledge check):** Nhân vật có biết thông tin mật quá sớm không? (Ví dụ: Diluc biết thân thế Khaenri'ah của Kaeya trước khi Kaeya thú nhận là sai).
3. **Kiểm tra tuổi tác/ngoại hình:** Nhân vật có ở độ tuổi phù hợp với mốc thời gian đó không?

### Bước 3: Đưa ra phán quyết (Output)
LLM thực hiện đánh giá và xuất kết quả theo mẫu sau:

```markdown
### Timeline Continuity Verdict: [SAFE / DIVERGENCE ERROR]

- **Project Patch Lock:** [Ví dụ: Patch 4.8]
- **Divergence point check:** [Sự rẽ nhánh có bắt đầu đúng điểm rẽ khai báo không?]
- **Character knowledge check:** [Các nhân vật có giữ đúng giới hạn tri thức canon không?]
- **Anachronism check:** [Có xuất hiện công nghệ hay vật phẩm sai thời đại không?]
- **Error Details:** [Nếu DIVERGENCE ERROR, trích dẫn chi tiết lỗi và chỉ định file timeline gốc cần đối chiếu]
```

