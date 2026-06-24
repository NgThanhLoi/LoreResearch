# Pass 24 — Artifact / Book / Event Inventory

## Purpose

Inventories local artifact descriptions, book texts, weapon stories, manga transcripts, and event-related sources. Classifies provenance-readiness for future claim mapping. Does NOT create source IDs or upgrade any claims.

---

## Methodology

- Inspected `sources/artifact_descriptions/` (61 files)
- Inspected `sources/book_texts/` (73 files, including 9 in nod-krai/ subfolder)
- Inspected `sources/weapon_stories/` (176+ files)
- Inspected `sources/manga_transcripts/` (16 chapters + duplicates)
- Checked for `sources/event/` — folder_missing
- Checked for `sources/events/` — folder_missing
- Checked for `sources/official/` — folder_missing
- No external sources accessed

---

## A. Artifact Descriptions (61 files)

### High-Risk Relevant Candidates

| candidate_id | topic_or_claim_group | local_file_path | source_type | candidate_support_level | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| ART-BLOODSTAINED-01 | Khaenri'ah / ancient knights | sources/artifact_descriptions/Kỵ Sĩ Đạo Nhuốm Máu.md | artifact_candidate | context_only | requires_claim_mapping_later | HIGH | Bloodstained Chivalry — potential Khaenri'ah knight references |
| ART-PALEFLAME-01 | Fatui / Harbinger lore | sources/artifact_descriptions/Lửa Trắng Xám.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Pale Flame — Fatui-related narrative fragments |
| ART-GOLDENTROUPE-01 | Arlecchino / Fatui lore | sources/artifact_descriptions/Đoàn Kịch Hoàng Kim.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Golden Troupe — House of Hearth/Arlecchino narrative |
| ART-VOURUKASHA-01 | Sumeru / ancient civilization | sources/artifact_descriptions/Vầng Sáng Vourukasha.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Vourukasha — ancient Sumeru lore |
| ART-DEEPWOOD-01 | Sumeru / forest lore | sources/artifact_descriptions/Ký Ức Rừng Sâu.md | artifact_candidate | context_only | requires_claim_mapping_later | LOW | Deepwood Memories |
| ART-MARECHAUSSEE-01 | Fontaine / justice system | sources/artifact_descriptions/Thợ Săn Marechaussee.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Marechaussee Hunter — Fontaine justice lore |
| ART-VERMILLION-01 | Xiao / karmic debt | sources/artifact_descriptions/Thần Sa Vãng Sinh Lục.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Vermillion Hereafter — yaksha narrative |
| ART-OBSIDIAN-01 | Natlan / ancient lore | sources/artifact_descriptions/Bí Điển Obsidian.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Obsidian Codex — Natlan mechanics |
| ART-NIGHTTIME-01 | Khaenri'ah / abyss | sources/artifact_descriptions/Đêm Trời Hé Lộ.md | artifact_candidate | context_only | requires_claim_mapping_later | HIGH | Night-time Whispers — potential abyss/Khaenri'ah narrative |
| ART-EXILE-01 | Exile / Khaenri'ah | sources/artifact_descriptions/Kẻ Lưu Đày.md | artifact_candidate | context_only | requires_claim_mapping_later | HIGH | The Exile — Khaenri'ah diaspora lore |
| ART-CORRIDOR-01 | Fontaine / underwater | sources/artifact_descriptions/Đoạn Kết Hành Lang Sâu.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Finale of the Deep — Fontaine underwater narrative |
| ART-MOONANDSUN-01 | Moon / cosmology | sources/artifact_descriptions/Khúc Ca Của Trăng Và Sao Mai.md | artifact_candidate | context_only | requires_claim_mapping_later | HIGH | Song of Moon and Morning Star — Moon topic (guarded) |
| ART-SILKMOON-01 | Moon / ancient lore | sources/artifact_descriptions/Khúc Ca Trăng Lụa.md | artifact_candidate | context_only | requires_claim_mapping_later | HIGH | Silk Moon song — Moon topic (guarded) |
| ART-OLDDAYS-01 | Ancient history | sources/artifact_descriptions/Khúc Ca Ngày Cũ.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Echoes of an Offering — ancient history fragments |
| ART-LOSTGARDEN-01 | Sal Vindagnyr / ancient | sources/artifact_descriptions/Đóa Hoa Trang Viên Thất Lạc.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Flower of Paradise Lost |
| ART-GOLDENDREAM-01 | Irminsul / dreams | sources/artifact_descriptions/Giấc Mộng Hoàng Kim.md | artifact_candidate | context_only | requires_claim_mapping_later | HIGH | Gilded Dreams — Irminsul-related (guarded topic) |
| ART-SHATTERED-01 | Abyss / darkness | sources/artifact_descriptions/Ảo Tưởng Vụn Vỡ Trong Bóng Tối.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Shattered darkness illusions |
| ART-SANDHISTORY-01 | Sumeru / desert civilization | sources/artifact_descriptions/Sử Ký Đình Đài Cát.md | artifact_candidate | context_only | requires_claim_mapping_later | MEDIUM | Desert Pavilion Chronicle |

