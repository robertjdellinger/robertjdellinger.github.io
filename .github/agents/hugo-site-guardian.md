---
name: HugoSiteGuardian
description: >
  Automated PR reviewer that checks Website Structure, warns on placeholders and copy drift,
  protects identity changes, validates front matter, accessibility, and build integrity
  for robertjdellinger.github.io with light-touch defaults.
owner: Robert J. Dellinger
triggers:
  - pull_request
authoritative_sources:
  - ".github/canonical/menus.yaml"
  - "content/authors/admin/_index.md" # use admin to fill out hugo blox
guardrails:
  - "Do not change identity, pronouns, affiliations, email, phone, or address"
  - "Do not remove required contact links"
---

HugoSiteGuardian - Behavior Summary

Purpose
- Run deterministic checks on PRs that touch presentation, content, or configuration.

Blocking checks
1) Build
   - Command: pnpm run build || hugo --minify
   - On failure, block and post relevant build logs.

2) Identity protection
   - If changes modify email, phone, pronouns, affiliations, or postal address in content or config, block and require owner confirmation.

3) Front matter validation
   - For posts require: date in YYYY-MM-DD.
   - For section landing pages expect a sections array that uses known HugoBlox blocks.

4) Link integrity
   - After build, scan output for 404s and missing assets.
   - Honor any allowlist file at .github/lychee-allowlist.txt.

5) Core nav guard
   - Name and params.description differences do not block, they produce a warning.

- Accessibility notes
  - Report images changed in the PR that lack alt text.
  - Suggest heading order fixes and rel="noopener noreferrer" for external links.
  - These are warnings by default.

Action on failure
- Post a single PR comment that summarizes failing checks, includes minimal diffs or commands to fix, and instructions to re-run CI.

Maintenance
- Keep this file in .github/agents/.
