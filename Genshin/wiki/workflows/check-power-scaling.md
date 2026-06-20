# Workflow: Check Power Scaling

Quy trình này hướng dẫn LLM cách thức kiểm duyệt các màn combat ma thuật và nguyên tố trong chương truyện nháp để ngăn chặn buff bẩn và mất cân bằng scaling.

---

## Quy trình chạy Audit

### Bước 1: Tham chiếu quy tắc sức mạnh
1. Xác định các hệ sức mạnh xuất hiện trong chương truyện (Vision, Delusion, Abyss, Khemia...).
2. Đọc kỹ các giới hạn, cái giá phải trả và các lệnh cấm tại [power-system-governance.md](../synthesis/power-system-governance.md).

### Bước 2: Rà soát hành vi combat trong chương nháp
1. **Kiểm tra đối tượng sử dụng (User check):** Nhân vật có đủ điều kiện/canon để sở hữu sức mạnh đó không? (Ví dụ: OC không có sức mạnh thần linh).
2. **Kiểm tra chi phí (Cost check):** Việc sử dụng nguyên tố có tiêu hao stamina thể lực không? Nhân vật dùng Delusion/Abyss có bị phản phệ vật lý đau đớn không?
3. **Kiểm tra giới hạn (Limit check):** Nhân vật có dùng chiêu liên tục không nghỉ không?
4. **Kiểm tra lệnh cấm (Banned moves check):** Có xuất hiện tình huống cấm (như một hit hạ Archon, thanh tẩy Abyss không tốn sức) không?

### Bước 3: Đưa ra phán quyết rủi ro (Output)
LLM thực hiện đánh giá và xuất kết quả theo mẫu sau:

```markdown
### Power Scaling Audit Verdict: [SAFE / RISK DETECTED]

- **Powers used:** [Danh sách hệ sức mạnh xuất hiện]
- **Cost & Consequence check:** [Có mô tả cái giá vật lý tương xứng không?]
- **Power scale level:** [Đánh giá thứ tự sức mạnh có khớp với Thang đo tương đối không?]
- **Banned moves check:** [Phát hiện hành vi cấm nào không?]
- **Risk Details:** [Nếu RISK DETECTED, trích dẫn đoạn combat bị lỗi và đề xuất phương án giảm tải sức mạnh]
```