### Standard Artifact Files (remaining 43 files — low lore-risk)

All remaining artifact files classified as:
- source_type: artifact_candidate
- candidate_support_level: context_only
- recommended_future_action: profile_candidate (low priority)
- risk_level: LOW
- Count: 43

---

## B. Book Texts (73 files)

### High-Risk Relevant Candidates

| candidate_id | topic_or_claim_group | local_file_path | source_type | candidate_support_level | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| BOOK-PERINHERI-01 | Khaenri'ah / Descender / cosmology | sources/book_texts/Perinheri.md | book_candidate | not_enough_for_canon | requires_claim_mapping_later | HIGH | Key cosmology text — Descender concept, Khaenri'ah history |
| BOOK-NORTHERNHISTORY-01 | Khaenri'ah / northern history | sources/book_texts/Bí Sử Phương Bắc.md | book_candidate | not_enough_for_canon | requires_claim_mapping_later | HIGH | Secret Northern History — Khaenri'ah topic |
| BOOK-REMURIA-01 | Remuria / ancient civilization | sources/book_texts/Cuộc Suy Vong Của Remuria.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Fall of Remuria — Fontaine ancient history |
| BOOK-VERASADNESS-01 | Vera / ancient narrative | sources/book_texts/Vera Sầu Muộn.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Vera's Melancholy — potential ancient world references |
| BOOK-TIMETRAVELER-01 | Time / dimensional | sources/book_texts/Nhà Du Hành Thời Gian.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Time Traveler — dimensional/time concepts |
| BOOK-BOARPRINCESS-01 | Mythological / Mondstadt | sources/book_texts/Công Chúa Heo Rừng.md | book_candidate | context_only | requires_claim_mapping_later | LOW | Boar Princess — potential coded narrative |
| BOOK-ERINNYES-01 | Fontaine / ancient | sources/book_texts/La Chanson d'Erinnyes.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Song of Erinnyes — Fontaine mythological history |
| BOOK-FOXDANDELION-01 | Mondstadt / mythological | sources/book_texts/Hồ Ly Biển Bồ Công Anh.md | book_candidate | context_only | requires_claim_mapping_later | LOW | Fox in the Dandelion Sea — mythological |
| BOOK-1000NIGHTS-01 | Sumeru / stories | sources/book_texts/Câu Chuyện Ngàn Đêm.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Thousand Nights — Sumeru narrative lore |
| BOOK-HAMAVARAN-01 | Sumeru / Jinn | sources/book_texts/Chiến Ký Hamavaran.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Hamavaran Chronicles — Jinn/Sumeru lore |
| BOOK-WHITEPRINCESS-01 | Sal Vindagnyr / Durin | sources/book_texts/Công Chúa Trắng và 6 Chú Lùn.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Snow White — potential Rhinedottir/Durin connection |
| BOOK-FISCHL-01 | Fischl / Immernachtreich | sources/book_texts/Cổ Tích Về Công Chúa Fischl.md | book_candidate | context_only | requires_claim_mapping_later | LOW | Flowers for Princess Fischl |
| BOOK-SPRINGJEWEL-01 | Liyue / adepti | sources/book_texts/Suối Ẩn Trong Ngọc.md | book_candidate | context_only | requires_claim_mapping_later | LOW | Springs in the Jade |
| BOOK-VENNESSA-01 | Mondstadt / Celestia | sources/book_texts/Truyền Thuyết Về Vennessa.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Legend of Vennessa — Celestia ascension reference |
| BOOK-HILICHURL-01 | Hilichurl / Khaenri'ah | sources/book_texts/Khảo Sát Tập Quán Hilichurl.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Hilichurl Cultural Survey — transformation lore |
| BOOK-BROKENDDREAM-01 | Dreams / Irminsul | sources/book_texts/Giấc Mơ Tan Vỡ.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Shattered Dream — potential Irminsul connection |

### Nod-Krai Subfolder (9 files — ALL HIGH RISK)

