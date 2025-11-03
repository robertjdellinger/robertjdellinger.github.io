# GitHub Copilot Instructions for robertjdellinger.github.io

Purpose
- Guide Copilot and other automated agents to make minimal, precise edits so the site matches the Website Structure provided by the owner. All edits must preserve identity, nav, front matter, media paths, footer, accessibility, and dual-deploy workflows.

High-level rules (enforced)
- Do not change identity: pronouns, affiliations, email, phone, postal address, footer copy.
- Minimal diffs only: fix what's broken, do not bulk-reformat or refactor unrelated files.
- No em dashes: replace em dashes with hyphens or commas.

Canonical navigation
- The single source of truth for navigation is config/_default/menus.yaml in the repository. CI will validate the expected menu entries directly (no separate canonical file).
- Top-level menu items (names, identifiers, urls, weights, params.description) are immutable unless the PR is explicitly titled "Nav Change Request".

Page types and canonical URLs
- Trailing slashes required for section landing pages: /about/, /research/, /gallery/, /outreach/, /blog/, /contact/
- `type: landing` for section index pages, `type: post` for posts, `type: page` for standalone content.

Front matter and blocks
- Every content file should include:
  - title
  - summary (used for meta description; ~<160 chars)
  - type
  - draft (true|false)
  - date for posts or dated pages
- Landing pages should include a `sections:` array using existing HugoBlox blocks (hero, resume-biography-3, resume-education, resume-experience, gallery, contact, collection, etc.).
- Social card `image` must be page bundle relative and include `image_alt`.

Homepage and About page requirements
- content/_index.md must include:
  - title: "Robert J. Dellinger"
  - summary matching canonical description
  - hero block with primary_action → /about/ and secondary_action → /contact/
  - design.background referencing media/coral-reefs.png with image_alt
- content/about/_index.md must include aliases: ["/experience/","/cv/"]
- CV button should link to /uploads/CV.pdf (page bundle or static as currently used)
- When owner text is not yet available, placeholders are permitted (see Placeholder guidance below) but should be clearly marked for future replacement.

Footer requirements
- layouts/partials/footer.html must render a 2-column layout with exact left/right text (left must contain dynamic year).
  - Left: "Robert J. Dellinger © {{ now.Year }}" and the UCLA address lines.
  - Right: "Contact Information" with email mailto:rjdellinger@ucla.edu and phone tel:+13108809842.

Accessibility and inclusion checks
- All images must have meaningful alt text (decorative images alt="").
- One H1 per page. Headings must be sequential.
- External links: include rel="noopener noreferrer".
- Do not remove pronouns, leadership roles, community context, or justice framing when editing text.

Deployment & CI constraints
- Dual deployment: GitHub Pages is primary; Netlify provides PR preview builds and acts as backup.
- PRs that change presentation (content, layout, assets) should include a Netlify preview URL.
- Do not change GitHub Actions workflow triggers or Netlify build commands without an explicit "Deploy Change Request" PR and owner approval.

Placeholder guidance (changed)
- Placeholders (strings such as "PASTE_", "Insert bio here", "Short summary of", or similar) are allowed in branches and PRs.
- CI and guardian checks should flag placeholders as advisory (warnings) rather than blocking by default. This allows iterative work and staged content.
- If a change is intended for a production merge (main branch), maintainers or the owner should confirm whether placeholders must be replaced before merging to main. The guardian will include a "placeholders present" note in its CI output and PR comments.
- When creating content that uses placeholders, include a short comment in the front matter or the PR describing what still needs to be completed and who is responsible.

Validation checks (CI or pre-commit)
- Build: pnpm run build || hugo --minify — failure blocks merge.
- Nav guard: CI checks config/_default/menus.yaml for expected top-level entries; any deviation blocks merge unless PR is a "Nav Change Request".
- Placeholder guard: CI will run git grep for placeholder patterns and report findings as warnings; these are advisory unless maintainers configure them to block.
  - Example command (advisory): git grep -nE 'PASTE_|Insert bio here|Short summary of' -- content || true
- Footer guard: ensure footer partial contains required strings and dynamic year.
- Front matter guard: ensure title, summary, type, draft exist; posts must include date.
- Link integrity: scan build output for missing assets or broken links (404s) — any 404 blocks merge.
- Alt text: ensure changed files with images include alt text.

Branch & PR etiquette
- Branch naming: copilot/<short-task>
- PR description should include:
  - Netlify deploy preview URL (for presentation changes)
  - A short checklist confirming Non-negotiables, Accessibility, and Validation steps passed
  - If placeholders remain, document them in the PR and indicate owner/assignee for completion
  - If changing nav/menu, PR title must start with "Nav Change Request"
- Commit messages: use imperative style and scoped message:
  - Examples: fix(content): fill About bio block and add CV link, chore(ci): add nav guard script, fix(layout): enforce footer two-column structure

When to ask the owner (blockers)
- Any change to identity (pronouns, affiliations, contact info)
- Missing owner-supplied long-form copy where it must be authoritative
- Requests to reorder or rename top-level nav items or change primary background image

Behavior when encountering an issue
- For non-blocking issues (placeholders present, accessibility suggestions), leave a concise PR comment describing what's missing and a suggested patch or resource.
- For blocking issues (broken build, missing footer strings, nav deviations, identity edits), stop and leave a precise PR review comment describing the blocker and include a minimal diff suggestion where appropriate.

Examples (patterns to follow)
- Footer patch suggestion
  ```diff
  --- a/layouts/partials/footer.html
  +++ b/layouts/partials/footer.html
  @@
  -      <p>Contact, rjdellinger@ucla.edu</p>
  +      <p>Contact Information</p>
  +      <p>Email, <a href="mailto:rjdellinger@ucla.edu">rjdellinger@ucla.edu</a></p>
  +      <p>Phone, <a href="tel:+13108809842">+1 310 880 9842</a></p>
  ```
- Placeholder detection output (what to show in PR review)
  - File: content/research/_index.md
  - Line: 12
  - Offending text: PASTE_YOUR_PARAGRAPH_ON_BIOMINERALIZATION_AND_coraDNA
  - Action: Advisory note in PR, list owner/assignee for completion.

Notes
- The guardian reads config/_default/menus.yaml as the canonical source for the nav; do not create separate canonical menu files unless the owner requests it.
- These instructions favor an iterative content workflow: placeholders allowed during drafting, flagged as warnings; final merges to main should be reviewed for placeholders per maintainers' policy.
