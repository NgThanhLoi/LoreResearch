# Workflow: Check OOC Risk

Quy trình này hướng dẫn LLM cách thức chạy kiểm duyệt giọng điệu và hành vi của nhân vật (OOC Audit) đối với một chương truyện viết nháp.

---

## Quy trình chạy Audit

### Bước 1: Thu thập tài liệu tham chiếu
1. Xác định danh sách các nhân vật canon sẽ xuất hiện trong chương truyện.
2. Đọc hồ sơ thực thể nhân vật tương ứng tại `wiki/entities/characters/`.
3. Đọc hướng dẫn chất giọng tại mục **Voice Guide** của nhân vật đó.
4. Đọc các lỗi OOC cần tránh tại [ooc-risk-index.md](../synthesis/ooc-risk-index.md) và [headcanon-fanon-policy.md](../synthesis/headcanon-fanon-policy.md).

### Bước 2: So sánh và rà soát chương truyện
1. Đọc kỹ từng câu thoại của nhân vật trong chương nháp:
   - Cách xưng hô có khớp với Voice Guide không?
   - Nhịp điệu và thái độ nói chuyện có bị quá ngọt ngào, thô lỗ hoặc lười biếng một cách máy móc không?
2. Rà soát hành động và phản ứng cảm xúc của nhân vật:
   - Nhân vật có bị bi lụy hóa, khóc lóc yếu đuối vô cớ trước áp lực không?
   - Có tự ý thêm các trauma tự chế (như sợ lửa) làm ảnh hưởng hành vi không?

### Bước 3: Đưa ra phán quyết (Output)
LLM thực hiện đánh giá và xuất kết quả theo mẫu sau:

```markdown
### OOC Audit Verdict: [PASS / FAIL]

- **Character checked:** [Tên nhân vật]
- **Voice Guide match:** [Đạt / Không đạt — Chỉ rõ các câu thoại bị lệch giọng nếu có]
- **Fanon Trope check:** [Phát hiện trope cũ nào không?]
- **Headcanon validation:** [Các headcanon được dùng có đúng nhãn và điều kiện sử dụng không?]
- **Failure Details:** [Nếu FAIL, trích dẫn nguyên văn đoạn văn/câu thoại bị lỗi OOC]
```