| candidate_id | topic_or_claim_group | local_file_path | source_type | candidate_support_level | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| BOOK-NK-PALESTARBORN-01 | Nod-Krai / Pale Starborn | sources/book_texts/nod-krai/A Brief History of the Pale Starborn.md | book_candidate | not_enough_for_canon | requires_claim_mapping_later | HIGH | Nod-Krai lore — guarded topic |
| BOOK-NK-SNOWYTIDES-01 | Nod-Krai / Frostmoon | sources/book_texts/nod-krai/A Dance of Snowy Tides and Hoarfrost Groves.md | book_candidate | not_enough_for_canon | requires_claim_mapping_later | HIGH | Moon/Frostmoon topic — guarded |
| BOOK-NK-SILVERGOLD-01 | Nod-Krai / economics/history | sources/book_texts/nod-krai/Beyond Silver and Fine Gold.md | book_candidate | context_only | requires_claim_mapping_later | HIGH | Nod-Krai lore |
| BOOK-NK-CONCH-01 | Nod-Krai / echoes | sources/book_texts/nod-krai/Conch Echoes.md | book_candidate | context_only | requires_claim_mapping_later | HIGH | Nod-Krai lore |
| BOOK-NK-HYMNS-01 | Nod-Krai / far north | sources/book_texts/nod-krai/Hymns of the Far North.md | book_candidate | context_only | requires_claim_mapping_later | HIGH | Nod-Krai lore |
| BOOK-NK-RESURRECTION-01 | Nod-Krai / resurrection | sources/book_texts/nod-krai/Incandescent Ode of Resurrection.md | book_candidate | not_enough_for_canon | requires_claim_mapping_later | HIGH | Nod-Krai cosmology — guarded |
| BOOK-NK-NIGHTMURMURS-01 | Nod-Krai / border | sources/book_texts/nod-krai/Night Murmurs From the Far Border.md | book_candidate | context_only | requires_claim_mapping_later | HIGH | Nod-Krai lore |
| BOOK-NK-NORTHWIND-01 | Nod-Krai / tales | sources/book_texts/nod-krai/Tales Carried by the Northwind.md | book_candidate | context_only | requires_claim_mapping_later | HIGH | Nod-Krai lore |
| BOOK-NK-REEDMILLER-01 | Nod-Krai / Reed Miller | sources/book_texts/nod-krai/The Legends of Reed Miller, Thief Extraordinaire.md | book_candidate | context_only | requires_claim_mapping_later | MEDIUM | Lighter narrative — still NK context |

### Standard Book Files (remaining ~48 files)

Remaining books classified as:
- source_type: book_candidate
- candidate_support_level: context_only
- risk_level: LOW to MEDIUM
- Count: 48

---

## C. Weapon Stories (176+ files)

### High-Risk Relevant Candidates

| candidate_id | topic_or_claim_group | local_file_path | source_type | candidate_support_level | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| WPN-AMOS-01 | Mondstadt / ancient archer | sources/weapon_stories/Cung Amos.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Amos' Bow — Decarabian-era lore |
| WPN-HARAN-01 | Inazuma / ancient swords | sources/weapon_stories/Haran Geppaku Futsu.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Historical Inazuma narrative |
| WPN-KAGURA-01 | Yae / kitsune | sources/weapon_stories/Chân Ý Của Kagura.md | weapon_story_candidate | context_only | requires_claim_mapping_later | LOW | Kagura's Verity |
| WPN-KHAJNISUT-01 | Sumeru / ancient king | sources/weapon_stories/Chìa Khóa Khaj-Nisut.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Key of Khaj-Nisut — ancient Sumeru |
| WPN-MOONWEAVER-01 | Moon / weaving | sources/weapon_stories/Bình Minh Của Người Dệt Trăng.md | weapon_story_candidate | context_only | requires_claim_mapping_later | HIGH | Dawn of Moonweaver — Moon topic (guarded) |
| WPN-JADECUTTER-01 | Liyue / Rex Lapis era | sources/weapon_stories/Nhược Thủy.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Primordial Jade Cutter |
| WPN-FREEDOMSWORN-01 | Mondstadt / freedom | sources/weapon_stories/Lời Thề Tự Do Cổ Xưa.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Freedom-Sworn — ancient Mondstadt |
| WPN-NARZISSENKREUZ-01 | Fontaine / Narzissenkreuz | sources/weapon_stories/Lưỡi Kiếm Narzissenkreuz.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Narzissenkreuz Sword — Fontaine secret order |
| WPN-WOLF-01 | Andrius / ancient Mondstadt | sources/weapon_stories/Chiến Hùng Ca Của Sói.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Song of Broken Pines — Andrius-era lore |
| WPN-KATSURAGI-01 | Inazuma / Scaramouche origin | sources/weapon_stories/Trường Đao Katsuragi.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Katsuragikiri — relates to Wanderer/Scaramouche |
| WPN-KAGOTSURUBE-01 | Inazuma / cursed blade | sources/weapon_stories/Kagotsurube Isshin.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Sentient weapon narrative |
| WPN-ETERNAL-01 | Eternity / Raiden | sources/weapon_stories/Vầng Trăng Bất Diệt.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Engulfing Lightning — Raiden/eternity |
| WPN-DRAGONBANE-01 | Dragons / Rex Lapis | sources/weapon_stories/Tai Ương Của Rồng.md | weapon_story_candidate | context_only | requires_claim_mapping_later | MEDIUM | Dragon's Bane — ancient war |

