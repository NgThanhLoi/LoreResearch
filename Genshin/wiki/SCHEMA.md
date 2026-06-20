# Wiki Schema

## Page Frontmatter

Mọi trang thực thể (entity), tổng hợp (synthesis), nguồn (source), quy trình (workflow), và mẫu dự án (project template) phải chứa frontmatter dạng YAML như sau:

```yaml
---
wiki_type: entity | synthesis | source_index | workflow | project_template
entity_type: character | faction | region | power | event | item | concept | none
status: draft | active | needs_audit | archived
reliability: primary | mixed | theory_heavy | unverified | unknown
last_audited: YYYY-MM-DD
source_level: primary | official | cited_summary | analysis | headcanon | mixed | missing
tags: []
related_pages: []
---
```

## Reliability Labels

Mọi claim hoặc tài liệu phân tích phải gắn nhãn độ tin cậy theo thang phân cấp sau:

* **CANON:** Có nguồn sơ cấp trực tiếp hoặc thông tin truyền thông chính thức từ miHoYo xác nhận. Không có mâu thuẫn hay suy diễn cá nhân.
* **STRONGLY IMPLIED:** Có nhiều manh mối, ẩn dụ hoặc suy luận logic mạnh mẽ từ game nhưng không có văn bản khẳng định trực tiếp.
* **THEORY:** Giả thuyết, suy luận của cộng đồng nghiên cứu dựa trên các dữ liệu phân mảnh. Có tính thuyết phục cao nhưng chưa được game xác nhận.
* **HEADCANON:** Chi tiết, thói quen sinh hoạt, hoặc suy nghĩ nội tâm do người viết tự bổ sung nhằm tô điểm thêm tính cách nhân vật mà không mâu thuẫn với canon.
* **AU (Alternate Universe):** Thay đổi cố ý của người viết đi chệch khỏi canon (phải khai báo trước).
* **UNVERIFIED:** Thiếu nguồn sơ cấp đối chiếu, không rõ xuất xứ, có rủi ro cao bị game sửa đổi hoặc là lỗi database cũ. Cấm làm nền tảng cốt truyện chính.
* **ERROR / CONTRADICTION:** Dữ liệu lỗi thời, sai sự thật vật lý, hoặc hai tuyên bố mâu thuẫn trực tiếp với nhau chưa được giải quyết.

## Claim Format

Mọi tuyên bố quan trọng phải được viết theo định dạng sau để LLM dễ truy vết:

```markdown
- [CLAIM-ID] Nội dung claim bằng tiếng Việt.
  - label: CANON / STRONGLY IMPLIED / THEORY / HEADCANON / AU / UNVERIFIED / ERROR / CONTRADICTION
  - source: wiki/sources/[file].md#section hoặc sources/[folder]/[file].md#L[line]
  - confidence: high / medium / low
  - notes: Ghi chú giải thích thêm (nếu có).
```

## Source Reference Format

Định dạng đường dẫn nguồn bắt buộc sử dụng chuẩn liên kết markdown của workspace:

```markdown
source: sources/weapon_stories/[file].md
source: sources/artifact_descriptions/[file].md
source: entities/[folder]/[file].md
source: topics/[folder]/[file].md
```

## Contradiction Format

Khi phát hiện mâu thuẫn giữa hai nguồn hoặc hai tuyên bố, dùng khối định dạng sau:

```markdown
## Contradiction: [Tên ngắn của mâu thuẫn]

- conflict_id: CON-[Tên_ngắn]
- claim_a: [Nội dung tuyên bố A]
- source_a: [Đường dẫn nguồn A]
- claim_b: [Nội dung tuyên bố B]
- source_b: [Đường dẫn nguồn B]
- severity: low / medium / high / critical
- status: unresolved / resolved / archived
- decision: [Phán quyết sử dụng nếu có, ngược lại để trống]
- notes: [Phân tích chi tiết lỗi hoặc lý do mâu thuẫn]
```

## Entity Backlink Format

Mọi trang thực thể (entity page) phải chứa phần liên kết ngược ở cuối trang để tạo mối quan hệ cấu trúc dữ liệu:

```markdown
## Related Pages
- Related characters: []
- Related factions: []
- Related regions: []
- Related powers: []
- Related events: []
- Related concepts: []
```

## Naming Convention

* Tên file viết bằng tiếng Anh không dấu, sử dụng snake_case hoặc PascalCase nhất quán.
* Không sử dụng ký tự đặc biệt, dấu cách hay dấu tiếng Việt trong tên file.
* Tên trang và ID liên kết phải giữ nguyên định dạng ổn định để tránh gãy liên kết chéo khi cập nhật.

## Status Convention

* **draft:** Trang mới được khởi tạo, thông tin sơ sài hoặc chưa được audit nguồn đầy đủ.
* **active:** Trang đã được audit, thông tin đáng tin cậy và sẵn sàng cho việc sử dụng viết truyện.
* **needs_audit:** Trang bị nghi ngờ có thông tin unverified trộn lẫn hoặc xuất hiện mâu thuẫn mới cần rà soát lại.
* **archived:** Trang thông tin cũ, ý tưởng hoặc premise cũ chỉ giữ lại để tham khảo chéo, không dùng làm định hướng chính.
