# Nod-Krai Structure Audit

This report documents the repository structure inspection performed at the start of Pass NK-01. It outlines the directories examined, governance notes found, existing source patterns, naming conventions, and the file placement choices for this pass.

---

## 1. Folders Inspected

The following directories in the workspace `D:\LoreResseach\Genshin` were audited:
- `sources/`: Contains primary in-game source files.
  - `sources/book_texts/`: Cleaned in-game book collections.
  - `sources/book_texts/nod-krai/`: Contains local source texts and summaries specific to Nod-Krai/Snezhnaya pre-history.
- `topics/`: Contains community theory/analysis files.
  - `topics/nod-krai/`: Contains 7 synthesis/summary files regarding Nod-Krai's geography, mythology, timeline, and story.
- `entities/`: Contains structured files mapping entities.
  - `entities/nations/`: Contains nation profile files (mostly empty shells, except for Mondstadt, Khaenri'ah, Celestia, and Nod_Krai).
- `wiki/`: Audited/governed wiki-facing files.
  - `wiki/research/`: Contains all previous research reports (Pass 1 through Pass 12).
  - `wiki/sources/`: Contains source governance rules and the source index.
  - `wiki/synthesis/`: Contains the contradiction register and unverified lore register.

---

## 2. Relevant Governance / Source Files Found

We identified and studied several key files governing source credibility, ID creation, and lore verification:
1. [01-canon-governance.md](file:///D:/LoreResseach/Genshin/foundation/01-canon-governance.md): Establishes the source hierarchy (Primary in-game > Official media > Cited internal summaries > Analysis & Theories > Headcanon/AU) and reliability labels (`CANON`, `STRONGLY IMPLIED`, `THEORY`, `HEADCANON`, `AU`, `UNVERIFIED`).
2. [02-source-map.md](file:///D:/LoreResseach/Genshin/foundation/02-source-map.md): Maps reliability levels of folders (`sources/` at 90-95%, `character_intelligence/` at 70%, `quests/` at 15% due to empty shells, etc.).
3. [EXTERNAL_SOURCE_POLICY.md](file:///D:/LoreResseach/Genshin/wiki/sources/EXTERNAL_SOURCE_POLICY.md): Outlines source tiers (A to E) and the ingestion decision tree (e.g., Leaks -> Tier E -> Quarantine).
4. [SOURCE_ID_RULES.md](file:///D:/LoreResseach/Genshin/wiki/sources/SOURCE_ID_RULES.md): Details prefix rules (e.g., `BK` for books, `AQ`/`WQ` for quests, `EX` for external candidates) and lifecycle stages.
5. [source-index.md](file:///D:/LoreResseach/Genshin/wiki/sources/source-index.md): The central index mapping Source IDs to file paths.
6. [contradiction-register.md](file:///D:/LoreResseach/Genshin/wiki/synthesis/contradiction-register.md): Registers conflicts such as `CON-0001` (Ianikuinen vs Nibelung) and `CON-0005` (Nod-Krai Acts II-VII raw transcript gap).
7. [unverified-lore-register.md](file:///D:/LoreResseach/Genshin/wiki/synthesis/unverified-lore-register.md): Flags high-risk concepts (e.g., `Columbina = Kuutar`, `Dottore chế tạo Thần Mặt Trăng Giả`) as `THEORY`/`UNVERIFIED` and restricts their use in canon storylines.

---

## 3. Existing Patterns and Naming Conventions

- **Source Index Pattern**: Uses Markdown tables to map Source ID, path, reliability, topics covered, and notes.
- **Provenance Pattern**: Seen in Kaeya's Fandom API ingestion (`sources/character_stories/Kaeya.md`), which acts as an extraction index referencing a pinned revision ID and checksums instead of copying full copyrighted text.
- **Research Report Pattern**: Standardized in `wiki/research/` as `pass-[number]-[name]-report.md` or similar. They are structured, objective, and outline actions, changes, and next recommended passes.
- **Nod-Krai File Patterns**:
  - Raw source materials reside under `sources/book_texts/nod-krai/` as English transcripts (with some bilingual comments).
  - Synthesis and summary notes reside under `topics/nod-krai/` or `entities/nations/Nod_Krai.md` in Vietnamese.

---

## 4. Existing Nod-Krai Files Found

We located the following existing files directly related to Nod-Krai:
- **Local Source / Provenance Candidates** (`sources/book_texts/nod-krai/`):
  1. `A Brief History of the Pale Starborn.md` (Fae pre-history, Volkodlak wars, Emperor Monomakh, Tsaritsa Anastasya, Fatui origins)
  2. `A Dance of Snowy Tides and Hoarfrost Groves.md` (Archon Quest Chapter V Act I summary; local quest summary/provenance candidate, not raw dialogue transcript)
  3. `Beyond Silver and Fine Gold.md` (World Quest series about Nicole; local quest summary/provenance candidate, not raw dialogue transcript)
  4. `Conch Echoes.md` (2-volume allegory about exile youths)
  5. `Hymns of the Far North.md` (Deity/mythology prayers, already registered as `BK-0003`)
  6. `Night Murmurs From the Far Border.md` (Hunter Czcibor and Varcolac werewolf lore)
  7. `Tales Carried by the Northwind.md` (Poetry of Silvestr Petrovich Solovei)
  8. `The Legends of Reed Miller, Thief Extraordinaire.md` (Legends of Reed Miller, Wagtail, Alia, and Zima)
  9. *Note: `Incandescent Ode of Resurrection.md` is also located here, but is actually the Natlan Archon Quest Chapter V Act V, misplaced in this folder. It is quarantined but must **not** be moved immediately until a formal data-cleaning pass or a directory convention is confirmed.*
- **Analysis Topics** (`topics/nod-krai/`):
  - `mythology.md`, `geography.md`, `timeline.md`, `story_summary.md`, `factions_deep_dive.md`, `connections_to_other_regions.md`, `missing_coverage_report.md`.
- **Entity Nation Profile** ([Nod_Krai.md](file:///D:/LoreResseach/Genshin/entities/nations/Nod_Krai.md)):
  - Details general info, subregions (Lempo, Hiisi, Paha islands), early history, and explicitly flags Acts II-VII as unverified due to lack of raw transcripts.

---

## 5. File Writing Rationale

For this pass, files were written directly to `wiki/research/` matching the requested names:
- `pass-nk-01-nod-krai-structure-audit.md`
- `pass-nk-01-nod-krai-source-recon-report.md`
- `pass-nk-01-nod-krai-source-candidate-index.md`
- `pass-nk-01-nod-krai-source-gap-map.md`
- `pass-nk-01-next-actions.md`

Writing to `wiki/research/` is the least invasive option and follows the standard pattern for research passes in the repository. We did not write to `wiki/sources/` or modify `wiki/sources/source-index.md` directly in this pass because the files are being treated as **candidates** during this recon pass, not yet ingested/verified sources.

---

## 6. What Was Intentionally Not Touched

To respect the strict rules of this pass:
- **No character files** (such as Kaeya or the blocked Harbingers) were modified.
- **No outline or fanfic plot files** were created.
- **No folder structures** were renamed, moved, or reorganized.
- **No claims** were upgraded to canon.
- **No placeholders** or mock source IDs were registered in the primary `source-index.md`.
