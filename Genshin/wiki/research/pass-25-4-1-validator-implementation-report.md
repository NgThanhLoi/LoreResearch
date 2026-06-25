# Pass 25.4.1 — Validator Implementation Report

> **Date:** 2026-06-25
> **Type:** Implementation detail

## Validators Created

### 1. check_source_index.py

- **Input:** `wiki/sources/source-index.md`
- **Checks:**
  - Duplicate Source IDs across all table sections
  - File-level paths that don't exist on disk
  - Intentional missing/retired entries (allowed, counted)
  - Stale paths in the active-path watchlist
- **Exit logic:** Fails on duplicate IDs or stale active paths. Missing file paths are informational only (many sources not yet ingested).
- **Key decision:** Missing paths are NOT hard failures because source-index contains entries for future/planned ingestion targets.

### 2. check_current_state.py

- **Input:** `wiki/research/project-state-*.md`, `wiki/research/pass-25-1-current-source-of-truth.md`
- **Checks:**
  - Required current-state files exist
  - All project-state-* files have supersession banners
  - No stale "Pass NN NOT STARTED" phrases in active (non-superseded) files
- **Exit logic:** Fails if required files missing or project-state files lack supersession markers.

### 3. check_claim_map_schema.py

- **Input:** `--file <path>` argument (no default target)
- **Checks:**
  - Markdown table with all 10 required columns
  - support_status values match allowed enum
- **Exit logic:** No-op if no file specified (exit 0). Fails if file has no valid claim-map table or invalid values.
- **Design note:** Built for Pass 26 outputs. Currently no-op since no claim-map files exist yet.

### 4. check_pass_counts.py

- **Input:** `wiki/log.md`, Pass 22 and Pass 23+24 report files
- **Checks:**
  - Pass 22: 32 total / 15 evidence_packet_created / 9 still_blocked
  - Pass 23+24: 97 candidates / 73 inventory rows / 29 packages / 58 gaps
- **Exit logic:** Fails if any expected count not found in any search file.
- **Key decision:** Context-aware matching (looks for count + label, not bare numbers).

## Design Principles Applied

1. **Repo root derived dynamically** from script location (never hardcoded)
2. **Read-only** — no file writes, no git operations
3. **Offline** — no network access
4. **stdlib-only** — Python 3.8+ compatible, no pip dependencies
5. **Clear exit codes** — 0 = pass, 1 = fail
6. **Human-readable output** — summary tables, labeled sections
7. **Windows-safe** — no Unicode symbols in print output (cp1252 compatible)
