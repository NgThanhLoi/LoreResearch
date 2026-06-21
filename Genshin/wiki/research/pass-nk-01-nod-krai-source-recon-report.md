# Nod-Krai Source Recon Report

This report summarizes the source-reconnaissance pass (Pass NK-01) performed on the Nod-Krai region and Snezhnayan pre-history. It establishes the current source foundation and outlines what can be safely upgraded and what must remain guarded as `source_missing`.

---

## 1. Objective

The primary objective of this pass is to research and document the missing Nod-Krai source foundation. This is a **source-governance/provenance pass** aimed at finding high-trust source candidates, mapping existing source gaps, and defining what lore is safely verified versus what must remain restricted.

---

## 2. Current source_missing Status

Prior to this pass, all claims relating to Nod-Krai Acts II–VII (and related character or regional upgrades) were treated as `source_missing` or `guarded`. No regional character pages (like Flins, Lauma, or Aino) or regional files were upgraded beyond Level 0 or Level 2 due to the lack of local, validated primary source records.

---

## 3. Research Method

We performed a physical scan of the workspace directories:
1. Checked for local source texts inside `sources/book_texts/nod-krai/` and identified 9 book/quest summary files.
2. Cross-referenced the structured nation metadata in [Nod_Krai.md](file:///D:/LoreResseach/Genshin/entities/nations/Nod_Krai.md) to locate unverified lore sections.
3. Studied the contradiction and unverified lore registers under `wiki/synthesis/` to find registered conflicts (`CON-0001`, `CON-0002`, `CON-0005`).
4. Classified source candidates according to the [EXTERNAL_SOURCE_POLICY.md](file:///D:/LoreResseach/Genshin/wiki/sources/EXTERNAL_SOURCE_POLICY.md) hierarchy.

---

## 4. Summary of Official / High-Trust Sources Found

The local directory `sources/book_texts/nod-krai/` contains 9 source/provenance candidate documents (some of which are local quest summaries rather than raw dialogue transcripts). These files act as the backbone of Nod-Krai's verified history:
- **State Pre-History**: `A Brief History of the Pale Starborn.md` details the historical wars between Fae (led by Emperor Monomakh, later Belyi Tsar) and Volkodlak (led by King Miscislav). It details the Fae calendar cycle (1 cycle = 7 years) and the post-Cataclysm transition to Tsaritsa Anastasya, who founded the Fatui and the city of Glupov.
- **Quest Act I**: `A Dance of Snowy Tides and Hoarfrost Groves.md` is a **local quest summary candidate / provenance candidate** (not a raw dialogue transcript) that outlines Archon Quest Chapter V Act I (Song of the Welkin Moon), recording the arrival of the Traveler, meeting Lauma, Aino, and Flins, encountering Harbingers Sandrone and Columbina, and discovering the moon's Kuuvahki energy.
- **Ancient Mythology**: `Hymns of the Far North.md` (already registered as `BK-0003`) contains detailed liturgy invoking deities of the Far North (Pitkamoonen, Maadteraahka, Tuonetar, Laimelea, Takoja Ianikuinen, Koitar, Saarelainen, Huurrekuutar, Kuutar).
- **Folklore & Bandits**: `The Legends of Reed Miller, Thief Extraordinaire.md` records pulp novels detailing the legendary thief Reed Miller, his accomplice Wagtail, his lover Brahe, and the historical conflict with Governor Trubetskoy over the Sampo Mill artifact.
- **Werewolf Mechanics**: `Night Murmurs From the Far Border.md` outlines the biology and powers of the Varcolac (werewolves with two hearts, shape-shifting abilities, and moonlit healing via Frostlamp Flowers).
- **Poetry**: `Tales Carried by the Northwind.md` registers poems written by the Lightkeeper founder Silvestr Petrovich Solovei.
- **Witch's Lodge**: `Beyond Silver and Fine Gold.md` is a **local quest summary candidate / provenance candidate** (not a raw dialogue transcript) that records details of a weekly-gated World Quest involving Nicole.
- **Allegory**: `Conch Echoes.md` presents a 2-volume story of exiles.

---

## 5. Summary of Existing Local Sources Found

The repository currently maps the following local files as sources or topics:
- **`BK-0003`**: `sources/book_texts/nod-krai/Hymns of the Far North.md` (primary source found, high reliability).
- **`TP-0001`**: `topics/nod-krai/mythology.md` (low/medium reliability analysis; contains unverified interpretations).
- **`TP-0002`**: `topics/nod-krai/story_summary.md` (low/medium reliability, summarizes Acts II-VII without raw dialogue).

*Note: Proposed candidate IDs in Pass NK-01 are explicitly prefixed as `proposed_*` (e.g., `proposed_BK-0005`, `proposed_AQ-NK-0001`, `proposed_WQ-NK-0001`) to distinguish them from official source IDs, since the main `source-index.md` has not been updated.*

---

## 6. Source Status Recommendations

We recommend registering the 8 valid local files as `local_source_candidate` proposed records (specifically using candidate prefix formats like `proposed_BK-0005` etc.) to avoid confusion with official registered source IDs. We recommend treating all summarizations of Acts II–VII as `summary_only_do_not_canonize` and keeping their status as `blocked_unavailable` for any canon claim mapping. The misplaced Natlan Act V file (`Incandescent Ode of Resurrection.md`) should be classified as `duplicate_or_low_value` for the Nod-Krai region.

---

## 7. What Can Be Safely Upgraded Later

Once these source candidates are fully ingested and indexed in a future pass, the following claims can be safely upgraded to canon/strongly implied status:
1. **Fae Calendar & Pre-History**: Monomakh's unified realm, the Volkodlak Miscislavli alliance, and the battles at Kitezhград.
2. **Cataclysm State Transition**: Monomakh's death, Tsaritsa Anastasya's ascension, the revocation of Fae princely titles, the founding of the Fatui, and the building of Glupov.
3. **Archon Quest Act I Events**: Nasha Town geography, Frostmoon Scions (led by Lauma), meeting Columbina in the Hiisi caves, Sandrone's presence at Starsand Shoal, and the theft of the Moon Marrow (which is stored in the Traveler).
4. **Varcolac Mechanics**: Dual hearts (need to pierce the extraneous heart to complete transformation), wolf/human shape-shifting, and Frostlamp Flower energy absorption.
5. **Mythology (Folklore level)**: The names and roles of northern deities (Huurrekuutar, Takoja Ianikuinen, Maadteraahka, etc.) and the folklore of Reed Miller, Alia, and the Sampo Mill.

---

## 8. What Must Remain Guarded / source_missing

The following claims are **completely blocked** and must remain guarded as `source_missing` or `THEORY`/`UNVERIFIED`:
1. **Archon Quest Acts II-VII**: All events describing the Traveler defeating Dottore, Columbina thăng hoa into the True Welkin Moon, or the mechanical sky-shell soul-recycling system. There are no raw dialogue transcripts to support these events.
2. **Columbina = Kuutar Identity**: This remains a community theory. The books confirm Kuutar is a moon maiden/messenger, but do not state that Harbinger Columbina is Kuutar. This must not be treated as narrator-safe canon.
3. **Sandrone's Khaenri'ah / Rotwang Links**: There is no source confirming Sandrone is related to Rotwang or using his machinery. This must remain restricted.
4. **Skirk's Teachings / Descender Claims**: All claims regarding Skirk or the Third Descender's identity remain guarded.
5. **Power scaling / False Sky details**: Speculations about Celestia's sky-dome harvesting souls must remain in the `UNVERIFIED` registry.

---

## 9. Blocked Areas

- **Acts II-VII Transcripts**: The workspace lacks all raw quest dialog transcripts for Acts II-VII.
- **Live external API data**: No online databases (such as Honey Impact or live Fandom API query) were used to pull external transcripts in this pass.

---

## 10. Risks and Unresolved Questions

- **Misplaced File**: `Incandescent Ode of Resurrection.md` (Natlan AQ V) was placed in `sources/book_texts/nod-krai/`, which represents a file structure error. While it needs to be quarantined, it must **not** be moved immediately until a formal data-cleaning pass or a directory convention is confirmed for the repo.
- **Unverified Summary Files**: Several files in `topics/nod-krai/` and `entities/nations/Nod_Krai.md` contain mixtures of verified pre-history and unverified Act II-VII plot details. Human review is required to separate these sections before any nation page updates.
- **Language / Encoding Risks**: The local files contain bilingual headers (Vietnamese comments on English text) which may require standardization.
