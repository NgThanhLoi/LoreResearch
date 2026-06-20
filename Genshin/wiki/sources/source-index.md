# Source Index

Bản chỉ mục này lập bản đồ các mã định danh nguồn (Source ID) cho các tài liệu hiện có trong workspace ở cấp độ thư mục và các tệp tin cốt lõi. Trong đợt rà soát Pass 2, chỉ mục đã được mở rộng thành một phần chi tiết ở cấp độ tệp tin cho các nhóm nguồn thô mạnh nhất.

> [!IMPORTANT]
> Các mã định danh nguồn (Source ID) chỉ thực sự có hiệu lực (valid) khi tệp tin nguồn tương ứng đã được kiểm tra vật lý và tồn tại trong workspace. Tuyệt đối không sử dụng mã định danh giả định cho các tệp tin chưa được xác minh vật lý.

## 1. Folder-Level Source Index

| Source ID | Path | Source Type | Reliability | Main Topics | Used by Pages | Notes |
| :--- | :--- | :--- | :---: | :--- | :--- | :--- |
| **WS-ALL** | `sources/weapon_stories/` | Weapon Stories | High | Lịch sử cổ đại, vũ khí, Khaenri'ah | `../synthesis/power-system-governance.md` | Gồm 227 file chính xác |
| **AR-ALL** | `sources/artifact_descriptions/` | Artifact Descriptions | High | Các nền văn minh cổ, Ma Thần, Celestia | `../synthesis/power-system-governance.md` | Gồm 61 file |
| **BK-ALL** | `sources/book_texts/` | In-game Books | High | Thần thoại phương Bắc, 3 mặt trăng, lịch sử | `../synthesis/unverified-lore-register.md` | Thơ ca cổ, truyện dân gian |
| **VL-ALL** | `sources/voice_lines/` | Voice Lines | High | Câu chuyện, tính cách, quan hệ nhân vật | `../synthesis/headcanon-fanon-policy.md` | Lời thoại trực tiếp nhân vật |
| **EN-ALL** | `entities/` | Entity Summaries | Medium | Thuộc tính nhân vật, thế lực, vũ khí, vật phẩm | (Nhiều trang entities/) | Nhiều file còn là template trống |
| **TP-ALL** | `topics/` | Topic Analysis | Low/Medium | Các bài phân tích chủ đề, quan hệ cộng đồng | `../synthesis/contradiction-register.md` | Chứa nhiều lập luận chủ quan |
| **QD-ALL** | `sources/quest_dialogue/` | Quest Dialogue | Unusable | Thư mục không tồn tại trong workspace | N/A | **Thư mục không tìm thấy trong workspace.** Deprecated / legacy placeholder. Not usable for claim-level canon. Use VLAQ/VLWQ for existing quest voice-line files, and AQ/WQ/SQ/IQ for future full quest transcripts. |
| **OF-ALL** | `sources/official/` | Official Sources | Unusable | Thư mục không tồn tại trong workspace | N/A | **Thư mục không tìm thấy trong workspace** |

## 2. Partial File-Level Source Index

Dưới đây là danh sách lập chỉ mục chi tiết cho các tệp tin nguồn sơ cấp quan trọng nhất được rà soát trong Pass 2:

