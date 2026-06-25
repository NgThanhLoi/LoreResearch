# _tools/ — Tooling Safety Note

> **Pass 25.4.1** — Added 2026-06-25

## Overview

This directory contains scripts for fetching, generating, validating, and transforming data in the Genshin LoreResearch wiki.

## Safety classification

| Category | Count | Examples |
|----------|-------|---------|
| Safe / read-only | 6 | `validate_links.ps1`, `list_acts.ps1`, `list_books.ps1`, `list_world_quests.ps1`, `test_diag.ps1`, `test_utf8.json` |
| Probably safe | 4 | `generate_indexes.ps1`, `fix_encoding.ps1`, `fix_intelligence_encoding.py`, `generate_manual_profiles.*` |
| Mutating (writes files) | 7 | `generate_from_json.ps1`, `generate_manual_profiles.py`, `generate_manual_profiles.js`, `generate_manual_profiles.ps1` |
| Network fetchers | 7 | `fetch_artifacts.ps1`, `fetch_characters.ps1`, `fetch_manga.ps1`, `fetch_weapons.ps1`, `fetch_wiki_books.ps1`, `fetch_wiki_quests.ps1`, `fetch_wiki_world_quests.ps1` |

## Rules during audit/stabilization passes

1. **Do not run fetch/mutating scripts** during audit or stabilization passes without explicit human approval.
2. **Prefer read-only validators** (under `validators/`) for Pass 26+ and Pass 31 QA.
3. Many existing tools are **Windows/PowerShell-oriented** and assume specific local paths.
4. **32 hardcoded path occurrences** exist across 15 tool files — future patch needed.
5. Repo root should eventually be **config-derived** rather than hardcoded in each script.

## validators/ subdirectory

Read-only validation scripts created in Pass 25.4.1:

- `check_source_index.py` — validates source-index.md for duplicate IDs and missing paths
- `check_current_state.py` — ensures project-state files are properly superseded
- `check_claim_map_schema.py` — validates claim-map table schema (for Pass 26+)
- `check_pass_counts.py` — verifies preserved audit counts from Pass 22 and Pass 23+24

All validators are **read-only** and **offline** (no network access, no file modification).
