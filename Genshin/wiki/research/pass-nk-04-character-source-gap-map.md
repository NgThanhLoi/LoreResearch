# Nod-Krai Character Source Gap Map (Pass NK-04)

This gap map evaluates the source coverage and missing information for characters associated with the Nod-Krai region, defining what areas must be resolved before any future upgrades.

---

## 1. Purpose & Coverage Statuses

### Purpose
To prevent the creation of unverified character content by detailing exactly what sources are missing and identifying high-risk claims that must remain blocked.

### Status Definitions
- `found`: Verified primary sources are physically present in the workspace.
- `partial`: Some verified source data exists, but is limited in detail.
- `summary_only`: Information is derived only from quest summaries/provenance candidates, not raw dialogue.
- `source_missing`: No physical source files are present in the workspace.
- `blocked`: Strictly quarantined due to high lore risk or complete lack of sources.
- `not_applicable`: Category does not apply to the character.

---

## 2. Character Source Gap Map

| Character | Voice Lines | Profile / Story | Raw Quest Dialogue | Relationship Evidence | Faction Role Evidence | Power / Mechanic Evidence | Blocked High-Risk Claims |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| **Lauma** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `partial` (BK-0003, BK-0009) | `partial` (BK-0003, AQ-NK-0001) | `blocked` (Columbina = Kuutar identity link is guarded/theory only) |
| **Flins** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `partial` (BK-0008, AQ-NK-0001) | `partial` (BK-0008 Oath Lanterns) | `not_applicable` |
| **Aino** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `summary_only` | `not_applicable` |
| **Ineffa** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `summary_only` | `summary_only` | `not_applicable` |
| **Vilemina** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `summary_only` | `summary_only` (cutting antlers) | `not_applicable` |
| **Dhabit** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `not_applicable` |
| **Demyan** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `not_applicable` |
| **Nicole** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `partial` (Hexenzirkel) | `not_applicable` | `blocked` (all dialogue/actions beyond WQ-NK-0001 are blocked) |
| **Varka** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `partial` (Favonius) | `not_applicable` | `blocked` (speculation on Varka's actions/battles is blocked) |
| **Columbina** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `partial` (Harbinger) | `not_applicable` | `blocked` (Columbina = Kuutar identity link is strictly guarded/theory) |
| **Sandrone** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `partial` (Harbinger) | `summary_only` (seeking Moon Marrow) | `blocked` (Sandrone = Rotwang link is strictly blocked/theory) |
| **Dottore** | `source_missing` | `source_missing` | `source_missing` | `source_missing` | `source_missing` | `source_missing` | `blocked` (Acts II-VII events, False Moon god, Irminsul hack strictly blocked) |
| **Skirk** | `source_missing` | `source_missing` | `source_missing` | `source_missing` | `source_missing` | `source_missing` | `blocked` (Skirk / Third Descender claims strictly blocked) |
| **Traveler** | `source_missing` (NK-specific) | `source_missing` (NK-specific) | `source_missing` | `summary_only` | `not_applicable` | `partial` (holding Moon Marrow) | `blocked` (Acts II-VII events are blocked) |
| **Paimon** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `blocked` (Acts II-VII events are blocked) |
| **Traveler's Sibling** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `blocked` (Acts II-VII events are blocked) |
| **Dori** | `source_missing` (NK-specific) | `source_missing` (NK-specific) | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `not_applicable` |
| **Oiva** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `not_applicable` |
| **Ognjen** | `source_missing` | `source_missing` | `source_missing` | `summary_only` | `not_applicable` | `not_applicable` | `not_applicable` |

---

## 3. Gap Analysis Summary

1. **Complete Lack of Voice and Profile Sources**: For all local Nod-Krai native characters (Lauma, Flins, Aino, Ineffa, Vilemina, Dhabit, Demyan), there are zero physical voice line or character story profile files in the workspace. These characters are currently represented only via macro quest summaries.
2. **Quest Summary vs. Raw Dialogue Gap**: The quest summary `AQ-NK-0001` serves only as a record of presence. Because raw dialog transcripts for Snezhnaya Archon Quest Act I are missing, we cannot verify voice styles, dialogue lines, or character relationships.
3. **Severe Harbingers Gaps**:
   - **Columbina**: The local pre-history book `BK-0003` verifies the Moon Maiden legend (Kuutar), but we lack any direct source validating that Columbina is indeed Kuutar.
   - **Sandrone**: Her role in Act I is summary-only. We lack any primary source linking her to Rotwang or Khaenri'ah.
   - **Dottore**: Completely `source_missing` for all Nod-Krai and Snezhnaya events. All claims remain strictly blocked.
4. **Skirk / Descender Gaps**: Completely `source_missing`. No primary sources exist in the workspace to connect Skirk to the Third Descender or Nod-Krai.
