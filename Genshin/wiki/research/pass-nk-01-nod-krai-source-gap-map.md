# Nod-Krai Source Gap Map

This gap map identifies missing, weak, or conflicting sources across all major areas of Nod-Krai and related factions. It defines what claims are safe to make based on local evidence and what areas must remain quarantined.

---

## Source Gap Matrix

| Coverage Area | Source Status | Current Confidence | Missing Direct Source | Risk if Used Now | Recommended Next Action |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Region overview** | `local_source_found` | High | None (for general overview) | Low. | Ingest `proposed_BK-0005` (History) and `proposed_AQ-NK-0001` (AQ Act I summary) to establish the basic region profile. |
| **Map/subregions** | `local_source_found` | High | None (for Nasha, Hiisi, Paha islands, Starsand Shoal, Amsvartnir) | Low. | Map subregion locations in `entities/nations/Nod_Krai.md` directly to `proposed_AQ-NK-0001`. |
| **Archon Quest / main quest Acts** | `partial_source_found` (Act I only) | High for Act I; Zero for Acts II–VII | Raw dialogue transcripts for Acts II-VII (`proposed_EX-NK-ACT2-7`) | **Critical.** Outlining or writing plots based on unverified summaries will cause severe lore errors. | Maintain `source_missing` / `guarded` status for Acts II–VII. Lock all plot outlines. |
| **World quests** | `local_source_found` | High | None (Witch's Lodge / Nicole details are local) | Low. | Index `proposed_WQ-NK-0001` to lock down Nicole's presence and dialog. |
| **Playable characters** | `source_missing` | Low | Local character-story transcripts (`CS-*`) and voice lines (`VL-*`) for Nod-Krai native playables (Aino, Flins) | **High.** Creating character pages without primary sources will lead to invented personalities. | Keep Level 0. Acquire profile/story data via API in a future pass. |
| **Major NPCs** | `local_source_found` | High (for Act I NPCs) | None for Act I NPCs (Lauma, Ineffa, Vilemina, Dhabit) | Low/Medium. | Ingest `proposed_AQ-NK-0001` and map claims. Limit NPC profiles to Act I scope. |
| **Factions** | `local_source_found` | High (for historical/Act I context) | Detailed faction structures for later acts | Low. | Ingest `proposed_BK-0005`, `proposed_BK-0009` (Reed Miller), and `proposed_AQ-NK-0001` to map faction histories. |
| **Fatui links** | `local_source_found` | High | None. | Low. | Map Snezhnaya pre-history, Oprichniki, and Glupov founding to `proposed_BK-0005`. |
| **Hexenzirkel links** | `local_source_found` | High | None. | Low. | Map Nicole's presence to `Beyond Silver and Fine Gold` (`proposed_WQ-NK-0001`). |
| **Skirk links** | `source_missing` | Zero | Physical local Skirk voice lines or quest transcript with provenance | **Critical.** Banned from any canon integration. | Maintain `source_missing` warning. Keep guarded. |
| **Columbina/Dottore/Sandrone links** | `partial_source_found` | Medium (guarded) | Dottore local voice/dialogue; Columbina's confirmation as Kuutar; Sandrone's profile | **Critical.** Treating community theories or unverified summaries as narrator-safe facts. | Keep Dottore blocked (Level 1); Columbina and Sandrone guarded (Level 2 source_light). Do not upgrade. |
| **Power/lore mechanics** | `local_source_found` | High | None (for Kuuvahki, Moon Marrow, Varcolac dual hearts) | Medium. | Map mechanics to `proposed_BK-0007` (Varcolac) and `proposed_AQ-NK-0001` (Kuuvahki). |
| **Terminology/glossary** | `local_source_found` | High | None. | Low. | Ingest books to verify exact terms and spelling (Vila, Volkodlak, Snegurochka, Kuuhenki). |
| **Contradiction-sensitive claims** | `source_conflict_resolved` | High | None. | **Critical** if ignored. | Enforce the identity splits: Ianikuinen $\neq$ Nibelung; Rotwang machine $\neq$ Sampo Mill. |

---

## Guarded Lore & Blocked Concepts

To maintain strict source-compliance, the following concepts are quarantined and banned from direct canon writing:
1. **Columbina = Kuutar (Moon Maiden)**:
   - *Status*: `STRONGLY IMPLIED / THEORY` (indirect only).
   - *Constraint*: May be used as a character belief or local rumor, but never stated as narrator-safe canon.
2. **Dottore's False Moon God / Irminsul Hack**:
   - *Status*: `THEORY / UNVERIFIED` (Acts II-VII).
   - *Constraint*: Banned from use. No raw dialogue exists to support it.
3. **Sandrone's Khaenri'ah Link**:
   - *Status*: `THEORY` (unverified).
   - *Constraint*: Banned. There is no local source confirming Marionette is connected to Rotwang or using his machines.
4. **True Welkin Moon / Tri-Lunar Authority**:
   - *Status*: `UNVERIFIED` (source missing).
   - *Constraint*: Banned unless in an explicitly declared AU context.
5. **Tháp Embla / Mũi Tên Terpikeraunas**:
   - *Status*: `UNVERIFIED` (source missing).
   - *Constraint*: Banned. These names do not exist in the local source texts.
6. **False Sky Recycling Mechanism**:
   - *Status*: `THEORY / UNVERIFIED` (source missing).
   - *Constraint*: Banned from canon. Must remain inside the unverified lore registry.
