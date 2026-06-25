# Pass 25.5 — Next Actions

## Recommended Next Pass

**Pass 25.6 — Structured Reference Controlled Import Plan**

This is the recommended next step on the full path. It designs the import process before any data enters the repository, ensuring:

- Size/scope is assessed per source
- Storage format is decided (raw vs processed)
- git-lfs or separate repo decision is made
- Provenance metadata format is defined
- Import scripts are specified (read-only)
- HoYoWiki API stability is assessed

---

## Alternative: Fast Path

**Pass 25.7 — Alias / Terminology Index Build**

Acceptable only if the human chooses to skip detailed import planning. This goes directly to building the alias index from genshin-langdata.

Conditions for fast path:

- Human explicitly approves
- genshin-langdata size is acceptable without formal assessment
- Import is limited to alias/terminology data only
- Graph import deferred to Pass 25.8

---

## What Must NOT Be Skipped

Regardless of path choice:

- **Pass 25.5** (this pass) — policy must exist before any import
- **Pass 25.9** — validators must exist before claim mapping (Pass 26)

---

## Preserved Counts (from prior passes)

These counts must be preserved through all future passes:

### Pass 22

- Total claim clusters: 32
- evidence_packet_created: 15
- still_blocked: 9

### Pass 23+24

- Pass 23 candidate rows: 97
- Pass 24 detailed inventory rows: 73
- Pass 24 source package rows: 29
- Source gaps: 58

---

## Decision Required from Human

Choose one:

1. **Full path** → Proceed to Pass 25.6 (Structured Reference Controlled Import Plan)
2. **Fast path** → Proceed to Pass 25.7 (Alias / Terminology Index Build)

Pass 25.5 does not prescribe which path. Human decides.
