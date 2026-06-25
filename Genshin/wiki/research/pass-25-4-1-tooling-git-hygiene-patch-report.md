# Pass 25.4.1 — Tooling / Git Hygiene Patch Report

> **Date:** 2026-06-25
> **Type:** Implementation patch (minimal, safe)
> **Prerequisite:** Pass 25.4 accepted

## Summary

This patch implements the minimal safe tooling and git hygiene improvements identified in Pass 25.4, preparing the repository for Pass 26 claim mapping work.

## Changes Made

### Goal A — Git Hygiene Baseline

| File | Action | Notes |
|------|--------|-------|
| `.gitattributes` | Created | Line-ending rules for md/json/py/js (LF), ps1/bat (CRLF), binary types. `* text=auto` baseline. |
| `.editorconfig` | Created | UTF-8, indent rules, final newline. Matches .gitattributes intent. |
| `.gitignore` | Appended | Added delivery bundles, temp dirs, OS noise, Python cache. Existing rules preserved. |

**Line-ending normalization performed:** NO. Config only — `git add --renormalize .` left for human decision.

### Goal B — Tooling Safety Note

| File | Action | Notes |
|------|--------|-------|
| `_tools/README.md` | Created | Safety classification table, rules for audit passes, validator listing. |

**Hardcoded path mass patch performed:** NO. 32 occurrences documented but not changed.

### Goal C — Read-Only Validators

| File | Action | Notes |
|------|--------|-------|
| `_tools/validators/check_source_index.py` | Created | Validates source-index.md for duplicate IDs, missing paths, stale active paths. |
| `_tools/validators/check_current_state.py` | Created | Validates project-state supersession and current source-of-truth existence. |
| `_tools/validators/check_claim_map_schema.py` | Created | Schema validator for Pass 26 claim-map tables (no-op until files exist). |
| `_tools/validators/check_pass_counts.py` | Created | Verifies preserved audit counts from Pass 22 and Pass 23+24. |

All validators: read-only, offline, stdlib-only Python 3.12 compatible, derive repo root dynamically.

### Goal D — Validator Runs

| Validator | Result | Notes |
|-----------|--------|-------|
| `check_source_index.py` | **PASS** | 54 unique IDs, 0 duplicates, 0 missing paths, 2 intentional retired |
| `check_current_state.py` | **PASS** | All 8 project-state files superseded, required current-state files exist |
| `check_claim_map_schema.py` | **No-op** | No claim-map file exists yet (expected — Pass 26 not started) |
| `check_pass_counts.py` | **PASS** | All 7/7 expected counts found in wiki/log.md |

## Verification Checklist

- [x] .gitattributes added/updated without line-ending normalization
- [x] .editorconfig added/updated
- [x] .gitignore updated without removing existing rules
- [x] _tools/README.md added/updated with safety note
- [x] read-only validators created
- [x] no network/fetch scripts run
- [x] no mutating source-fetch scripts run
- [x] no destructive git commands run
- [x] no line-ending normalization performed
- [x] no hardcoded path mass patch performed
- [x] Pass 22 counts preserved (32/15/9)
- [x] Pass 23+24 counts preserved (97/73/29/58)
- [x] no character pages modified
- [x] no sources/** modified
- [x] no source-index modified
- [x] no new source IDs created
- [x] no external/web/API used
- [x] no source ingestion performed
- [x] no claim mapping performed
- [x] no canon/source-status upgrades
- [x] no fanfic content added
