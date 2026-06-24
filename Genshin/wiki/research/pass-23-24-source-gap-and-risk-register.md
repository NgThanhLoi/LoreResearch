# Pass 23+24 — Source Gap and Risk Register

## Purpose

Combined register of source gaps, risks, and boundary concerns identified across both lanes of Pass 23+24.

---

## 1. Official Profile Gaps (Lane A — Pass 23)

| Character | Gap type | Severity | Impact | Notes |
|---|---|---|---|---|
| Capitano | No voice-line file, no official profile | CRITICAL | All 5 claim clusters fully blocked | Cannot proceed without ingestion |
| Columbina | No voice-line file | HIGH | Cannot characterize beyond wiki stub | Wiki page exists but empty of sourced claims |
| Sandrone | No voice-line file | HIGH | Cannot characterize beyond wiki stub | Wiki page exists but empty of sourced claims |
| Dottore | No dedicated voice-line file | HIGH | Voice-line personality evidence unavailable | Quest dialogue exists but no profile-style source |
| Pierro | No voice-line file, no wiki page | HIGH | Cannot source any claims | Completely absent from local sources |
| Skirk | No voice-line file | HIGH | Only reachable via Tartaglia voice-lines | Wiki page exists; only indirect references available |
| Varka | No voice-line file | HIGH | Cannot source any claims | Wiki page exists but no source backing |
| Rhinedottir/Gold | No page, no voice-line | HIGH | Only reachable via artifact/book/Albedo connections | Entirely absent as direct source |
| Alice | No page, no voice-line | HIGH | Only reachable via Klee/book connections | Entirely absent as direct source |
| Dainsleif | No voice-line file | MEDIUM | Quest dialogue exists; voice-line gap less critical | Lower priority — quest evidence sufficient for now |
| Nicole | No voice-line file | LOW | New character; wiki page exists | May become available in future patches |

---

## 2. Voice-Line Gaps (Lane A — Pass 23)

| Gap | Severity | Impact | Notes |
|---|---|---|---|
| No Lumine-specific voice-line verification | MEDIUM | Cannot confirm Lumine mirror of Aether deferred items | Lumine.md exists but deferred items reference Aether.md only |
| Voice-line vs quest-dialogue boundary unclear for some files | MEDIUM | Risk of mixing evidence tiers | Some voice-line files contain quest-context references |
| No standardized extraction method for voice-line claims | MEDIUM | Future ingestion may be inconsistent | Pass 23.1 should define method |
| Character voice-line files not formally indexed in source-index | LOW | File existence ≠ indexed source | All 87 files exist but none have source IDs |

---

## 3. Artifact / Book / Event Gaps (Lane B — Pass 24)

| Gap | Severity | Impact | Notes |
|---|---|---|---|
| Event source folder missing | HIGH | Zero local event lore sources | sources/event/ and sources/events/ do not exist |
| Official source folder missing | HIGH | Zero official announcement/profile sources | sources/official/ does not exist |
| Nod-Krai quest transcripts absent | HIGH | 7 provenance pointers with no extractable text | Only metadata; blocks Dottore/Dainsleif/Skirk/Abyss Sibling claims |
| Artifact files not content-inspected | MEDIUM | Classification based on set name only; actual content unknown | Requires Pass 24.1 controlled read |
| Book files not content-inspected | MEDIUM | Classification based on title only; actual content unknown | Requires Pass 24.1 controlled read |
| Weapon story files not content-inspected | MEDIUM | 176+ files classified by title only | Bulk inspection needed in future pass |
| Manga duplicate files ({{tt}} naming) | LOW | 4 files are duplicates with encoding artifacts | Should be deduplicated in Pass 25 |
| Natlan quest content sparse | MEDIUM | Only 1 Natlan chapter ingested | Capitano, Mavuika mechanics claims blocked |

---

## 4. Event Folder Availability

| Expected path | Status | Impact |
|---|---|---|
| sources/event/ | folder_missing | Cannot source event-exclusive lore (Unreconciled Stars, Shadows Amidst Snowstorms, Summertime Odyssey, etc.) |
| sources/events/ | folder_missing | Alternative path also absent |
| sources/official/ | folder_missing | Cannot source official character profiles, developer notes, special programs |

**Recommendation**: Creating these folders is out of scope for this pass. Future Pass 24.1 should define ingestion criteria if human approves.

---

## 5. High-Risk Character/Source Gaps

