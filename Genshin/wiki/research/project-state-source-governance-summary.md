# Project State — Source Governance Summary

> **Date:** 2026-06-24 | **Source:** wiki/sources/source-index.md, wiki/sources/SOURCE_ID_RULES.md, wiki/sources/EXTERNAL_SOURCE_POLICY.md, wiki/sources/source-map.md, wiki/log.md

---

## 1. source-index.md State

- **Located at:** `wiki/sources/source-index.md`
- **Last modified:** Pass NK-06 (2026-06-21) — added 7 AQ-NK-ACT* provenance candidates
- **Previous modifications:** Pass 2, Pass 2.1, Pass 3, Pass 4, Pass 4.1, Pass 5, Pass 8, Pass 8.1, NK-02, NK-06
- **Pass 13–18.2:** Explicitly confirmed NO source-index changes

### Sections:
1. **Folder-Level Source Index** (9 IDs) — WS-ALL, AR-ALL, BK-ALL, VL-ALL, EN-ALL, TP-ALL, MG-ALL, VLAQ-ALL, VLWQ-ALL, plus retired QD-ALL and missing OF-ALL
2. **Partial File-Level Source Index** (24 IDs) — WS-0001–0005, AR-0001–0004, BK-0001–0009, AQ-NK-0001, WQ-NK-0001, VL-0001, EN-0001–0002, TP-0001–0002
3. **Pass 4 VLAQ File-Level Candidates** (11 IDs) — VLAQ-INAZUMA-001/002, VLAQ-SUMERU-001/002, VLAQ-FONTAINE-001/002/003, VLAQ-TRAVELER-001/002, VLAQ-WANDERER-001
4. **Pass 8 Character Story Source Candidates** (1 ID) — CS-KAEYA-001
5. **NK-02/06 Nod-Krai Provenance Candidates** (7 IDs) — AQ-NK-ACT2 through AQ-NK-ACT8

**Total source IDs registered:** ~52+

---

## 2. Source ID Policy State

- **Policy file:** `wiki/sources/SOURCE_ID_RULES.md` — created in Pass 2 (CC)
- **Last updated:** Pass 2.1 (CC)
- **Required prefixes:** 15 defined (VL, VLAQ, VLWQ, CS, AQ, WQ, SQ, IQ, BK, WS, AR, MG, OF, TR, DB, API, EN, TP, EX, TH, LQ)
- **MUST NOT rules:** Stringent — no IDs for non-existent files, no folder-level as proof, no placeholder IDs
- **Compliance in Pass 13–18.2:** ✅ Fully compliant (no source-index changes, no source IDs created)
- **NK-02/NK-06 compliance:** ✅ NK-02 added BK-0005–BK-0009 and AQ-NK/WQ-NK IDs with proper provenance_candidate status

---

## 3. External Source Policy State

- **Policy file:** `wiki/sources/EXTERNAL_SOURCE_POLICY.md` — created in Pass 2 (CC)
- **Five tiers:**
  - **Tier A:** Official Source Candidate (HoYoLAB, website, YouTube) — canon after local ingestion + claim mapping
  - **Tier B:** API/Database/Transcript Candidate (genshin-db, Fandom, Honey Impact) — canon after verification
  - **Tier C:** Wiki/Guide/Secondary Reference — permanently secondary
  - **Tier D:** Community Theory/Discussion — theory discovery only
  - **Tier E:** Leak Quarantine — never canon
- **Copyright rules:** No long copyrighted dialogue pasted; short excerpts only

---

## 4. Local Source Package Categories

| Category | Location | Files | Reliability | Canon Use? |
| --- | --- | --- | --- | --- |
| Weapon Stories | sources/weapon_stories/ | 227 | High | Yes — after claim mapping |
| Artifact Descriptions | sources/artifact_descriptions/ | 61 | High | Yes — after claim mapping |
| Book Texts (in-game) | sources/book_texts/ | 79 | High | Yes — after claim mapping |
| Voice Lines (characters) | sources/voice_lines/characters/ | 96 | High | Yes — primary source |
| Archon Quest Voice Lines | sources/voice_lines/archon_quests/ | 124 | High | Yes — primary source |
| World Quest Voice Lines | sources/voice_lines/world_quests/ | 4 | Medium | Yes — limited coverage |
| Manga Transcripts | sources/manga_transcripts/ | 21 | Medium | Yes — after claim mapping |
| Character Stories | sources/character_stories/ | 1 | Mixed | Kaeya provenance only |
| Provenance (Nod-Krai AQ) | sources/provenance/archon_quests/nod-krai/ | 7 | Medium | Provenance candidates only |

