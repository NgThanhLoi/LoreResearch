# Pass 25.3 — Current vs Legacy Layer Map

**Date:** 2026-06-25  
**Type:** Reference map  
**Scope:** All top-level paths classified by role, currency, and allowed use

---

## Layer Map

| Path | Role | Current or Legacy | Allowed Use | Disallowed Use | Risk Level | Notes |
|------|------|-------------------|-------------|----------------|------------|-------|
| wiki/ | LLM knowledge base root | **CURRENT** | Primary reference for all governance | — | low | Authoritative layer |
| wiki/research/ | Audit trail and pass reports | **CURRENT** | Status tracking, findings reference | Treat pre-25.1 project-state as current | low | Pass 25+ reports are SOT |
| wiki/entities/ | 118 audited entity pages | **CURRENT** | Canonical entity profiles for writing | Cite without checking source_status labels | low | Source-backed claims only |
| wiki/synthesis/ | Lore OS policies and rules | **CURRENT** | Canon, power, timeline, style rules | — | low | Core governance |
| wiki/sources/ | Source registry (source-index.md) | **CURRENT** | Source ID tracking, path verification | Modify without pass authorization | low | 54 IDs tracked |
| wiki/workflows/ | Operation procedures | **CURRENT** | Agent guidance for operations | — | low | — |
| wiki/projects/ | Future project templates | **CURRENT** | Project configuration | — | low | Template only |
| sources/ | Canonical evidence files | **CURRENT** | Primary source for claim verification | Folder path alone as proof | medium | 620+ files, encoding risks |
| entities/ | 649 raw entity profiles | **MIXED** | Indirect guidance, cross-reference | Cite as primary source | medium | Not audited to wiki standard |
| entities/character_intelligence/ | AI-generated character analysis | **MIXED** | Reference for audit identification | Base STRONGLY IMPLIED on this alone | high | 109 files, not primary source |
| quests/ | Quest skeleton outlines | **LEGACY** | Historical structure reference only | Treat as evidence of dialogue/lore | medium | 28 files, absolute links |
| topics/ | Topic/lore discussions | **MIXED** | Reference if cited by current reports | Treat as current without validation | medium | Partially active |
| foundation/ | Early governance templates | **LEGACY/HISTORICAL** | Archaeological reference only | Use for current planning | low | Superseded by wiki/synthesis |
| planning/ | Early project planning | **LEGACY/HISTORICAL** | Archaeological reference only | Use for current planning | low | Superseded by wiki/research |
| _Index.md | Auto-generated master index | **LEGACY/GENERATED** | None — scan target only | Treat as source of truth | low | 705 absolute links, 709 mojibake |
| _data/ | Metadata storage | **INFRASTRUCTURE** | Internal tooling | — | low | Not lore content |
| _tools/ | Scripts and generators | **INFRASTRUCTURE** | Development tooling | — | low | Not lore content |
| scratch/ | Temporary work | **ARCHIVED** | None | — | low | No governance value |
| CHANGE_LOG.md | Historical changelog | **LEGACY** | Historical reference | Use as current status | low | — |
| PATCH_VALIDATION_REPORT.md | Legacy patch report | **LEGACY** | Historical reference | — | low | — |
| RELIABILITY_SUMMARY.md | Legacy reliability summary | **LEGACY** | Historical reference | — | low | — |
| REMAINING_OPEN_ISSUES.md | Legacy issues register | **LEGACY** | Historical reference | — | low | — |

---

## Decision Rules for Future Agents

1. **If a file is in wiki/ and matches pass-25* or later:** Treat as current authority.
2. **If a file is in wiki/research/project-state-*:** Check Pass 25.1 supersession map — most are superseded.
3. **If a file is in entities/character_intelligence/:** Use as lead for investigation only. Never cite as source.
4. **If a file is in foundation/ or planning/:** Historical. Do not use for current planning.
5. **If a file is in quests/:** Not evidence. Structure reference only.
6. **If a file is in sources/:** Valid evidence — but verify file exists and content is not corrupted.
7. **If _Index.md is referenced:** Ignore for governance purposes. It is a legacy scan artifact.

---

## Layer Diagram

```
┌─────────────────────────────────────────────────────────┐
│                    CURRENT AUTHORITY                      │
│  wiki/research/pass-25*    wiki/log.md (recent entries)  │
│  wiki/entities/    wiki/synthesis/    wiki/sources/       │
└─────────────────────────────────────────────────────────┘
                           │
                    ┌──────┴──────┐
                    ▼             ▼
┌──────────────────────┐  ┌──────────────────────┐
│   CURRENT SOURCE     │  │   MIXED / RAW        │
│   sources/**         │  │   entities/**        │
│   (evidence files)   │  │   topics/**          │
└──────────────────────┘  └──────────────────────┘
                           │
                           ▼
┌─────────────────────────────────────────────────────────┐
│                 LEGACY / HISTORICAL                       │
│  foundation/   planning/   _Index.md   quests/           │
│  CHANGE_LOG.md   PATCH_VALIDATION_REPORT.md              │
│  RELIABILITY_SUMMARY.md   REMAINING_OPEN_ISSUES.md       │
└─────────────────────────────────────────────────────────┘
                           │
                           ▼
┌─────────────────────────────────────────────────────────┐
│                  INFRASTRUCTURE                           │
│  _data/   _tools/   scratch/                             │
└─────────────────────────────────────────────────────────┘
```
