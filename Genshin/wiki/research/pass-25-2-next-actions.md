# Pass 25.2 — Next Actions

## Date

2026-06-25

---

## Immediate Next Pass

### Pass 25.3 — Legacy Link / Encoding / Historical Layer Quarantine Audit

**Scope:**
- Audit all internal wiki links for broken/stale references
- Check file encoding consistency (BOM markers, UTF-8 compliance)
- Identify historical layers that may need quarantine (pre-Pass content, legacy assumptions)
- Quarantine or mark any links that point to removed/renamed files
- Verify cross-references between research reports are consistent

**Preconditions:**
- Pass 25.2 accepted
- No new source ingestion required
- No character page edits required

---

## Deferred Passes (Not Yet Recommended)

| Pass | Title | Blocked By |
|---|---|---|
| Pass 25.4 | Final stabilization sweep (if needed) | Pass 25.3 completion |
| Pass 26 | Priority Claim Mapping Batch A | Pass 25.x stabilization complete + human decision |

---

## Notes

- Pass 26 should NOT proceed until all Pass 25.x sub-passes are accepted.
- Pass 25.3 does not require external/API access.
- Pass 25.3 does not modify character pages or source files.
- Human decision required to skip Pass 25.3/25.4 and proceed directly to Pass 26.
