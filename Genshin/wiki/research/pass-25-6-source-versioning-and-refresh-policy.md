# Pass 25.6 — Source Versioning and Refresh Policy

**Date:** 2026-06-25  
**Status:** Policy document — no data imported

---

## General versioning requirements

All external references stored in `_data/external/` must comply with:

1. **Upstream commit/version capture** — every import records the exact upstream commit hash, tag, or version string at time of retrieval.
2. **retrieved_at timestamp** — ISO 8601 UTC timestamp in manifest.json.
3. **Checksum requirement** — SHA-256 hash for every imported file, stored in manifest.json `checksums` field.
4. **No silent updates** — any refresh must create a new manifest entry or update the existing one with new timestamps and checksums.

---

## Update cadence recommendations

| Source | Recommended cadence | Trigger |
|--------|-------------------|---------|
| Genshin Lore Graph | Monthly or before major claim batches | New claim mapping pass, upstream release |
| genshin-langdata | Before alias-index rebuild | Pass 25.7, new Genshin patch with new characters/regions |
| Project Amber | Only for item/book/artifact/weapon pass | SR-04 pass start |
| GenshinTextSearch | Before any search-based candidate discovery | New Genshin major patch |

---

## Stale data detection

A source is considered **stale** when:

- Upstream has commits newer than `upstream_commit_or_version` in manifest
- More than 2 major Genshin patches have released since `retrieved_at`
- Known upstream schema changes have occurred
- Upstream repository has been archived or abandoned

**Freshness thresholds:**

| Condition | Status | Action |
|-----------|--------|--------|
| retrieved < 30 days, same patch cycle | Fresh | Use normally |
| retrieved 30–90 days, same major patch | Aging | Note in any outputs; refresh before claim batches |
| retrieved > 90 days OR 2+ patches behind | Stale | Mark stale in manifest; do not use for new claim support without refresh |
| Upstream archived/abandoned | Frozen | Mark frozen; use as historical reference only |

---

## What requires human review

- Any refresh that changes >10% of entries in a normalized index
- Any refresh that introduces new entity types or relationship categories
- Any alias conflict detected after refresh (same alias → multiple entities)
- Any schema drift in upstream data (new fields, removed fields, type changes)
- First import of any new source
- License or terms-of-service changes upstream

---

## What can be updated automatically in future

With appropriate validator guardrails in place (Pass 25.9):

- Checksum recalculation after verified unchanged content
- retrieved_at timestamp updates
- Freshness status flag updates
- Stale/fresh classification based on date math
- Index regeneration from unchanged normalized data

**Never automatic:**
- Canon status changes
- Source tier upgrades
- Claim mapping from refreshed data
- Alias conflict resolution

---

## Schema drift handling

When upstream schema changes:

1. Document the drift in `schema-map.md` for the affected source
2. Flag affected normalized entries with `schema_version` field
3. Do not auto-migrate old entries — queue for human review
4. Validators must flag schema version mismatches
5. If drift is breaking (removed fields, type changes), quarantine affected entries until mapping review

---

## Removed upstream entries handling

When upstream removes an entity, alias, or relationship:

1. Do NOT delete from local normalized data immediately
2. Mark with `upstream_status: "removed"` and `removed_at` timestamp
3. Retained entries with `upstream_status: "removed"` may still serve as historical reference
4. Human review required to decide: archive, delete, or retain with caveat
5. Validators must flag removed entries used in active claim support

---

## Alias changes across languages

When upstream changes an alias or adds new language variants:

1. Record both old and new alias in alias index
2. Old alias gets `deprecated: true` flag with `deprecated_at` timestamp
3. New alias added as fresh entry with appropriate `source_reference`
4. Alias conflict review triggered if new alias collides with existing entry
5. entity_name_map updated only after human review of conflicts
6. Validators flag any alias used in wiki pages that has been deprecated upstream

---

## Per-source freshness policy

### Genshin Lore Graph

- Refresh check: monthly or before major claim batches
- Upstream commit hash: required
- If upstream adds new node types or relationship categories: human review before re-import
- If upstream restructures graph schema: full schema-map review required
- Stale threshold: 2 Genshin patches or 90 days

### genshin-langdata

- Refresh check: before alias-index rebuild (Pass 25.7 and subsequent)
- Commit hash: required
- Alias conflict review: required after every refresh
- New language additions: human review
- New entity categories: human review
- Stale threshold: 1 Genshin patch (this source tracks patches closely)

### Project Amber

- Refresh only for item/book/artifact/weapon pass
- No auto-canon upgrade ever
- Snapshot date required
- Stale threshold: acceptable to be 1-2 patches behind for metadata
- API terms review required before each refresh cycle

### GenshinTextSearch

- Freshness must be compared to current Genshin version
- If stale by ≥1 major patch: use only as fallback search utility
- If stale by ≥2 major patches: flag as unreliable for candidate discovery
- Tool version and index coverage must be documented in freshness-report.md
