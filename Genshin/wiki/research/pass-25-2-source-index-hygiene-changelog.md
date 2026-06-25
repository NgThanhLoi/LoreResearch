# Pass 25.2 — Source-Index Hygiene Changelog

## Date

2026-06-25

---

## Changes Applied

### 1. TP-0002 Path Correction

| Field | Before | After |
|---|---|---|
| Path | `topics/nod-krai/Nod_Krai.md` (hoặc tương đương) | `topics/nod-krai/story_summary.md` |
| Notes | Chứa cốt truyện lý thuyết chưa có thoại thô. | Chứa cốt truyện lý thuyết chưa có thoại thô. Prior stale path `topics/nod-krai/Nod_Krai.md` was nonexistent; replaced with verified local file in Pass 25.2. |

**Justification:**
- `topics/nod-krai/Nod_Krai.md` does not exist and never existed in the workspace.
- `topics/nod-krai/story_summary.md` exists and its header reads "Tóm Tắt Cốt Truyện Nod-Krai (Story Summary & Archon Quests)" — a direct semantic match to the TP-0002 entry description "Tóm tắt Acts II-VII, version 6.1-6.7".
- No new source ID was created.
- No reliability was upgraded (remains Low/Medium).
- No source type was changed (remains Topic).

---

## Changes NOT Applied

### QD-ALL — sources/quest_dialogue/

- Status: `legacy_retired / not_source`
- Folder does not exist — confirmed.
- Entry already correctly marked in source-index. No patch needed.

### OF-ALL — sources/official/

- Status: `Unusable`
- Folder does not exist — confirmed.
- Entry already correctly marked in source-index. No patch needed.

---

## Scope Assertion

- Only 1 existing entry modified (TP-0002 path field + notes field).
- 0 new source IDs created.
- 0 entries deleted.
- 0 reliability levels changed.
- 0 source types changed.
- File modified: `wiki/sources/source-index.md` (line 54 only).
