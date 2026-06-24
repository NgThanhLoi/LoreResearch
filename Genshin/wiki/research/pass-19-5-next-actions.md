# Pass 19.5 — Next Actions

## Overview

Concrete next-pass recommendations based on the source-missing resolution plan and priority ingestion queue.

---

## Recommended Next Passes

### Pass 20 — High-Risk Source Package Feasibility / Provenance Batch A

- **Purpose:** Assess source package feasibility and ingest available provenance for the highest-risk blocked characters whose unresolved claims threaten global wiki canon integrity.
- **Candidate group:** Dottore, Sandrone, Pierro, Rhinedottir (non-playable, quest_dialogue/official_profile/human_review route); Aether, Lumine (playable, character_story_provenance + claim_mapping route)
- **Why first:** These characters sit at critical lore intersections (Harbinger hierarchy, Khaenri'ah timeline, Descender mechanics, Moon/False Sky). Wrong claims about them propagate to dozens of downstream pages. Dottore and Sandrone are P0 blocking global safety; the others are P1 with guarded evidence that needs source resolution.
- **Route per candidate:**
  - Dottore: quest_dialogue_provenance + official_profile_ingestion + human_review (non-playable; no character story file expected)
  - Sandrone: quest_dialogue_provenance + official_profile_ingestion + human_review (non-playable; no character story file expected)
  - Pierro: quest_dialogue_provenance + official_profile_ingestion (non-playable; Khaenri'ah sage)
  - Rhinedottir: quest_dialogue_provenance + artifact_book_provenance (non-playable; lore primarily in quest dialogue and artifact/book descriptions)
  - Aether: character_story_provenance + claim_mapping (playable; voice lines exist, character story needed)
  - Lumine: character_story_provenance + claim_mapping (playable; voice lines exist, character story needed)
- **Prerequisites:** Quest dialogue extraction capability for non-playable characters; official profile ingestion workflow; source ID registration; human reviewer availability for Dottore and Sandrone
- **Output:** Quest transcript / official profile files for non-playable candidates; `sources/character_stories/` files for Aether/Lumine; source-index.md updates; page claim upgrades where provenance confirms
- **Guardrails:** Human review required for Dottore and Sandrone before any claim upgrade. NK-07 guarded evidence remains guarded until claim mapping (Pass 26). Rhinedottir Khaenri'ah claims require direct narrator dialogue, not inference chains.

---

### Pass 21 — Character Story Provenance Batch B (Major / Playable)

- **Purpose:** Extract and ingest character story provenance for major playable characters and remaining Harbingers with high fan visibility.
- **Candidate group:** Arlecchino, Tartaglia, Capitano, Alice, Paimon, Pantalone, Pulcinella (7 characters)
- **Why second:** These are either playable characters with existing Level 2 pages that need backstory provenance, or Harbingers with high cross-reference density. Lower global-safety risk than Pass 20 but significant page quality impact.
- **Prerequisites:** Pass 20 methodology proven; source ID registration workflow established
- **Output:** `sources/character_stories/` files; source-index.md updates; backstory section upgrades
- **Guardrails:** Paimon identity claims remain theory-level regardless of story content. Capitano Natlan claims require Natlan mechanics guardrail compliance.

---

### Pass 22 — Quest Dialogue Provenance Batch A

- **Purpose:** Extract and ingest quest dialogue transcripts for characters whose primary source is quest appearances rather than character stories.
- **Candidate group:** Skirk, Abyss Sibling, Dainsleif, Tsaritsa, Nefer (5 characters)
- **Why this timing:** These characters do not have character stories (non-playable or lore-only) and can only be sourced from quest dialogue. Depends on quest transcript extraction infrastructure which may need to be built during or before this pass.
- **Prerequisites:** Quest transcript extraction capability; `sources/archon_quests/` and `sources/world_quests/` folder creation
- **Output:** Quest transcript files; source-index.md updates; governance page upgrades where dialogue confirms claims
- **Guardrails:** Skirk Descender claim remains blocked unless direct narrator dialogue found. Tsaritsa motivation claims require Archon Quest provenance, not indirect references. Abyss Sibling phantom vs real distinction must be preserved.

---

### Pass 23 — Official Profile / Voice Line Ingestion

- **Purpose:** Ingest voice line files and official profiles for non-playable characters who have no local source, and resolve the Natlan missing-voice-file characters.
- **Candidate group:** Columbina, Varka, Nicole, Ifa, Iansan, Varesa (6 characters)
- **Why this timing:** Depends on either: (a) discovering that voice line files for non-playable characters can be obtained from official sources, or (b) using existing playable voice files for Ifa/Iansan/Varesa once they become available locally. Varka/Nicole/Columbina require external source policy Tier A ingestion.
- **Prerequisites:** External source ingestion policy compliance; Tier A source validation
- **Output:** Voice line files or official profile files; source-index.md updates; governance page personality/relationship upgrades
- **Guardrails:** Columbina Kuutar evidence stays guarded until Pass 26 claim mapping. Nicole Hexenzirkel claims require explicit narrator dialogue, not inference. Natlan mechanics guardrails apply to Ifa/Iansan/Varesa.

---

### Pass 24 — Artifact / Book / Manga Provenance

- **Purpose:** Build provenance infrastructure for artifact descriptions, in-game books, and manga sources that support claims across multiple characters.
- **Candidate group:** Systemic — affects characters whose backstory/lore claims rely on artifact sets, readable books, or manga panels (e.g., Rhinedottir/Durin via artifact lore, Kaeya/Diluc via manga)
- **Why later:** Lower priority than direct character sources; supports depth rather than unblocking. No individual characters are solely blocked by this gap.
- **Prerequisites:** `sources/books/`, `sources/artifacts/`, `sources/manga/` folder creation; source ID schema for these types
- **Output:** Source files; source-index.md updates; supplementary provenance links on existing pages
- **Guardrails:** Artifact lore is narrator-authored but context-dependent; claims require careful framing. Manga canonicity must follow external source policy.

---

### Pass 25 — Dedup and Page Status Cleanup

- **Purpose:** Post-ingestion cleanup pass to reconcile page statuses, merge duplicate identity entries, and update character-inventory.md with resolved statuses.
- **Candidate group:** All characters that received source upgrades in Passes 20–24
- **Why after ingestion:** Cannot clean up statuses until sources are actually ingested and claims are provisionally mapped.
- **Prerequisites:** Passes 20–24 completed (or as many as feasible)
- **Output:** Updated character-inventory.md; resolved status labels; merged duplicate entries; updated character-audit-backlog.md
- **Guardrails:** Do not downgrade any status that was correctly blocked. Do not merge pages without confirming identity equivalence from primary sources.

---

### Pass 26+ — Priority Claim Mapping A

- **Purpose:** Perform systematic claim-to-source mapping for characters with guarded evidence that needs formal resolution (evidence_found_guarded → CANON or THEORY).
- **Candidate group:** Columbina (Kuutar link), Aether (Moon Marrow), Lumine (Moon Marrow), Dottore (False Moon, Irminsul)
- **Why deferred:** Claim mapping requires completed source ingestion first. Cannot map claims to sources that don't exist in the index yet. This is the final resolution step.
- **Prerequisites:** Passes 20–23 completed; relevant source files ingested and indexed
- **Output:** Claim-level mappings (CLAIM-ID → SOURCE-ID:line); reliability label upgrades or confirmations; updated contradiction-register.md if conflicts found
- **Guardrails:** Human review gate for P0 characters (Dottore, Sandrone). NK-07 evidence upgrades require narrator-safe confirmation, not just supporting evidence. Columbina Kuutar link requires direct identity statement, not implication chain.

---

## Nod-Krai Local Characters — Deferred

### Later — Keep Blocked Until Nod-Krai Sources Exist

- **Characters:** Aino, Flins, Illuga, Ineffa, Jahoda, Lauma, Linnea, Nefer, Prune, Zibai, Vilemina, Dhabit, Demyan (13 characters)
- **Reason:** No primary source files exist locally. character_intelligence files are analysis-only and cannot serve as source basis. These characters require Nod-Krai quest transcript extraction which depends on future game content availability.
- **Resolution trigger:** When `sources/archon_quests/` or `sources/world_quests/` contain Nod-Krai dialogue files, these characters can be queued for a foundation batch.
- **Current action:** Keep at source_missing / inventory_only. Do not create pages.

---

## Systemic Character Story Gap — Addressed by Passes 20–21

The ~85 Level 2 pages from Passes 13–18 all lack character story provenance (only Kaeya has a character story file). Passes 20 and 21 address the highest-priority subset. A future "Pass 27+ — Systemic Character Story Ingestion" would cover the remaining ~78 playable characters whose voice line files exist but whose character stories are absent.

This systemic pass is NOT scheduled here because:
1. It requires proven methodology from Passes 20–21
2. The existing Level 2 pages are safe at their current status (no overclaims)
3. The risk of delayed resolution is page-quality gap, not canon-corruption

---

## Immediate Next Step

**Pass 20 — High-Risk Source Package Feasibility / Provenance Batch A** should begin when:
1. Quest dialogue extraction for non-playable characters is feasible (Fandom API transcript method proven in Pass 8)
2. Official profile ingestion workflow from Pass 2 is operational
3. Character story game data extraction is feasible (for Aether/Lumine)
4. Human reviewer availability is confirmed for Dottore and Sandrone

If character story extraction is not yet feasible, an alternative immediate step is:
- **Voice Line Deep-Read Pass** — Use the existing 97 voice line files to perform deep provenance reads for the ~85 Level 2 pages, upgrading personality/relationship claims from source_light to properly mapped. This would be lower-risk and immediately executable.
