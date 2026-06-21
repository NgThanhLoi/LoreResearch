# Nod-Krai Risk and Guardrail Report (Pass NK-02)

This report outlines the primary lore and technical risks identified during the Nod-Krai indexing pass (Pass NK-02) and establishes clear guardrails to prevent unverified data from contaminating the wiki.

---

## 1. Lore Risks & Guardrails

### Acts II-VII Raw Transcript Gap
* **Risk**: High-risk unverified summary material exists for Archon Quest Acts II-VII. There are zero raw dialogue transcripts in the workspace to support any events in these acts.
* **Guardrail**: All claims, outlines, or summaries regarding Acts II-VII are classified as `source_missing` and `blocked_unavailable`. They must not be written into canon pages or timelines.

### Quest Summary vs. Raw Dialogue Distinction
* **Risk**: `AQ-NK-0001` (*A Dance of Snowy Tides*) and `WQ-NK-0001` (*Beyond Silver and Fine Gold*) are local quest summaries/descriptions, not raw transcripts.
* **Guardrail**: These files are indexed with `Medium` reliability and the status `local_quest_summary_candidate`. They must only support macro-level facts (e.g., character appearances, general locations) and cannot be used to verify detailed dialogue claims.

### Analysis/Topic Files are Not Canon
* **Risk**: The workspace contains several synthesis/topic files in `topics/nod-krai/` summarizing history and geography. These files contain subjective interpretations and unverified claims.
* **Guardrail**: All files in `topics/nod-krai/` and the nation overview `entities/nations/Nod_Krai.md` are classified as `analysis_only_do_not_canonize` or `summary_only_do_not_canonize`. They must not be used as primary sources.

### Columbina = Kuutar Identity Guardrail
* **Risk**: In AQ Act I, Columbina is encountered by the Traveler, and folklore refers to the moon maiden Kuutar. However, there is no direct narrator-safe confirmation that Columbina *is* Kuutar.
* **Guardrail**: This connection must remain classified as a community `theory` and strictly `guarded`. It can be described as a local rumor or character belief but never asserted as narrator canon.

### Dottore False Moon Guardrail
* **Risk**: Claims that Dottore created a false moon god or hacked Irminsul are summarized in unverified files.
* **Guardrail**: Banned from canon integration. Status: `unverified` and `blocked`.

### Sandrone / Rotwang / Khaenri'ah Guardrail
* **Risk**: Theories suggest Harbinger Sandrone is using machinery from the Khaenri'ahn scientist Rotwang.
* **Guardrail**: Banned. No local source confirms any connection between Sandrone and Rotwang.

### Skirk / Third Descender Guardrail
* **Risk**: Claims regarding Skirk's teachings or the identity of the Third Descender.
* **Guardrail**: Banned. No local sources for Skirk or the Third Descender exist.

### False Sky Mechanics Guardrail
* **Risk**: Speculation about Celestia's false sky harvesting/recycling souls.
* **Guardrail**: Banned from canon writing. Remains in the `unverified` registry.

---

## 2. Technical and Registry Risks

### Source ID Collision Risks
* **Risk**: Assigning an ID that matches an existing file, causing index corruption.
* **Guardrail**: A complete collision scan was conducted. `BK-0004` was found to already point to the parent-level `Đạo Tặc Reed Miller Huyền Thoại.md`. Thus, the subdirectory file `sources/book_texts/nod-krai/The Legends of Reed Miller, Thief Extraordinaire.md` was assigned `BK-0009` to avoid collision.

### Encoding/Language Risks
* **Risk**: The local sources contain bilingual elements (Vietnamese commentary on English text). There is a risk of translation mismatch or corruption during parsing.
* **Guardrail**: All translations and summaries were checked against their primary English or Vietnamese text. No assumptions were made, and spellings were cross-referenced with `SOURCE_ID_RULES.md` and `SCHEMA.md`.
