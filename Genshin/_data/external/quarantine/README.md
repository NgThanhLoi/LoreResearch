# Quarantine — Blocked / Unusable Sources

## Purpose

Metadata-only records for sources that are blocked, unusable, or too high-risk for automated pipeline use. **No content from these sources should be stored here** — only metadata about why they are quarantined.

## Examples of Sources Tracked Here

- Moegirl / 萌娘百科 (403 from cloud IP)
- Baidu Baike (403 from cloud IP)
- World Tree / 世界树 (AI/community synthesis, unclear provenance)
- Bilibili (video/community, not evidence)

## Allowed Use

- Recording why a source is quarantined
- Preventing future agents from retrying blocked sources
- Keyword hints (if manually discovered by human, recorded as hint only)

## Disallowed Use

- Storing actual content from these sources
- Automated access attempts
- Pipeline source
- Canon proof
- source_evidence_id
- Any evidence use whatsoever

## ⚠️ WARNING — DO NOT ACCESS AUTOMATICALLY

Sources listed here are quarantined for a reason. Future agents and scripts must NOT:

- Attempt HTTP requests to quarantined URLs
- Scrape or crawl quarantined sites
- Import data from quarantined sources
- Treat quarantine metadata as evidence

If a quarantined source becomes accessible in the future, it must go through a new Hermes test and human review before reclassification.

## Note

Not canon. Not evidence. Not even hints (except keyword pointers recorded by humans). This folder exists to prevent wasted effort and anti-bot triggers.
