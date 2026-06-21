# Pass NK-05 — Risk and Quarantine Report

This report analyzes the critical risks identified during the search and feasibility assessment for Nod-Krai Acts II–VII.

---

## Identified Risks

### 1. Copyright Risk
*   **Description:** Copying large blocks of dialogue, transcripts, or detailed summaries from the Fandom Wiki into the workspace violates copyright policies.
*   **Mitigation:** The repository must use metadata pointers (Revision ID, URL, Page ID) and short structural indices instead of storing full text.

### 2. Leak Risk
*   **Description:** Ingesting datamined or unreleased story files (such as beta text or datamined quest strings) violates safety guidelines and risks future retcons.
*   **Mitigation:** Keep all unreleased content in quarantine. They must never update canon claim mapping or character/region pages.

### 3. Fan Summary Contamination Risk
*   **Description:** The "Song of the Welkin Moon" storyline (Acts II-VII) is entirely fanon. It was found on the Genshin Impact Fanon Wiki, which mimics the format of the official Genshin Impact Fandom Wiki. There is an extremely high risk of treating these fanon summaries as official lore.
*   **Mitigation:** Strictly quarantine these candidates. They must be barred from updating character stories, region pages, or canon timelines.

### 4. YouTube-Only Source Risk
*   **Description:** Reviewing video playthroughs without text transcripts can lead to transcription errors, audio misinterpretations, and translation inaccuracies.
*   **Mitigation:** Treat video sources as `support_only` to verify that an act exists and has been released. Never use them as source-of-truth text transcripts.

### 5. Fandom Revision Drift Risk
*   **Description:** Fandom wiki pages are edited dynamically by the community. A citation link can change or be deleted over time.
*   **Mitigation:** All registered external candidates must record the specific `oldid` (Revision ID) and retrieval timestamp to ensure auditability.

### 6. Translation Mismatch Risk
*   **Description:** Local summary files in the workspace (such as [story_summary.md](file:///D:/LoreResseach/Genshin/topics/nod-krai/story_summary.md) and [AQ-NK-0001](file:///D:/LoreResseach/Genshin/sources/book_texts/nod-krai/A%20Dance%20of%20Snowy%20Tides%20and%20Hoarfrost%20Groves.md)) are in Vietnamese or bilingual English/Vietnamese, while the live Fandom Wiki pages are in English. This creates translation and terminology inconsistencies.
*   **Mitigation:** Any future ingestion must reconcile terms under the governed terminology matrix.

### 7. Spoiler / Version Mismatch Risk
*   **Description:** Plot events in these acts may conflict with official game releases (e.g., Snezhnaya version 6.x vs current version 5.x).
*   **Mitigation:** Keep all Snezhnaya / Nod-Krai plot points beyond Act I blocked.

---

## Blocked Claims (Must Remain Blocked)
The following claims lack primary official sources and must remain blocked from the canon layer of the wiki:
*   `acts_ii_vii` (All plot events for Acts II-VII of Chapter VI)
*   `columbina_kuutar` (Columbina being the reincarnation of the Moon Goddess Kuutar)
*   `dottore_false_moon` (Dottore building a False Moon on Paha Island)
*   `dottore_irminsul_hack` (Dottore hacking Irminsul using the False Moon)
*   `sandrone_rotwang` (Sandrone's connection to Alain Guillotin or Rotwang machinery)
*   `sandrone_khaenriah_link` (Sandrone being connected to Khaenri'ah machinery)
*   `skirk_descender` (Skirk's identity as the Third Descender)
*   `false_sky_mechanics` (Celestia's soul-harvesting structure)
*   `true_welkin_moon` (Columbina thăng hoa thành Mặt Trăng Chân Thật mới)
*   `moon_authority` (Tri-Lunar Authority power system)
*   `traveler_moon_marrow` (Traveler fusing with the Moon Marrow)
*   `abyss_sibling_actions` (Sibling using Abyss energy to steal the Moon Marrow)
*   `voynich_guild` (The entire Voynich Guild faction)
*   `nefer_boss_lady` (Nefer as the head of the Voynich Guild)

---

## Claims Eligible Only for Future Review
*   Official Snezhnaya lore and Fatui origins (`fatui_origin` in `BK-0005`) are eligible for mapping as they reside in physical book texts present in the workspace, but any claims linking them to Acts II-VII events remain blocked.
