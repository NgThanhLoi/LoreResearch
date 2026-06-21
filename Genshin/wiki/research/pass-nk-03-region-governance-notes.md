# Nod-Krai Region Governance Notes (Pass NK-03)

This document establishes the source-status-explicit region profile for the Nod-Krai region, defining the geographical, historical, and cultural boundaries supported by registered local sources.

---

## 1. Purpose & Source Basis

The purpose of these notes is to codify the verified regional details of Nod-Krai, establishing what can be safely used in the wiki and what must be strictly blocked to prevent unverified lore contamination.

### Source Basis
*   **BK-0003 — Hymns of the Far North**: High reliability liturgical/mythological book.
*   **BK-0005 — A Brief History of the Pale Starborn**: High reliability historical record of Snezhnayan pre-history.
*   **AQ-NK-0001 — A Dance of Snowy Tides and Hoarfrost Groves**: Medium reliability quest summary. Used only for macro-level facts (locations, character appearances, high-level concepts) and *never* for detailed dialogue or character voice.

---

## 2. Region Overview

*   **source_status**: `local_source_found`
*   **source_ids**: `BK-0003`, `BK-0005`, `AQ-NK-0001`
*   **reliability**: High (for pre-history/folklore books), Medium (for quest summary macro-elements)
*   **allowed_use**: Describing Nod-Krai as a remote, snow-clad northern borderland of Snezhnaya, rich in pre-history, containing ancient moon shards, and featuring unique local fauna and flora.
*   **banned_use**: Writing any details regarding Snezhnaya's main mainland geography not supported by local texts, or drawing connections to unreleased maps.

---

## 3. Known Locations & Subregions

*   **source_status**: `local_source_found`
*   **source_ids**: `AQ-NK-0001`, `BK-0005`, `BK-0007`, `BK-0008`, `BK-0009`
*   **reliability**: High (books), Medium (quest summary)
*   **allowed_use**: Referencing and describing only the following verified locations:
    *   **Nasha Town**: The primary port town of Nod-Krai. Features Mimisbrunnr Books (run by Dhabit), a local tavern (The Flagship, where bartender Demyan works), and the Clink-Clank Krumkake Craftshop.
    *   **Hiisi Island**: The holy island housing the Frostmoon Enclave, ancient ruins, and the sacred statue of the Moon Maiden Kuutar.
    *   **Paha Island**: Controlled by the Fatui; contains the Kuuvahki Experimental Design Bureau built upon a large moon shard.
    *   **Lempo Island**: An island where Aino's mechanical craftshop and other local activities are located.
    *   **Starsand Shoal**: The coastline where Marionette was confronted and where the Moon Marrow relic was temporarily held.
    *   **Amsvartnir**: A northern lake where Grand Master Varka went to investigate troubles.
    *   **Piramida**: A northern ruin site containing the palace of the former fae Governor Trubetskoy.
    *   **Kitezh (Kitezhgrad)**: Snezhnaya's first city and former capital built by the fae under Emperor Monomakh, located on the frozen lake. Seat of power until relocated to Snezhnograd when humans were integrated.
    *   **Pohjola**: A dark, mist-shrouded northern land mentioned in mythology.
    *   **Barrowmoss Barrens**: A wasteland where the hunter Czcibor once disappeared.
*   **banned_use**: Speculating on map connections for Acts II-VII, or creating non-source subregions.

---

## 4. Pre-History Summary

*   **source_status**: `local_source_found`
*   **source_ids**: `BK-0005`
*   **reliability**: High
*   **allowed_use**: Describing the ancient era of the Fae and Volkodlak.
    *   **Emperor Monomakh Snezhnyi**: Fae ruler who built Kitezh in Snezhnaya. Later expanded the empire to include humans, moved the seat to Snezhnograd, and was known as the Belyi Tsar.
    *   **King Miscislav**: Great ruler of the Volkodlak ("wise blood-drinker", "Gorynishche"), who led the Volkodlak clans (including Nyholmgarthir, Dalegrad, Cirnareka) against the Pale Star court.
    *   **Battle of Kitezh**: Slew King Miscislav (his bear-like skull is in the Zapolyarny Palace Treasury) and the Grand Dukes Skoldyryt and Vodyanoy. Grand Duke Seriviiki (Gray Wolf of Cirnareka) survived and allied with the Emperor.
    *   **Tsaritsa Anastasya Feodorovna**: Crowned in Snezhnograd in the 1st year of the 799th Cycle after Monomakh's death. She suppressed the fae princes and human rebellions, established the Fatui, and built the fortress Glupov.
*   **banned_use**: Treating this history as active modern politics, or conflating the Belyi Tsar with the current Cryo Archon's ascension history.

---

## 5. Cultural & Mythological Boundaries

*   **source_status**: `local_source_found`
*   **source_ids**: `BK-0003`, `BK-0005`, `BK-0009`
*   **reliability**: High
*   **allowed_use**:
    *   **Fae Calendar**: A cycle lasts exactly 7 years. Snezhnaya's history was calculated in these cycles (e.g. Anastasya crowned in 799th Cycle).
    *   **Hyperborean Origins**: The Frostmoon Scions trace their roots to the legendary Golden Realm of Hyperborea.
    *   **Local folklore**: Jack Frost (stealer of shoes) and Snegurochka (freezers of unfaithful lovers) exist as regional folklore. Reed Miller tales are recognized as cheap detective pulp fiction.
*   **banned_use**: Treating folklore tales (like Jack Frost) as physical historical entities or actual active characters in the present world.

---

## 6. Guarded Areas & Maintenance Notes

*   **source_status**: `source_missing` / `theory`
*   **source_ids**: None
*   **reliability**: N/A
*   **allowed_use**: Explicitly documenting these topics as unverified, missing, or guarded theories only.
*   **banned_use**: Integrating the following claims as canon:
    *   Acts II-VII storyline events (strictly blocked).
    *   Soul-harvesting or recycling mechanics of the False Sky.
    *   Dottore's false moon god or hacking of Irminsul.
    *   Sandrone's connection to the Khaenri'ahn scientist Rotwang.
    *   Skirk's presence or the Third Descender's identity.
*   **Maintenance Note**: These region notes must be kept strictly aligned with physical local documents in `sources/book_texts/nod-krai/`. Any edits to these notes require cross-referencing with `wiki/sources/source-index.md`.