**Total local source files:** 620

---

## 5. Read-Only vs Mutation History

| Phase | source-index Modified? | Source IDs Created? | Principles Preserved? |
| --- | --- | --- | --- |
| Wiki Setup / Pass 2 | ✅ Yes (initial index) | ✅ Yes (initial IDs) | ✅ |
| Pass 2.1 | ✅ Yes (retired QD-ALL) | ✅ Yes (cleanup) | ✅ |
| Pass 3 (CC) | ✅ Yes (added MG/VLAQ/VLWQ aggregates) | ❌ No | ✅ |
| Pass 4 (CC) | ✅ Yes (8 VLAQ IDs) | ✅ Yes (VLAQ-INAZUMA, SUMERU, etc.) | ✅ |
| Pass 4.1 (CC) | ✅ Yes (status updates) | ❌ No | ✅ |
| Pass 5 (CC) | ✅ Yes (upgraded 3 IDs, added 2) | ✅ Yes (VLAQ-SUMERU-002, VLAQ-FONTAINE-003) | ✅ |
| Pass 6 (CC) | ❌ No | ❌ No | ✅ |
| Pass 7 | ❌ No | ❌ No | ✅ |
| Pass 8 | ✅ Yes (CS-KAEYA-001) | ✅ Yes (CS-KAEYA-001) | ✅ |
| Pass 8.1 | ✅ Yes (status update) | ❌ No | ✅ |
| Pass 9 | ❌ No | ❌ No | ✅ |
| Pass 10 | ❌ No | ❌ No | ✅ |
| Pass 11 | ❌ No | ❌ No | ✅ |
| Pass 12 | ❌ No | ❌ No | ✅ |
| NK-01 | ❌ No | ❌ No | ✅ |
| NK-02 | ✅ Yes (7 IDs) | ✅ Yes (BK-0005–0009, AQ-NK/WQ-NK IDs) | ✅ |
| NK-03 | ❌ No | ❌ No | ✅ |
| NK-04 | ❌ No | ❌ No | ✅ |
| NK-05 | ❌ No | ❌ No | ✅ |
| NK-05.1 | ❌ No | ❌ No | ✅ |
| NK-05.1a | ❌ No | ❌ No | ✅ |
| NK-06 | ✅ Yes (7 AQ-NK-ACT IDs) | ✅ Yes (AQ-NK-ACT2–8) | ✅ |
| NK-06.1 | ❌ No | ❌ No | ✅ |
| NK-07 | ❌ No | ❌ No | ✅ |
| **Pass 13–18.2** | **❌ Not modified** | **❌ Not created** | **✅ Fully compliant** |

---

## 6. Source Doctrine (restated and verified)

The following principles are documented and have been verified as preserved:

| Principle | Documented In | Verified? |
| --- | --- | --- |
| Không source thì không canon | README.md, SCHEMA.md | ✅ |
| Folder path is not proof | CON-0010 (contradiction-register.md) | ✅ |
| Empty shell is not source | CON-0006, SOURCE_ID_RULES.md | ✅ |
| External/API is not canon unless locally ingested + provenance-mapped | EXTERNAL_SOURCE_POLICY.md | ✅ |
| Theory/headcanon/leak is not canon | headcanon-fanon-policy.md | ✅ |
| character_intelligence is not primary source | SCHEMA.md, source-map.md | ✅ |
| STRONGLY IMPLIED cannot be based on character_intelligence alone | SCHEMA.md | ✅ |
| Global wiki must not contain fanfic plot/outline/chapter plan | README.md | ✅ |
| High-risk claims guarded until provenance + claim mapping + review | unverified-lore-register.md, NK-07 | ✅ |
| MUST NOT create source IDs for files that don't exist | SOURCE_ID_RULES.md | ✅ |
| MUST NOT use folder-level IDs as proof of file-level content | SOURCE_ID_RULES.md | ✅ |

---

## 7. Governance Risks

1. **NK-05 initially misclassified official quest pages as fanon** — caught and patched by NK-05.1, but the incident shows the workspace had no quick way to distinguish official Fandom main wiki from Fanon wiki pages.
2. **Pass 18.2 had to fix Capitano wrongly in scope** — a scope enforcement gap in the Natlan batch.
3. **source-index.md has NOT been updated since NK-06 (June 21)** — the 7 AQ-NK-ACT* IDs are the most recent additions. No character foundation passes (13–18.2) touched source-index, which is by design.
4. **CS source IDs are underrepresented** — only CS-KAEYA-001 exists; all other playable characters have no character-story source IDs.
