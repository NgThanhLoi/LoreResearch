# Nod-Krai Quarantine and Misplaced Files Report (Pass NK-02)

This report documents the identification and quarantine status of misplaced files found within the Nod-Krai folder structure during Pass NK-02.

---

## 1. Misplaced File Details

* **File Path**: `sources/book_texts/nod-krai/Incandescent Ode of Resurrection.md`
* **Content Audited**: Natlan Archon Quest Chapter V Act V ("Incandescent Ode of Resurrection"), involving characters Mavuika, Capitano, Citlali, Xilonen, Kachina, and Mualani.
* **Why Misplaced**: This file is an Act summary of Natlan's Archon Quest. It has zero relation to the Nod-Krai region, Snezhnaya pre-history, or any northern mythology. It was mistakenly stored in the `nod-krai/` subdirectory.

---

## 2. Actions Taken

* **Move Status**: **NOT moved**. In accordance with the repository's strict structure-safety guidelines, files must not be moved or reorganized globally without an established safe convention or explicit user directive.
* **Registry Status**: **Omitted** from the central `wiki/sources/source-index.md` to prevent polluting the index with misplaced/incorrect entries.
* **Classification Label**: Classified as `duplicate_or_low_value` (with status `misplaced_file`) in this pass's research records.

---

## 3. Recommended Future Cleanup

* **Relocation Target**: This file should eventually be moved to a Natlan Archon Quest directory (e.g., `sources/book_texts/natlan/` or `sources/voice_lines/archon_quests/natlan/` once established).
* **Cleanup Coordination**: Relocation should be deferred to a dedicated repository-wide **Data-Cleaning Pass** rather than being performed ad-hoc during local region/faction passes.
* **Link Audit**: Before relocation, a check must be done to ensure no other files reference this path.