| Source ID | Path | Source type | Reliability | Main topics | Indexed level | Used by pages | Notes |
| :--- | :--- | :--- | :---: | :--- | :--- | :--- | :--- |
| **WS-0001** | `sources/weapon_stories/Kiếm Giáng Lâm.md` | Weapon Story | High | Kẻ Giáng Lâm, Descender logic, Sword of Descension | file-level | `../synthesis/power-system-governance.md` | Nguồn sơ cấp quan trọng về Descender. |
| **WS-0002** | `sources/weapon_stories/Hình Thái Xích Nguyệt.md` | Weapon Story | High | Crimson Moon dynasty, Arlecchino | file-level | `../synthesis/unverified-lore-register.md` | Hữu ích cho thiết lập timeline cổ đại. |
| **WS-0003** | `sources/weapon_stories/Phong Ưng Kiếm.md` | Weapon Story | High | Lịch sử Mondstadt, Arundolyn, Quý tộc cũ | file-level | `../synthesis/timeline-continuity.md` | Hữu ích cho lịch sử tiền truyện Mondstadt. |
| **WS-0004** | `sources/weapon_stories/Đường Cùng Của Sói.md` | Weapon Story | High | Đội Kỵ Sĩ Tây Phong, sói Boreas | file-level | `../synthesis/timeline-continuity.md` | Nguồn sơ cấp cho cốt truyện sói Bắc Phong. |
| **WS-0005** | `sources/weapon_stories/Lưỡi Kiếm Narzissenkreuz.md` | Weapon Story | High | Hội Narzissenkreuz, Fontaine cổ | file-level | (Nhiều trang entities/) | Hữu ích cho cốt truyện Fontaine. |
| **AR-0001** | `sources/artifact_descriptions/Đêm Trời Hé Lộ.md` | Artifact Description | High | Khaenri'ah, Rotwang, Sky Shell, bầu trời giả | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp cho cỗ máy của Rotwang. |
| **AR-0002** | `sources/artifact_descriptions/Ảo Tưởng Vụn Vỡ Trong Bóng Tối.md` | Artifact Description | High | Unreleased v6.6 artifact lore, Fragment of Shattered Dreams | file-level | `../synthesis/unverified-lore-register.md` | Đã dán nhãn unreleased/unconfirmed set. |
| **AR-0003** | `sources/artifact_descriptions/Kỵ Sĩ Đạo Nhuốm Máu.md` | Artifact Description | High | Cataclysm, Khaenri'ah, Abyss Order | file-level | `../synthesis/timeline-continuity.md` | Hữu ích cho bối cảnh thảm họa 500 năm. |
| **AR-0004** | `sources/artifact_descriptions/Thợ Săn Marechaussee.md` | Artifact Description | High | Lực lượng Marechaussee, Fontaine cổ | file-level | (Nhiều trang entities/) | Hữu ích cho worldbuilding Fontaine. |
| **BK-0001** | `sources/book_texts/Giấc Mơ Tan Vỡ.md` | Book | High | Ba nữ thần mặt trăng Aria, Sonnet, Canon | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp xác nhận tên 3 Moon. |
| **BK-0002** | `sources/book_texts/Kho Tàng Vương Quốc Đêm Trắng.md` | Book | High | Phanes, Primordial One, cuộc chiến 40 năm | file-level | `../synthesis/timeline-continuity.md` | Nguồn sơ cấp chứng minh cuộc chiến 40 năm. |
| **BK-0003** | `sources/book_texts/nod-krai/Hymns of the Far North.md` | Book | High | Thần thoại Nod-Krai, Takoja Ianikuinen, Kuutar | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp về truyền thuyết cực bắc. |
| **BK-0004** | `sources/book_texts/Đạo Tặc Reed Miller Huyền Thoại.md` | Book | High | Sampo Mill, di vật trăng lạnh | file-level | `../synthesis/unverified-lore-register.md` | Nguồn sơ cấp chứng minh Sampo Mill là myth. |
| **VL-0001** | `sources/voice_lines/characters/Kaeya.md` | Voice Lines | High | Giọng nói, xưng hô, câu chuyện của Kaeya | file-level | `../synthesis/headcanon-fanon-policy.md` | Dùng tốt cho character voice và OOC. |
| **EN-0001** | `entities/Timeline.md` | Entity | Medium | Dòng thời gian lịch sử vĩ mô Teyvat | file-level | `../synthesis/timeline-continuity.md` | Tài liệu chỉ dẫn timeline, trung lập. |
| **EN-0002** | `entities/dragon_sovereigns/Overview.md` | Entity | Medium | Bảy Long Vương, Phanes, Apep, Nibelung | file-level | `../synthesis/power-system-governance.md` | Tổng hợp có trích dẫn nguồn sơ cấp. |
| **TP-0001** | `topics/nod-krai/mythology.md` | Topic | Low/Medium | Thần thoại Nod-Krai, 3 mặt trăng, Kuuvahki | file-level | `../synthesis/unverified-lore-register.md` | Chứa nhiều phân tích chủ quan. |
| **TP-0002** | `topics/nod-krai/Nod_Krai.md` (hoặc tương đương) | Topic | Low/Medium | Tóm tắt Acts II-VII, version 6.1-6.7 | file-level | `../synthesis/unverified-lore-register.md` | Chứa cốt truyện lý thuyết chưa có thoại thô. |

## 3. Indexing TODOs
- **[ ] Indexing Weapon Stories (WS-xxxx):** Tiếp tục lập chỉ mục chi tiết cho 222 file vũ khí còn lại.
- **[ ] Indexing Artifact Descriptions (AR-xxxx):** Tiếp tục lập chỉ mục chi tiết cho 57 file di vật còn lại.
- **[ ] Indexing Voice Lines (VL-xxxx):** Lập chỉ mục chi tiết cho các file thoại nhân vật của Diluc, Zhongli, Neuvillette, Furina.
- **[ ] Ingestion & Indexing of Missing Voice Lines (VL-xxxx):** Bổ sung và lập chỉ mục file thoại của Skirk (VL-0002 - hiện đang thiếu/source_missing) để chứng minh các tuyên bố liên quan đến Gnosis và Descender.