### Standard Weapon Story Files (remaining ~163 files)

Remaining weapon stories classified as:
- source_type: weapon_story_candidate
- candidate_support_level: context_only
- risk_level: LOW
- Count: ~163

---

## D. Manga Transcripts (16 chapters)

| candidate_id | topic_or_claim_group | local_file_path | source_type | candidate_support_level | recommended_future_action | risk_level | notes |
|---|---|---|---|---|---|---|---|
| MANGA-00 | Venti / Mondstadt history | sources/manga_transcripts/00_Bài Ca Về Gió.md | manga_candidate | context_only | requires_claim_mapping_later | MEDIUM | Prologue — Venti origin context |
| MANGA-01 | Diluc / Mondstadt | sources/manga_transcripts/01_Nếm Rượu.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | Wine tasting |
| MANGA-02 | Collei / Fatui / Barnabas | sources/manga_transcripts/02_Viêm Sinh.md | manga_candidate | context_only | requires_claim_mapping_later | MEDIUM | Collei's Fatui history, archon residue |
| MANGA-03 | Plot | sources/manga_transcripts/03_Mất Đồ.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | — |
| MANGA-04 | Plot | sources/manga_transcripts/04_Biến Động.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | Duplicate exists with {{tt}} naming |
| MANGA-05 | Danger/plot | sources/manga_transcripts/05_Hiểm Địa.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | — |
| MANGA-06 | Fire/plot | sources/manga_transcripts/06_Phong Hỏa.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | Duplicate exists with {{tt}} naming |
| MANGA-07 | Plot | sources/manga_transcripts/07_Chiếc Hộp.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | — |
| MANGA-08 | Clues | sources/manga_transcripts/08_Manh Mối.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | — |
| MANGA-09 | Windblume Festival | sources/manga_transcripts/09_Lễ Đánh Cầu.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | — |
| MANGA-10 | Play/theater | sources/manga_transcripts/10_Vở Kịch.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | — |
| MANGA-11 | Dottore / abyss | sources/manga_transcripts/11_Xà Âm.md | manga_candidate | not_enough_for_canon | requires_claim_mapping_later | HIGH | Dottore appears — Harbinger lore, serpent sound |
| MANGA-12 | Dark clouds | sources/manga_transcripts/12_Mây Đen.md | manga_candidate | context_only | requires_claim_mapping_later | MEDIUM | Building toward climax |
| MANGA-13 | Celestia / descent | sources/manga_transcripts/13_Giáng Lâm.md | manga_candidate | context_only | requires_claim_mapping_later | HIGH | "Descent" — potential Celestia/Descender adjacent |
| MANGA-14 | Strange illness | sources/manga_transcripts/14_Căn Bệnh Kỳ Quái.md | manga_candidate | context_only | requires_claim_mapping_later | MEDIUM | Archon residue / corruption |
| MANGA-15 | Tea party | sources/manga_transcripts/15_Đại Hội Tiệc Trà.md | manga_candidate | context_only | requires_claim_mapping_later | MEDIUM | Hexenzirkel connection possible |
| MANGA-16 | Ending | sources/manga_transcripts/16_Kết Thúc.md | manga_candidate | context_only | requires_claim_mapping_later | LOW | Conclusion |

Note: Files with `{{tt_...}}` naming are duplicates of chapters 04, 06, 11, and 13. Not counted separately.

---

## E. Event Sources

| Path checked | Status |
|---|---|
| sources/event/ | folder_missing |
| sources/events/ | folder_missing |
| sources/official/ | folder_missing |

No local event source files exist. This is a major gap for event-exclusive lore.

---

## F. Provenance Files (already indexed)

| Path | Files | Status |
|---|---|---|
| sources/provenance/archon_quests/nod-krai/ | 7 files (ACT2-ACT8) | metadata_only — no transcript text, only provenance pointers |

These were already inventoried in Pass 22. They remain metadata pointers, NOT extractable evidence.

---

## Summary Counts

| Category | Count |
|---|---|
| Artifact description files | 61 |
| Book text files (main) | 64 |
| Book text files (nod-krai subfolder) | 9 |
| Weapon story files | 176+ |
| Manga transcript files | 17 (+ 4 duplicates with {{tt}} naming) |
| Event source files | 0 (folder_missing) |
| Official source files | 0 (folder_missing) |
| High-risk artifact candidates | 18 |
| High-risk book candidates (main) | 16 |
| High-risk book candidates (nod-krai) | 9 |
| High-risk weapon story candidates | 13 |
| High-risk manga candidates | 17 |
| Total Pass 24 candidate rows | 73 (high-risk detailed) + ~254 (standard low-priority) = 327 total files |
