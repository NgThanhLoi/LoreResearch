# Nod-Krai Next Actions

This document establishes the roadmap for the Nod-Krai pipeline. It outlines the next recommended steps, keeping the focus strictly on **sources and governance first** before any character foundation or region pages are upgraded.

---

## Recommended Next Pass

We recommend proceeding to **Pass NK-02 — Nod-Krai Local Source / Provenance Index Build**. 

### Rationale
Although this pass (Pass NK-01) successfully identified 9 local source candidate files, they have not yet been formally ingested or registered in the central `source-index.md`. We must build a clean provenance record and file-level registry for these candidates before using them to verify claims.

---

## Roadmap Options

### Option A: Pass NK-02 — Nod-Krai Local Source / Provenance Index Build (Recommended)
- **Objective**: Formally register the newly discovered local source candidate files in `wiki/sources/source-index.md` and build their file-level claim templates (mapping character names, factions, and terms).
- **Scope**:
  - Assign and formalize proposed Source IDs for the 7 verified local books (e.g., `proposed_BK-0005` to `proposed_BK-0009` etc.).
  - Register proposed quest IDs `proposed_AQ-NK-0001` ( Snowy Tides ) and `proposed_WQ-NK-0001` ( Beyond Silver ) with proper quest prefixes.
  - Optionally implement Fandom API reference hardening for any missing sub-claims (guarded; keep external API work separated if possible).
  - Quarantine the misplaced Natlan Act V file (`Incandescent Ode of Resurrection.md`), but do not move it immediately without a formal data-cleaning pass.
- **Pre-requisite**: Completion of Pass NK-01.

### Option B: Pass NK-03 — Nod-Krai Region / Faction Governance Notes
- **Objective**: Create the regional governance and power system notes for Nod-Krai, codifying the mechanics of Kuuvahki, Varcolac shapeshifting, and the Fae calendar cycle.
- **Scope**:
  - Build the region profile using the new regional template.
  - Write detailed entries for Frostmoon Scions, Lightkeepers, and the Voynich Guild.
- **Pre-requisite**: Registration of source IDs (Pass NK-02).

### Option C: Pass NK-04 — Nod-Krai Character Inventory / Tier / Source Gap Map
- **Objective**: Normalise the Nod-Krai native characters (Lauma, Flins, Aino, Ineffa) against the character inventory list, assessing their voice guides, OOC risks, and target levels.
- **Scope**:
  - Evaluate readiness for Level 2 foundation pages.
  - Create template shells for approved characters using the Character Template v2 format.
- **Pre-requisite**: Faction/region governance confirmation (Pass NK-03).

---

## Strict Behavioral Guidelines for Future Passes

1. **No source = no canon**: Do not upgrade any character or regional claim to canon without a local/provenance-backed source record in `sources/`.
2. **Guarded handling for Acts II–VII**: All material related to Dottore's Irminsul hack, Columbina's ascension, or False Sky mechanics must remain flagged as `UNVERIFIED` and restricted.
3. **No Character Pages Yet**: Do not attempt to write or edit character pages for Aino, Flins, Lauma, Columbina, Sandrone, or Skirk until Pass NK-02 and Pass NK-03 have successfully established their source base and faction governance notes.
