# Quality Gate Draft (Hermes Workflow Adaptation)

Dựa trên skill `source-layer-quality-gate` của hệ thống Hermes, dưới đây là bộ Quality Gate đề xuất để tích hợp vào LoreResearch nhằm đảm bảo chất lượng các Pass nghiên cứu trong tương lai.

## 1. Các Gate Từ Hermes Áp Dụng Trực Tiếp (Reusable As-is)
- **JSON/Markdown parse:** Mọi file `.md` và `.json` mới hoặc bị sửa đổi đều phải parse thành công. (Bắt buộc)
- **Local links basic check:** Mọi liên kết nội bộ `[link](path)` phải trỏ đến file tồn tại trên ổ đĩa.
- **Review bundle required:** Kết thúc mỗi Pass bắt buộc phải xuất 1 file Review Bundle ghi nhận những gì đã làm, số lượng file, trạng thái lỗi.
- **Files-to-send checklist required:** Trong Review Bundle phải có danh sách các file cần chuyển giao.

## 2. Các Gate Cần Tùy Biến Cho LoreResearch (Reusable With Adaptation)
- **No new source ID without source index update:** LoreResearch không sử dụng hệ thống Source ID dày đặc như Genshin LLM Wiki (không có file `source-index.md` rõ ràng). Gate này chuyển thành: *"Không tạo file nguồn thô mới trong `sources/` mà không cập nhật index liên quan (nếu có)"*.
- **No canon claim without source:** Mọi claim đánh nhãn CANON phải có link trỏ về thư mục `sources/` hoặc `_data/`.
- **No headcanon phrase in canon section:** Nếu một section được đánh nhãn CANON, validator sẽ quét các cụm từ mang tính phỏng đoán (vd: "có lẽ", "tưởng chừng", "chắc là") hoặc nội dung từ `character_intelligence`.
- **No Fandom-only canon:** Bất kỳ claim nào lấy từ Fandom Wiki (tier `wiki_reference`) đều không được dán nhãn CANON nếu không có nguồn Nhóm 1 (Primary In-game) đối chiếu.
- **No structured-reference-only lore canon:** Tương tự, genshin-db/Yatta/Amber chỉ là database, mọi text trích xuất từ đó (dù có vẻ là canon) cần được coi là `official_in_game_mirror`, validator cần cảnh báo không nâng lên CANON nếu không verify.

## 3. Các Gate Không Phù Hợp / Bỏ Qua (Should Not Be Reused Directly)
- **Crawl rules / Scraping limiters:** LoreResearch hiện là pass offline/repo-based. Các gate giới hạn crawl website của Hermes (như timeout, rate limit của Crawl4AI) bị loại bỏ.
- **Strict SQLite validation:** Hiện tại LoreResearch không sử dụng lớp data SQLite lookup layer, mà dùng `.json` hoặc file raw `.md`.

## 4. Đề Xuất Minimal Quality Gate Mặc Định Cho Pass Mới
Mỗi khi chạy 1 Pass mới, yêu cầu Agent/Script thoả mãn checklist sau trước khi declare "Done":
- [ ] JSON/Markdown parse.
- [ ] Local links basic check.
- [ ] No new source ID without source index update (nếu có update).
- [ ] No canon claim without source.
- [ ] No headcanon phrase in canon section.
- [ ] No Fandom-only canon.
- [ ] No structured-reference-only lore canon.
- [ ] Review bundle required (`wiki/research/review-bundle-XXX.md`).
- [ ] Files-to-send checklist required (nằm trong Review Bundle).
- [ ] Validator exit code required (pass/fail rõ ràng bằng script).
