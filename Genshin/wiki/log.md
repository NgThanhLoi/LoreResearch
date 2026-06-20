# Wiki Log

## Format

```markdown
## YYYY-MM-DD
- **action:** [Mô tả ngắn hành động]
- **files_changed:**
  - [Đường dẫn file 1]
- **reason:** [Lý do thực hiện thay đổi]
- **source_basis:** [Nguồn sơ cấp/thứ cấp dùng để quyết định thay đổi]
- **unresolved_issues:** [Các vấn đề chưa giải quyết được sau thay đổi]
```

## Entries

## 2026-06-20
- **action:** Thiết lập cấu trúc LLM Wiki và di trú hệ thống dữ liệu nền tảng.
- **files_changed:**
  - wiki/README.md
  - wiki/SCHEMA.md
  - wiki/index.md
  - wiki/log.md
  - wiki/sources/README.md
  - wiki/sources/source-map.md
  - wiki/sources/source-index.md
  - wiki/sources/source-quality-report.md
  - wiki/entities/README.md
  - wiki/entities/* (Tạo thư mục con, READMEs, và templates)
  - wiki/synthesis/README.md
  - wiki/synthesis/* (Di trú và tinh chỉnh các trang quy tắc từ foundation/)
  - wiki/workflows/* (Xây dựng các quy trình hướng dẫn thao tác kiểm duyệt)
  - wiki/projects/_template/* (Tạo các tệp cấu hình dự án mẫu)
- **reason:** Tổ chức lại không gian làm việc thành một cơ sở dữ liệu tri thức Genshin Impact phi SQL dạng Markdown, phục vụ quản trị cốt truyện và lore lâu dài cho các dự án fanfic.
- **source_basis:** Toàn bộ dữ liệu từ thư mục `foundation/` và `planning/` gốc, cùng báo cáo độ tin cậy `RELIABILITY_SUMMARY.md` và `REMAINING_OPEN_ISSUES.md`.
- **unresolved_issues:**
  - Khoảng 40+ hồ sơ nhân vật trong `entities/character_intelligence/` vẫn chứa suy đoán tâm lý học sâu chưa được audit gắn nhãn.
  - Các mảng dữ liệu trống trong `quests/` và các shell trống trong `entities/`.
  - Cốt truyện Nod-Krai Acts II-VII hoàn toàn thiếu hội thoại gốc.
- **Premise / Outline status:** 
  - **Không chọn premise** (premise-free).
  - **Không lập outline**.
  - **Không viết thử chương truyện**.
  - **Không tạo OC**.

## 2026-06-20 — Wiki Pass 2

- **action:** Rà soát và nâng cấp tính di động, hoàn thiện chỉ mục nguồn và audit tuyên bố (Pass 2):
  - Chuyển đổi toàn bộ liên kết tuyệt đối `file:///d:/` thành liên kết tương đối hoặc tương đối workspace.
  - Phục hồi các liên kết rác `]()` do lỗi mã hóa trước đó trong toàn bộ các tệp quy trình và quy tắc.
  - Mở rộng bảng chỉ mục `source-index.md` lên cấp độ tệp tin cho các tài liệu nguồn thô quan trọng nhất.
  - Đánh giá trạng thái nguồn sơ cấp cho 15 điểm lore trong `unverified-lore-register.md` và bổ sung cột `Source status`.
  - Bổ sung 13 tuyên bố chi tiết cấp claim-level (`PWR-xxxx`) cho các hệ sức mạnh trong `power-system-governance.md`.
  - Đăng ký các mâu thuẫn mới phát hiện (thư mục nguồn ảo, cơ chế xiềng xích Gnosis) vào `contradiction-register.md`.
  - Cập nhật lộ trình làm sạch dữ liệu hậu Pass 2.
- **files_changed:**
  - [wiki/README.md](./README.md)
  - [wiki/index.md](./index.md)
  - [wiki/sources/source-index.md](./sources/source-index.md)
  - [wiki/sources/source-map.md](./sources/source-map.md)
  - [wiki/sources/source-quality-report.md](./sources/source-quality-report.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/power-system-governance.md](./synthesis/power-system-governance.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/synthesis/data-cleaning-roadmap.md](./synthesis/data-cleaning-roadmap.md)
  - [wiki/synthesis/canon-governance.md](./synthesis/canon-governance.md)
  - [wiki/synthesis/chapter-quality-gates.md](./synthesis/chapter-quality-gates.md)
  - [wiki/synthesis/genre-adapters.md](./synthesis/genre-adapters.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/README.md](./synthesis/README.md)
  - [wiki/workflows/README.md](./workflows/README.md)
  - [wiki/workflows/add-new-source.md](./workflows/add-new-source.md)
  - [wiki/workflows/audit-claim.md](./workflows/audit-claim.md)
  - [wiki/workflows/check-ooc-risk.md](./workflows/check-ooc-risk.md)
  - [wiki/workflows/check-power-scaling.md](./workflows/check-power-scaling.md)
  - [wiki/workflows/check-timeline-continuity.md](./workflows/check-timeline-continuity.md)
  - [wiki/workflows/prepare-new-fanfic-project.md](./workflows/prepare-new-fanfic-project.md)
  - [wiki/workflows/update-entity-page.md](./workflows/update-entity-page.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Tài liệu sơ cấp trong `sources/weapon_stories/`, `sources/artifact_descriptions/`, `sources/book_texts/`.
- **unresolved_issues:**
  - Thiếu thư mục nguồn thô đối thoại và nguồn chính thức (`sources/quest_dialogue/` và `sources/official/`).
  - Hơn 40+ hồ sơ nhân vật `entities/character_intelligence/` vẫn chứa suy đoán tâm lý chưa được audit.
- **next_recommended_steps:**
  - Thực hiện audit OOC/Headcanon chuyên sâu cho hồ sơ nhân vật trong `entities/character_intelligence/`.
  - Khởi tạo trang nhân vật và sức mạnh chính thức đầu tiên chỉ sau khi hồ sơ phân tích tương ứng đã được audit và làm sạch hoàn toàn.

## 2026-06-20 — Wiki Pass 2.1

- **action:** Thắt chặt kỷ luật nguồn và sửa lỗi kiểm duyệt sơ cấp (Pass 2.1):
  - Loại bỏ các mã nguồn giả định và đánh dấu TODO cho các file thoại chưa xác minh (như Skirk).
  - Hạ cấp độ tin cậy và gán nhãn `needs_file_level_source` cho các tuyên bố chỉ dùng đường dẫn thư mục làm nguồn sơ cấp.
  - Thiết lập thuộc tính `needs_primary_source: true` và chuyển đổi `narrator_safe` sang `conditional` cho toàn bộ các tuyên bố chỉ có nguồn gián tiếp (overview, timeline).
  - Tinh chỉnh phán quyết sử dụng đối với `Sampo Mill` và `Hyperborea` trong `unverified-lore-register.md` để phân biệt rõ ranh giới văn học dân gian (folklore) và địa chính trị thực tế.
  - Thêm cảnh báo mâu thuẫn chính sách `CON-0010` cấm coi thư mục nguồn là bằng chứng xác minh tuyệt đối.
- **files_changed:**
  - [wiki/sources/source-index.md](./sources/source-index.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/power-system-governance.md](./synthesis/power-system-governance.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **claims_changed:**
  - `PWR-VISION-001` & `PWR-ELEMENT-001`: `source_status` chuyển thành `needs_file_level_source`, `narrator_safe` chuyển thành `conditional`.
  - `PWR-GNOSIS-001`, `PWR-ARCHON-001`, `PWR-DRAGON-001`, `PWR-IRMINSUL-001`, `PWR-FORBIDDEN-001`, `PWR-CELESTIA-001`: Thêm `needs_primary_source: true`, `narrator_safe` chuyển thành `conditional`.
  - `Sampo Mill`: Cho phép sử dụng trong bối cảnh folklore, cấm đồng nhất với Rotwang.
  - `Hyperborea`: Chỉ coi sự tồn tại của tên trong cổ thư là canon; diễn giải địa chính trị hạ xuống nhãn `THEORY`.
- **source_todo_list:**
  - Di chuyển tệp thoại của Skirk (`VL-0002`) sang TODO do chưa tồn tại trong workspace.
- **unresolved_issues:**
  - Thiếu tệp thoại sơ cấp của Skirk dẫn đến các tuyên bố về Gnosis/Descender vẫn ở trạng thái `indirect_source_only`.
  - Kho vũ khí (222 files) và thánh di vật (57 files) chưa được lập chỉ mục chi tiết cấp tệp tin.
  - Thiếu thư mục hội thoại quest và tin tức chính thức.

## 2026-06-20 — Wiki Pass 3.0/3.1

- **action:**
  - Tạo danh mục kiểm kê nhân vật (character-inventory.md) phân loại rủi ro và độ ưu tiên kiểm định cho toàn bộ 109 nhân vật.
  - Xây dựng backlog kiểm định nhân vật (character-audit-backlog.md) phân chia lộ trình thực hiện theo các giai đoạn rõ ràng.
  - Thực hiện kiểm định chuyên sâu cấp độ Level 2 OOC Risk Audit cho lô đầu tiên gồm 5 nhân vật nguy cơ cao: Kaeya, Diluc, Zhongli, Lisa, Jean.
  - Tạo mới các trang wiki nhân vật đã kiểm định: Kaeya.md, Diluc.md, Zhongli.md, Lisa.md, Jean.md với nhãn độ tin cậy và Voice Guide chuẩn xác.
  - Cập nhật chỉ mục rủi ro OOC (ooc-risk-index.md) với định dạng bảng mới chuẩn hóa, bổ sung các bẫy OOC của 5 nhân vật đã audit.
  - Cập nhật chính sách Headcanon/Fanon (headcanon-fanon-policy.md) ghi nhận các phán quyết, headcanon an toàn và headcanon bị cấm của Pass 3.
  - Đăng ký mâu thuẫn mới CON-0011 (Lỗi học phái của Lisa) vào sổ đăng ký mâu thuẫn (contradiction-register.md) và cập nhật trạng thái CON-0007.
  - Nâng cấp Characters README (README.md) phản ánh các cấp độ kiểm định mới và liên kết danh mục/backlog.
- **files_changed:**
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/entities/characters/Kaeya.md](./entities/characters/Kaeya.md)
  - [wiki/entities/characters/Diluc.md](./entities/characters/Diluc.md)
  - [wiki/entities/characters/Zhongli.md](./entities/characters/Zhongli.md)
  - [wiki/entities/characters/Lisa.md](./entities/characters/Lisa.md)
  - [wiki/entities/characters/Jean.md](./entities/characters/Jean.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/entities/characters/README.md](./entities/characters/README.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Các hồ sơ phân tích tâm lý nhân vật thô trong `entities/character_intelligence/`.
  - Các tệp thoại sơ cấp trong `sources/voice_lines/characters/` của 5 nhân vật chính.
  - Quy tắc phân tích tâm lý, quy tắc Headcanon và Contradiction Register hiện hành.
- **unresolved_issues:**
  - Thiếu tệp tin câu chuyện nhân vật thô (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử chi tiết phải ghi nhận dưới dạng `indirect_source_only`.
  - 104 nhân vật còn lại vẫn ở trạng thái Level 1 (Inventory Only) và chưa được audit chuyên sâu.
- **next_recommended_steps:**
  - Tiếp tục giai đoạn kiểm định Phase 3.2 (Lore-Impact Batch) gồm Albedo, Klee, Neuvillette, Furina, Dottore, Columbina, Sandrone.
  - Tích hợp thêm các nguồn hội thoại thô và câu chuyện nhân vật nếu được bổ sung vào workspace.
  - Không xây dựng tiền đề cốt truyện (premise) hay phác thảo (outline) dự án truyện tại thời điểm này.

## 2026-06-20 — Wiki Pass 3.1.1

- **action:**
  - Đã chuẩn hóa định dạng liên kết trong tệp danh mục nhân vật `character-inventory.md`, thay thế các liên kết markdown hỏng đến file cục bộ bằng mã định danh đường dẫn (code paths).
  - Tinh chỉnh các nhãn rủi ro trong chỉ mục rủi ro OOC `ooc-risk-index.md`: Chỉ dùng nhãn `ERROR / CONTRADICTION` cho các mâu thuẫn trực tiếp có conflict ID tương ứng; sử dụng `OOC_RISK` cho các nguy cơ viết lệch tính cách và `UNVERIFIED` cho khoảng trống thông tin.
  - Bổ sung cột `Risk type` (loại rủi ro) vào chỉ mục OOC với các giá trị: `contradiction`, `fanon_risk`, `exaggeration_risk`, `unsupported_portrayal`, `source_gap`.
  - Rà soát các trang thực thể nhân vật của Kaeya và Diluc, gắn nhãn `needs_primary_source: true`, đặt độ tin cậy `confidence: medium` và cập nhật nguồn gián tiếp `source_status: indirect_source_only` cho toàn bộ các tuyên bố `CANON` nào chỉ có nguồn tham chiếu từ `entities/character_intelligence/`.
  - Cập nhật mối quan hệ của Diluc với cha Crepus sang `indirect_source_only (needs_primary_source)`.
- **files_changed:**
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/entities/characters/Kaeya.md](./entities/characters/Kaeya.md)
  - [wiki/entities/characters/Diluc.md](./entities/characters/Diluc.md)
  - [wiki/log.md](./log.md)
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp tệp tin câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các sự kiện lịch sử/quá khứ chưa được kiểm chứng đầy đủ ở cấp độ sơ cấp.
- **next_recommended_steps:**
  - Tiếp tục giai đoạn kiểm định Phase 3.2 (Lore-Impact Batch) khi được yêu cầu.

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2A

- **action:**
  - Thực hiện kiểm định chuyên sâu cấp độ Level 2 OOC Risk Audit cho nhóm nhân vật Lore-Impact đợt đầu tiên: Albedo, Klee, Neuvillette.
  - Tạo mới các trang thực thể nhân vật đã kiểm định: `Albedo.md`, `Klee.md`, `Neuvillette.md` với đầy đủ Frontmatter, Canon Personality, Headcanon, OOC Risks, và Power/Lore Constraints.
  - Cập nhật chỉ mục rủi ro OOC `ooc-risk-index.md`: Sửa đổi trạng thái nguồn cho Zhongli (CON-0000 không có, sửa thành `source_missing`), bổ sung thêm các dòng rủi ro OOC chi tiết mới cho Albedo, Klee, và Neuvillette.
  - Cập nhật chính sách Headcanon/Fanon `headcanon-fanon-policy.md`: Thêm mục `Character Audit Pass 3.2 Notes` ghi nhận phán quyết cho đợt 3.2A.
  - Cập nhật danh mục nhân vật `character-inventory.md` và backlog kiểm định `character-audit-backlog.md` ghi nhận Albedo, Klee, Neuvillette đã hoàn thành audit (Level 2).
- **files_changed:**
  - [wiki/entities/characters/Albedo.md](./entities/characters/Albedo.md)
  - [wiki/entities/characters/Klee.md](./entities/characters/Klee.md)
  - [wiki/entities/characters/Neuvillette.md](./entities/characters/Neuvillette.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Albedo, Klee, Neuvillette.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến một số tuyên bố lịch sử/giả kim thuật chi tiết vẫn ở dạng `indirect_source_only`.
- **next_loop:**
  - Loop 3.2B: Furina, Dottore, Columbina

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2B

- **action:**
  - Audited characters: Furina, Dottore, Columbina
  - Created/updated character pages: `Furina.md`, `Dottore.md`, `Columbina.md`
  - Updated OOC index: (no change, verified that they are present)
  - Updated headcanon/fanon policy: updated with Furina, Dottore, Columbina rules
  - Updated contradiction register: (no change)
  - Updated inventory/backlog: marked Furina, Columbina audited; Dottore added as blocked
- **files_changed:**
  - [wiki/entities/characters/Furina.md](./entities/characters/Furina.md)
  - [wiki/entities/characters/Dottore.md](./entities/characters/Dottore.md)
  - [wiki/entities/characters/Columbina.md](./entities/characters/Columbina.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Furina, Columbina.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` của Furina.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử vẫn ở dạng `indirect_source_only`.
  - Thiếu tệp thoại sơ cấp của Columbina dẫn đến việc không có Voice Guide chính thức.
  - Thiếu hoàn toàn tài liệu nguồn của Dottore dẫn đến nhân vật ở trạng thái `blocked_by_missing_source`.
- **next_loop:**
  - Loop 3.2C: Sandrone, Kẻ Lang Thang / Wanderer / Scaramouche, Aether

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2C

- **action:**
  - Audited characters: Sandrone, Kẻ Lang Thang, Aether
  - Created/updated character pages: `Sandrone.md`, `Kẻ Lang Thang.md`, `Aether.md`
  - Updated OOC index: (no change, verified that they are present)
  - Updated headcanon/fanon policy: updated with Kẻ Lang Thang and Aether rules
  - Updated contradiction register: registered CON-0012 for Wanderer Irminsul memory rule
  - Updated inventory/backlog: marked Kẻ Lang Thang and Aether audited; Sandrone added as blocked
- **files_changed:**
  - [wiki/entities/characters/Sandrone.md](./entities/characters/Sandrone.md)
  - [wiki/entities/characters/Kẻ Lang Thang.md](./entities/characters/Kẻ Lang Thang.md)
  - [wiki/entities/characters/Aether.md](./entities/characters/Aether.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Kẻ Lang Thang, Aether.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử vẫn ở dạng `indirect_source_only`.
  - Thiếu hoàn toàn tài liệu nguồn của Sandrone dẫn đến nhân vật ở trạng thái `blocked_by_missing_source`.
- **next_loop:**
  - Loop 3.2D: Lumine, Nahida, Raiden Shogun

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2D

- **action:**
  - Audited characters: Lumine, Nahida, Raiden Shogun
  - Created/updated character pages: `Lumine.md`, `Nahida.md`, `Raiden Shogun.md`
  - Updated OOC index: (no change, verified that they are present)
  - Updated headcanon/fanon policy: updated with Lumine, Nahida, and Raiden Shogun rules
  - Updated contradiction register: registered CON-0013 (Nahida's Rukkhadevata memory) and CON-0014 (Ei vs Shogun puppet)
  - Updated inventory/backlog: marked Lumine, Nahida, Raiden Shogun audited
- **files_changed:**
  - [wiki/entities/characters/Lumine.md](./entities/characters/Lumine.md)
  - [wiki/entities/characters/Nahida.md](./entities/characters/Nahida.md)
  - [wiki/entities/characters/Raiden Shogun.md](./entities/characters/Raiden Shogun.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Lumine, Nahida, Raiden Shogun.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố lịch sử vẫn ở dạng `indirect_source_only`.
- **next_loop:**
  - Loop 3.2E: Arlecchino, Tartaglia, Venti

## 2026-06-20 — Wiki Phase 3.2 Loop 3.2E

- **action:**
  - Audited characters: Arlecchino, Tartaglia, Venti
  - Created/updated character pages: `Arlecchino.md`, `Tartaglia.md`, `Venti.md`
  - Updated OOC index: Added OOC risks and contradictions for Arlecchino, Tartaglia, Venti, Nahida, Raiden Shogun, Wanderer, Traveler
  - Updated headcanon/fanon policy: Updated with Arlecchino, Tartaglia, and Venti guidelines
  - Updated contradiction register: Registered CON-0015 for Traveler vs Abyss Sibling role confusion
  - Updated inventory/backlog: Marked Arlecchino, Tartaglia, and Venti as audited
- **files_changed:**
  - [wiki/entities/characters/Venti.md](./entities/characters/Venti.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Hồ sơ phân tích tâm lý trong `entities/character_intelligence/` của Arlecchino, Tartaglia, Venti.
  - Tệp hội thoại sơ cấp trong `sources/voice_lines/characters/` tương ứng.
- **unresolved_issues:**
  - Thiếu nguồn sơ cấp câu chuyện nhân vật (`sources/character_stories/`) dẫn đến các tuyên bố quá khứ vẫn ở dạng `indirect_source_only`.
- **next_loop:**
  - None. All Phase 3.2 required characters completed or blocked.

## 2026-06-20 — Wiki Phase 3.2 Final Summary

- **characters_completed:**
  - Albedo, Klee, Neuvillette, Furina, Columbina, Kẻ Lang Thang / Wanderer, Aether, Lumine, Nahida, Raiden Shogun, Arlecchino, Tartaglia, Venti (13 characters audited)
- **characters_blocked:**
  - Dottore, Sandrone (Blocked by missing raw sources; created with status `blocked_by_missing_source`)
- **new_contradictions:**
  - CON-0012 (Wanderer Irminsul memory), CON-0013 (Nahida's Rukkhadevata memory), CON-0014 (Ei vs Shogun puppet), CON-0015 (Traveler vs Abyss Sibling role confusion)
- **high-risk unverified lore:**
  - Columbina = Kuutar (Theory / Unverified)
  - Dottore false moon god (Unverified)
  - Sandrone machine/Rotwang links (Unverified)
- **source gaps:**
  - Thiếu hoàn toàn thư mục `sources/character_stories/` trong toàn bộ workspace.
  - Thiếu các tệp nguồn sơ cấp cho Dottore và Sandrone.
  - Thiếu tệp thoại sơ cấp cho Columbina.
- **next_recommended_steps:**
  - Phase 3.3 Region/Faction Batches.
  - Continue source indexing.
  - Do not choose premise yet.
  - Do not write outline yet.
  - Do not write chapters yet.

## 2026-06-20 — Wiki Phase 3.2.1

- **action:**
  - Tightened Dottore blocked-source page (corrected Summary, UNVERIFIED identity table, removed external claims).
  - Cleaned up Dottore usage notes and safe/unsafe uses to align with his blocked source-gap status, framing all portrayals as hypothetical/AU.
  - Downgraded or softened overconfident Columbina identity/moon claims (marked all Columbina-specific traits as indirect_source_only and Kuutar as THEORY/UNVERIFIED).
  - Normalized backlog and inventory status for blocked/source-light characters (Dottore, Columbina, Sandrone).
  - Confirmed Dottore Moon God and Columbina = Kuutar remain non-canon.
  - Fixed headcanon/fanon policy links to code paths instead of live links, and updated warnings.
- **files_changed:**
  - [wiki/entities/characters/Dottore.md](./entities/characters/Dottore.md)
  - [wiki/entities/characters/Columbina.md](./entities/characters/Columbina.md)
  - [wiki/synthesis/character-audit-backlog.md](./synthesis/character-audit-backlog.md)
  - [wiki/entities/characters/character-inventory.md](./entities/characters/character-inventory.md)
  - [wiki/synthesis/ooc-risk-index.md](./synthesis/ooc-risk-index.md)
  - [wiki/synthesis/headcanon-fanon-policy.md](./synthesis/headcanon-fanon-policy.md)
  - [wiki/synthesis/unverified-lore-register.md](./synthesis/unverified-lore-register.md)
  - [wiki/synthesis/contradiction-register.md](./synthesis/contradiction-register.md)
  - [wiki/log.md](./log.md)
- **source_basis:**
  - Current workspace file availability.
  - Unverified lore register.
  - Phase 3.2 character pages.
  - OOC risk index.
- **unresolved_issues:**
  - Missing Dottore source files.
  - Missing Columbina primary voice/source files.
  - Missing Sandrone primary source files.
- **next_recommended_steps:**
  - Continue Phase 3.3 only after this strictness fix.
  - Ingest missing sources before upgrading blocked characters.
  - Do not choose premise.
  - Do not write outline.
  - Do not write chapters.

## 2026-06-20 — Claude Code Pass 1 Workspace Audit

- **action:**
  - Mapped repository structure (1,820 files across 10 top-level folders).
  - Audited source layer (612 source-rich files; 3 missing critical folders).
  - Audited quest skeletons (56 files, 100% empty/outline-only, zero usable).
  - Audited entity shells (649 files, 74% template-only).
  - Audited topic summaries (9 files, theory risk flagged).
  - Audited historical planning/foundation layer (27 files, historical only).
  - Created 12 research reports under wiki/research/.
- **files_changed:**
  - wiki/research/README.md
  - wiki/research/workspace-map.md
  - wiki/research/repo-health-check.md
  - wiki/research/source-layer-audit.md
  - wiki/research/quest-layer-audit.md
  - wiki/research/entity-shell-audit.md
  - wiki/research/topic-layer-audit.md
  - wiki/research/wiki-state-audit.md
  - wiki/research/historical-layer-audit.md
  - wiki/research/empty-file-report.md
  - wiki/research/source-gap-report.md
  - wiki/research/pass-1-next-actions.md
  - wiki/log.md (this entry)
- **source_basis:**
  - Full workspace structure scan.
  - File sampling across all layers.
  - Existing wiki governance files.
  - Root reliability reports (CHANGE_LOG, PATCH_VALIDATION_REPORT, RELIABILITY_SUMMARY, REMAINING_OPEN_ISSUES).
- **unresolved_issues:**
  - SG-0001: Dottore missing sources (Critical).
  - SG-0002: Sandrone missing sources (Critical).
  - SG-0005: Quest layer entirely empty (Critical).
  - SG-0007: character_stories/ folder missing (Critical).
  - SG-0008: Nod-Krai Acts II–VII no source (Critical).
  - SG-0011: 56 quest skeletons not usable as source (Critical).
  - 14 total source gaps documented in source-gap-report.md.
- **next_recommended_steps:**
  - Pass 2: Source Ingestion Framework + Priority Queue.
  - Do not backfill lore yet.
  - Do not fill quest skeletons from memory.
  - Do not upgrade source-light claims.
  - Human review needed: source archive trust, external ingestion policy, region priority.

## 2026-06-20 — Claude Code Pass 1.1 Source Gap Wording Fix

- **action:**
  - Corrected misleading source-gap wording for Dottore and Columbina.
  - Confirmed Dottore remains `blocked_by_missing_source`.
  - Confirmed Columbina remains `audited_source_light` / `indirect_source_only`.
  - Preserved Kuutar/Moon/Seelie claims as THEORY / UNVERIFIED.
- **files_changed:**
  - wiki/research/source-gap-report.md
  - wiki/log.md
- **source_basis:**
  - wiki/entities/characters/Dottore.md
  - wiki/entities/characters/Columbina.md
  - wiki/entities/characters/character-inventory.md
  - wiki/synthesis/character-audit-backlog.md
- **unresolved_issues:**
  - Dottore source package still missing.
  - Columbina primary voice/source still missing.
  - Character stories folder still missing.
- **next_recommended_steps:**
  - Pass 2: Source Ingestion Framework + Source Index Alignment.
  - Do not backfill lore yet.

## 2026-06-20 — Claude Code Pass 2 Source Ingestion Framework

- **action:**
  - Created source ingestion template and source ID rules.
  - Created external source policy and classified user-provided external sources with exact URLs.
  - Created source index alignment report comparing `wiki/sources/source-index.md` with real `sources/` folders.
  - Created source ingestion queue and priority source map.
  - Created API ingestion feasibility report.
  - Created leak quarantine policy.
- **files_changed:**
  - wiki/sources/SOURCE_TEMPLATE.md
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/EXTERNAL_SOURCE_POLICY.md
  - wiki/research/source-index-alignment.md
  - wiki/research/external-source-candidates.md
  - wiki/research/source-ingestion-queue.md
  - wiki/research/priority-source-map.md
  - wiki/research/api-ingestion-feasibility.md
  - wiki/research/leak-quarantine.md
  - wiki/research/pass-2-next-actions.md
  - wiki/research/README.md
  - wiki/log.md
- **source_basis:**
  - Pass 1 workspace audit reports.
  - Existing `sources/` folder structure.
  - Existing `wiki/sources/source-index.md`.
  - User-provided external source candidate list with exact URLs.
- **unresolved_issues:**
  - No lore backfill performed.
  - Dottore, Sandrone, Columbina, Skirk, Nod-Krai still require source packages.
  - character_stories/ and official/ folders still missing unless created later.
- **next_recommended_steps:**
  - Pass 3: Source Tool Tests + P0 Source Package Ingestion.
  - Do not backfill lore until source files are locally ingested and claim-mapped.

## 2026-06-20 — Claude Code Pass 2.1 Source Framework Consistency Fix

- **action:**
  - Retired legacy `QD/QD-ALL` wording and aligned quest source prefixes with `AQ/WQ/SQ/IQ` and `VLAQ/VLWQ`.
  - Clarified that `sources/quest_dialogue/` does not exist and must not be used as proof.
  - Corrected Dottore and Sandrone source package wording to avoid assuming character stories or direct voice-line files exist.
  - Reclassified source-index alignment as `P0-Internal Cleanup` rather than a lore blocker.
  - Verified or created required Pass 2 framework files.
  - Verified exact URL preservation for external source candidates.
- **files_changed:**
  - wiki/sources/SOURCE_ID_RULES.md
  - wiki/sources/source-index.md
  - wiki/research/source-index-alignment.md
  - wiki/research/source-ingestion-queue.md
  - wiki/research/priority-source-map.md
  - wiki/research/pass-2-next-actions.md
  - wiki/log.md
- **source_basis:**
  - Pass 2 source framework files.
  - Pass 1 structural audit findings.
  - Current workspace source folder availability.
- **unresolved_issues:**
  - No lore backfill performed.
  - Dottore remains `blocked_by_missing_source`.
  - Sandrone remains `blocked_by_missing_source`.
  - Columbina remains `audited_source_light` / `indirect_source_only`.
  - character_stories/ still missing unless later ingested.
  - official/ still missing unless later ingested.
- **next_recommended_steps:**
  - Pass 3: Source Tool Tests + P0 Source Package Ingestion.
  - Start with small smoke tests and one sample source file.
  - Do not mass ingest.
  - Do not backfill lore until local source files are claim-mapped.

## 2026-06-20 — Claude Code Pass 3 Source Tool Tests

- **action:**
  - Performed P0-Internal Cleanup for source-index hygiene.
  - Added folder-level aggregate entries for MG-ALL (manga_transcripts/, 21 files), VLAQ-ALL (voice_lines/archon_quests/, 124+ files), and VLWQ-ALL (voice_lines/world_quests/, 4 files).
  - Retired legacy QD-ALL placeholder as legacy_retired / not_source.
  - Downgraded VL-0002 Skirk TODO to explicitly non-valid source_missing.
  - Confirmed no phantom source IDs for Dottore, Sandrone, Columbina, or Skirk in active use.
  - Ran small API/tool smoke tests for Fandom API (success), genshin-db (available), Ambr.top (403 blocked), Honey Impact (403 blocked), and official manga (accessible).
  - Created one sample source mapping using SOURCE_TEMPLATE for WS-0001 (Kiếm Giáng Lâm).
- **files_changed:**
  - wiki/sources/source-index.md
  - wiki/research/source-index-alignment.md
  - wiki/research/pass-3-source-index-cleanup-report.md
  - wiki/research/pass-3-api-smoke-test-report.md
  - wiki/research/pass-3-sample-source-mapping.md
  - wiki/research/pass-3-next-actions.md
  - wiki/log.md
- **source_basis:**
  - Pass 2 source framework.
  - Pass 2.1 consistency fixes.
  - Existing local source folders.
  - User-approved external source candidate registry.
- **unresolved_issues:**
  - No lore backfill performed.
  - No mass ingestion performed.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - character_stories/ still not ingested.
  - official/ still not ingested.
  - Nod-Krai Acts II–VII still source_missing unless future official/source transcript is found.
- **next_recommended_steps:**
  - Pass 4 should start with controlled local VLAQ coverage mapping or one controlled character story ingestion test.
  - Do not backfill lore until source files are claim-mapped and reviewed.

## 2026-06-20 — Claude Code Pass 4 Local VLAQ Coverage Mapping

- **action:**
  - Inventoried local `sources/voice_lines/archon_quests/` files (124 files, 34 arc subfolders).
  - Mapped VLAQ coverage for Fontaine final AQ, Wanderer/Irminsul, Sumeru/Rukkhadevata/Nahida, Inazuma/Raiden, Traveler/Abyss sibling, and Skirk/Gnosis/Third Descender.
  - Physically inspected 8 key files with content verification.
  - Created claim-source matrix for CLM-014 through CLM-018 and CLM-009 through CLM-011.
  - Added 8 file-level VLAQ source IDs to source-index.md (VLAQ-INAZUMA-001/002, VLAQ-SUMERU-001, VLAQ-FONTAINE-001/002, VLAQ-TRAVELER-001/002, VLAQ-WANDERER-001).
  - Recorded remaining source gaps (14 total; Skirk, Dottore, Sandrone, character_stories/ remain blocked).
  - Did not backfill lore or update character pages.
- **files_changed:**
  - wiki/research/pass-4-vlaq-inventory.md
  - wiki/research/pass-4-vlaq-coverage-map.md
  - wiki/research/pass-4-claim-source-matrix.md
  - wiki/research/pass-4-source-gaps.md
  - wiki/research/pass-4-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/sources/source-index.md
  - wiki/log.md
- **source_basis:**
  - Existing local `sources/voice_lines/archon_quests/` files.
  - Pass 3 source-index cleanup.
  - Pass 2 priority source map.
- **unresolved_issues:**
  - No lore backfill performed.
  - No external ingestion performed.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - character_stories/ still not ingested.
  - official/ still not ingested.
  - Skirk direct source remains source_missing (zero VLAQ files).
  - CLM-010 (Gnosis as shackles) remains THEORY — only weak indirect support found.
  - CLM-011 (Third Descender) remains partial_coverage.
- **next_recommended_steps:**
  - Human review of VLAQ coverage map and claim-source matrix.
  - Approve source_status upgrades for CLM-014, CLM-016, CLM-017, CLM-018.
  - Then choose Pass 5: page update preparation, one controlled character story ingestion, or official manga alignment.

## 2026-06-20 — Claude Code Pass 4.1 VLAQ Strictness Fix

- **action:**
  - Corrected overconfident coverage labels in Pass 4 VLAQ mapping reports.
  - Ensured uninspected files are not marked as `coverage_found`.
  - Distinguished direct inspected evidence from keyword-only and folder/arc-level candidates.
  - Downgraded or qualified partial claims requiring deep read, including Focalors sacrifice, Wanderer/Irminsul rewrite, Traveler memory exception, and Third Descender identity.
  - Preserved direct inspected coverage for claims with physically verified evidence (CLM-017 fully confirmed; CLM-014/016 partially confirmed).
  - Changed recommended Pass 5 from page update to deep reads first.
- **files_changed:**
  - wiki/research/pass-4-vlaq-inventory.md
  - wiki/research/pass-4-vlaq-coverage-map.md
  - wiki/research/pass-4-claim-source-matrix.md
  - wiki/research/pass-4-source-gaps.md
  - wiki/research/pass-4-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/research/pass-4-1-strictness-report.md
  - wiki/sources/source-index.md
  - wiki/log.md
- **source_basis:**
  - Pass 4 VLAQ mapping reports.
  - Local VLAQ inspection status.
  - Source ID rules from Pass 2.1.
- **unresolved_issues:**
  - No lore backfill performed.
  - Some major claims still require deep read before metadata/page updates.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - Skirk remains source_missing.
  - Gnosis shackles remains THEORY / indirect.
  - Third Descender identity remains unconfirmed.
- **next_recommended_steps:**
  - Pass 5 should be Deep Read for Partial VLAQ Claims before page update.
  - Do not upgrade pages until human review approves corrected matrix.

## 2026-06-20 — Claude Code Pass 4.1.1 Documentation Cleanup

- **action:**
  - Cleaned up stale Pass 4 wording after Pass 4.1 strictness fix.
  - Ensured `pass-4-next-actions.md` recommends Deep VLAQ Inspection before page updates.
  - Marked Pass 4 recommendations in `priority-source-map.md` as superseded by Pass 4.1.
- **files_changed:**
  - wiki/research/pass-4-next-actions.md
  - wiki/research/priority-source-map.md
  - wiki/log.md
- **unresolved_issues:**
  - No lore backfill performed.
  - CLM-014, CLM-015, CLM-016, CLM-018, CLM-011 still require deep read or file-level confirmation.
  - CLM-017 remains ready for human review.
  - CLM-009 remains source_missing.
  - CLM-010 remains keep_theory.
- **next_recommended_steps:**
  - Pass 5: Deep Read for Partial VLAQ Claims.

## 2026-06-20 — Claude Code Pass 5 Deep Read for Partial VLAQ Claims

- **action:**
  - Deep-read selected local VLAQ files for partial claims from Pass 4.1.
  - Evaluated CLM-014, CLM-015, CLM-016, CLM-018, and CLM-011 using local source content.
  - Read 16 files fully across 4 quest arc groups (Fontaine, Sumeru, Wanderer/Descender, Traveler/Abyss).
  - Confirmed CLM-014 (all sub-claims direct), CLM-015 (core rewrite direct), CLM-016 (all sub-claims direct), CLM-018 (all major sub-claims direct across 12 files).
  - Preserved CLM-017 as ready for human review (unchanged from Pass 4).
  - Preserved CLM-009 as source_missing (only brief Skirk introduction found).
  - Preserved CLM-010 as keep_theory (no "shackles" framing in any file).
  - CLM-011 upgraded to strong_indirect (Descender concept confirmed; Third Descender ordinal identity NOT found).
  - Created Pass 5 evidence and claim-source reports.
  - Updated source-index.md: upgraded 3 existing IDs to deep_read_confirmed; added 2 new IDs (VLAQ-SUMERU-002, VLAQ-FONTAINE-003).
  - Did not update character/entity/topic pages.
- **files_changed:**
  - wiki/research/pass-5-deep-read-report.md (new)
  - wiki/research/pass-5-claim-source-matrix.md (new)
  - wiki/research/pass-5-evidence-index.md (new)
  - wiki/research/pass-5-source-gaps.md (new)
  - wiki/research/pass-5-next-actions.md (new)
  - wiki/research/priority-source-map.md (updated — Pass 5 section added)
  - wiki/research/pass-4-vlaq-coverage-map.md (updated — supersession note added)
  - wiki/research/pass-4-claim-source-matrix.md (updated — supersession note added)
  - wiki/sources/source-index.md (updated — 3 IDs upgraded, 2 new IDs added)
  - wiki/log.md (this entry)
- **source_basis:**
  - Existing local files in `sources/voice_lines/archon_quests/`.
  - Pass 4.1 strictness rules.
  - Source ID rules.
- **unresolved_issues:**
  - No lore backfill performed.
  - No external ingestion performed.
  - No page update performed.
  - Any claim without direct evidence remains partial/source_missing/theory.
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains audited_source_light / indirect_source_only.
  - Skirk remains source_missing (brief intro only, no identity lore).
  - CLM-010 (Gnosis as shackles) remains keep_theory.
  - CLM-011 (Third Descender identity) remains needs_external_source_or_later_quest.
  - CLM-015 sub-claim ("Wanderer" name adoption) not found in this batch.
- **next_recommended_steps:**
  - Human review Pass 5 matrix.
  - Then choose Pass 6: source_status update preparation, further local search, or controlled source ingestion.

## 2026-06-20 — Claude Code Pass 6 Human Review + Source Status Update Preparation

- **action:**
  - Reviewed Pass 5 direct evidence for CLM-014, CLM-015, CLM-016, CLM-017, and CLM-018.
  - Prepared and applied minimal source_status/source_id updates where claims already existed on relevant wiki pages.
  - Preserved limitations for CLM-015 Wanderer name adoption.
  - Preserved CLM-009 as source_missing, CLM-010 as keep_theory, and CLM-011 as unresolved.
  - Did not perform lore backfill or external ingestion.
- **files_changed:**
  - wiki/research/pass-6-human-review-report.md (new)
  - wiki/research/pass-6-page-update-plan.md (new)
  - wiki/research/pass-6-source-status-changelog.md (new)
  - wiki/research/pass-6-next-actions.md (new)
  - wiki/research/priority-source-map.md (updated — Pass 6 section added)
  - wiki/research/pass-5-next-actions.md (updated — supersession note added)
  - wiki/entities/characters/Furina.md (source_status upgrade on TRAIT-005)
  - wiki/entities/characters/Kẻ Lang Thang.md (source_status upgrade on TRAIT-001, TRAIT-002)
  - wiki/entities/characters/Nahida.md (source_status upgrade on TRAIT-002, TRAIT-005)
  - wiki/entities/characters/Raiden Shogun.md (source_status upgrade on TRAIT-001)
  - wiki/entities/characters/Aether.md (source_status upgrade on TRAIT-003)
  - wiki/entities/characters/Lumine.md (source_status upgrade on TRAIT-003)
  - wiki/synthesis/contradiction-register.md (added VLAQ source refs to CON-0012, CON-0013, CON-0014)
  - wiki/synthesis/power-system-governance.md (source_status upgrade on PWR-IRMINSUL-001)
  - wiki/log.md (this entry)
- **source_basis:**
  - Pass 5 deep-read reports.
  - Local VLAQ source IDs in source-index.
  - Existing wiki page claims.
- **unresolved_issues:**
  - Dottore remains blocked_by_missing_source.
  - Sandrone remains blocked_by_missing_source.
  - Columbina remains indirect_source_only / theory for Kuutar claims.
  - Skirk remains source_missing.
  - Gnosis shackles remains keep_theory.
  - Third Descender identity remains unresolved.
  - Character stories and Nod-Krai Acts II–VII still require controlled ingestion.
- **next_recommended_steps:**
  - Pass 7 — Controlled Source Ingestion Test.
