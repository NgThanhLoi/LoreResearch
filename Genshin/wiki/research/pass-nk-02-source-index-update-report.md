# Nod-Krai Source Index Update Report (Pass NK-02)

This report documents the updates made to the central `wiki/sources/source-index.md` file during Pass NK-02, verifying the ID collision checks, final registrations, and changes from the Pass NK-01 proposal.

---

## 1. Source Index Pattern Inspected

The repository's central index `wiki/sources/source-index.md` organizes file-level sources in Section 2 ("Partial File-Level Source Index") using the following columns:
`| Source ID | Path | Source type | Reliability | Main topics | Indexed level | Used by pages | Notes |`

We aligned all new registrations with this exact format and style.

---

## 2. Source ID Collision Check

Before adding any records, a comprehensive collision check was performed:
* **Book Range**: The existing book range used `BK-0001` to `BK-0004`.
  * `BK-0003` was already registered to `sources/book_texts/nod-krai/Hymns of the Far North.md`.
  * `BK-0004` was already registered to the parent directory file `sources/book_texts/Đạo Tặc Reed Miller Huyền Thoại.md`.
  * The range `BK-0005` through `BK-0009` was completely free.
* **Quest Range**: No quest IDs starting with `AQ-NK-` or `WQ-NK-` existed in the central index. The sequence `AQ-NK-0001` and `WQ-NK-0001` was free.
* **Analysis Range**: Internal analysis/topic files are already indexed as `TP-0001` and `TP-0002`. No new TP entries were added to prevent polluting the index with secondary material.

---

## 3. Registrations Summary

### IDs Added

We registered the following 7 new sources in `wiki/sources/source-index.md`:

| Source ID | Path | Source Type | Reliability | Main Topics | Notes |
| :--- | :--- | :--- | :---: | :--- | :--- |
| **BK-0005** | `sources/book_texts/nod-krai/A Brief History of the Pale Starborn.md` | Book | High | Snezhnaya pre-history, Fae vs Volkodlak wars, Glupov founding | Nguồn sơ cấp lịch sử Snezhnaya / Nod-Krai. |
| **BK-0006** | `sources/book_texts/nod-krai/Conch Echoes.md` | Book | High | Giao ước ngầm của nhóm trẻ lưu đày | Nguồn sơ cấp dạng điển tích / ẩn dụ. |
| **BK-0007** | `sources/book_texts/nod-krai/Night Murmurs From the Far Border.md` | Book | High | Cơ chế sinh học và ma thuật Varcolac (werewolf) | Nguồn sơ cấp về Varcolac. |
| **BK-0008** | `sources/book_texts/nod-krai/Tales Carried by the Northwind.md` | Book | High | Thơ ca của người sáng lập Lightkeepers | Nguồn sơ cấp thơ ca Lightkeepers. |
| **BK-0009** | `sources/book_texts/nod-krai/The Legends of Reed Miller, Thief Extraordinaire.md` | Book | High | Truyền thuyết đạo tặc, Sampo Mill, Alia & Brahe | Nguồn sơ cấp văn học dân gian. |
| **AQ-NK-0001** | `sources/book_texts/nod-krai/A Dance of Snowy Tides and Hoarfrost Groves.md` | Quest Summary | Medium | Tóm tắt Archon Quest Chương V Act I, Kuuvahki, Columbina, Sandrone | Bản tóm tắt quest và dữ liệu chứng tích địa phương (không phải thoại thô). |
| **WQ-NK-0001** | `sources/book_texts/nod-krai/Beyond Silver and Fine Gold.md` | Quest Summary | Medium | World Quest chuỗi phòng Witch's Lodge, Nicole | Bản tóm tắt quest và hội thoại của Nicole (không phải thoại thô). |

### IDs Skipped

* **Missing Files**: `EX-NK-ACT2-7` (Acts II-VII raw dialogue transcripts) was skipped. Because the file does not physically exist in the workspace, registering it would violate the core rules of the repository.
* **Analysis Topics**: `TP-NK-0001` through `TP-NK-0007` and `EN-NK-0001` (nation file) were skipped from direct registration in the central index. They are documented in research reports and classified as `analysis_only_do_not_canonize` or `summary_only_do_not_canonize` to preserve index integrity.
* **Misplaced File**: `Incandescent Ode of Resurrection.md` was skipped from registration as it is misplaced and represents Natlan lore, not Nod-Krai primary sources.

---

## 4. Changes from NK-01 Proposed IDs

* **Proposed Prefixes Stripped**: All `proposed_*` prefixes were removed as these IDs are now officially registered.
* **BK-0004 / BK-0009 Clarification**: NK-01 suggested `BK-0004` might point to the local Reed Miller summary. However, because `BK-0004` is already assigned to the parent-level `Đạo Tặc Reed Miller Huyền Thoại.md`, the local subdirectory file `sources/book_texts/nod-krai/The Legends of Reed Miller, Thief Extraordinaire.md` has been assigned `BK-0009` to prevent a duplicate ID collision.

---

## 5. Placeholder ID Policy Enforcement

In strict compliance with `wiki/sources/SOURCE_ID_RULES.md`:
* **No placeholder IDs** were created for any missing files.
* **Quest Summaries Mapped Correctly**: `AQ-NK-0001` and `WQ-NK-0001` were registered with correct quest prefixes but explicitly classified as "Quest Summary" with "Medium" reliability, ensuring they are not mistaken for raw dialogue transcripts.