| Character/Topic | Available local sources | Critical gap | Resolution path |
|---|---|---|---|
| Dottore | Quest dialogue (5 packets), manga ch.11 | No voice-line; NK-07 blocked | Pass 23.1 profile ingestion + NK transcript authorization |
| Columbina | Wiki stub only | No source of any kind | Requires profile ingestion authorization |
| Sandrone | Wiki stub only | No source of any kind | Requires profile ingestion authorization |
| Capitano | Nothing | Complete absence | Requires Natlan quest + profile ingestion |
| Pierro | Possible artifact reference (unverified) | No direct source | Requires profile ingestion + artifact content inspection |
| Rhinedottir | Possible book/artifact references (unverified) | No direct source | Requires content inspection of candidate books/artifacts |
| Skirk | Tartaglia voice-line (indirect) | No direct source | Requires NK transcript + voice-line analysis |
| Abyss Sibling | Quest dialogue (3 packets) | NK presence blocked | NK transcript authorization |
| Aether/Lumine | Quest dialogue + voice-line (deferred) | Descender status ambiguous | Human review + claim mapping |
| Paimon | Partial quest evidence only | Identity theories fully blocked | Governance decision required |
| Descender concept | Perinheri book + ambiguous quest evidence | Definition uncertain | Human review + cross-source mapping |
| Irminsul | Gilded Dreams artifact + quest evidence | Mechanics unclear from fragments | Content inspection + claim mapping |
| Moon/Frostmoon | 4 candidate sources (artifact, weapon, NK book) | All context_only | Content inspection + NK context |
| Hexenzirkel | Manga ch.15 + Fischl book (tangential) | No direct member sources | Requires profile/voice-line ingestion for Alice/Mona |
| Nod-Krai | 9 book texts + 7 provenance pointers | Quest transcripts absent | NK transcript ingestion authorization |
| Natlan mechanics | 1 quest chapter + 1 artifact set | Extremely sparse | Natlan quest ingestion required |
| Khaenri'ah | 2 books + 2 artifacts + Kaeya story + quest evidence | Fragmented across source types | Cross-source claim mapping (Pass 26+) |

---

## 6. Stale or Ambiguous Folder Naming Risks

| Issue | Location | Severity | Recommendation |
|---|---|---|---|
| {{tt}} duplicate files | sources/manga_transcripts/ (4 files) | LOW | Deduplicate in Pass 25; determine canonical naming |
| Vietnamese-only file naming | All sources/ folders | LOW | Consistent but may cause lookup confusion for English-first research |
| Nod-Krai books in English while rest is Vietnamese | sources/book_texts/nod-krai/ | LOW | May indicate different ingestion batch; verify completeness |
| `character_stories/` has only 1 file (Kaeya) | sources/character_stories/ | MEDIUM | Either incomplete ingestion or only Kaeya was prioritized |
| `provenance/` contains only NK metadata | sources/provenance/ | LOW | Not a gap per se — provenance folder serves specific function |

---

## 7. Copyright / Excerpt Risks

| Risk | Severity | Mitigation applied | Notes |
|---|---|---|---|
| Voice-line files may contain full transcribed dialogue | MEDIUM | Not inspected content this pass | Pass 23.1 must define excerpt length limits |
| Book text files may contain full book content | MEDIUM | Not inspected content this pass | Copyright compliance requires fair-use evaluation |
| Manga transcripts may contain full script | MEDIUM | Not inspected content this pass | Pass 24.1 must define extraction boundaries |
| Weapon story files may contain full story text | LOW | Standard game-data extraction | Short texts — fair-use risk lower |
| NK book texts in English suggest wiki/fan translation source | MEDIUM | Source provenance unclear | Must verify origin before claim mapping |

---

## 8. Non-Quest Context vs Quest Dialogue Boundary Risks

| Risk | Severity | Current status | Mitigation |
|---|---|---|---|
| Voice-line files confused with quest dialogue evidence | HIGH | Pass 22 correctly deferred 2 items | Lane separation enforced; deferred items tracked in pass-23-deferred-context-map.md |
| Character self-report treated as objective truth | MEDIUM | Flagged in Pass 22 risk report | All voice-line evidence labeled "non_quest_context" — lower reliability tier |
| Archon quest voice-lines already counted as quest dialogue (correct) | LOW | No risk — correctly classified | sources/voice_lines/archon_quests/ IS quest dialogue |
| World quest voice-lines edge case | LOW | 2 world quest files exist; treated as quest dialogue in Pass 22 | Consistent with quest-dialogue tier |
| Paimon observations in voice-lines vs quest narration | MEDIUM | Pass 22 labeled Paimon as secondary observer | Must maintain this distinction in future passes |

---

## Summary Counts

| Category | Count |
|---|---|
| Official profile gaps (Lane A) | 11 |
| Voice-line process gaps (Lane A) | 4 |
| Artifact/book/event gaps (Lane B) | 8 |
| Missing folders | 3 |
| High-risk character gaps | 17 |
| Naming/structural risks | 5 |
| Copyright risks | 5 |
| Boundary risks | 5 |
| **Total source gaps** | **58** |
