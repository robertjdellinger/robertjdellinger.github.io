GitHub Copilot Instructions for robertjdellinger.github.io

Purpose
	•	Make minimal, precise edits so the site stays healthy on GitHub Pages and Netlify, matches the Website Structure, and passes CI.
	•	Default posture is fix first, then warn, only block if the site would break or identity would change.

Non-negotiables
	•	Do not change identity, pronouns, affiliations, email, phone, postal address, or footer copy.
	•	Make minimal diffs, fix only what is required, do not reformat unrelated files.
	•	Replace em dashes with hyphens or commas.

⸻

Fix-First Playbook

Copilot should follow this order on every PR that touches content, config, or layouts.

1) Build, then repair
	•	If package.json exists, run pnpm install.
	•	Install Hugo as in repo workflows, then hugo --minify.
	•	If the build fails, apply the smallest fix:
	•	Missing file referenced, add it if available, otherwise comment out the reference with a short TODO.
	•	Path or case mismatch, correct the reference, case matters on Pages.
	•	Missing theme param, add the minimal key in the correct config file.

2) Broken links and missing assets
	•	Run the link checker workflow. If a link 404s, fix the URL or add a short-term exclude in .github/lychee-allowlist.txt with a comment.
	•	If an image path is wrong, correct the path to the file that exists, or move the file into the expected location.
	•	Conventions:
	•	Single page images, store inside that page bundle, use relative paths.
	•	Shared assets, keep in assets/media/... or static/media/... to match current usage.

3) Navigation, repair rather than block
	•	Canonical nav lives in .github/canonical/menus.yaml.
	•	Live nav is config/_default/menus.yaml and must match canonical.
	•	Ensure these top level entries exist with these attributes, repair drift:
	•	about, /about/, weight 10
	•	research, /research/, weight 20
	•	gallery, /gallery/, weight 30
	•	outreach, /outreach/, weight 40
	•	blog, /blog/, weight 50
	•	contact, /contact/, weight 60
	•	If a PR intends to change labels, order, or slugs, the PR title must begin with Nav Change Request. Otherwise, sync config/_default/menus.yaml back to canonical.

4) Front matter, auto-heal
	•	For any changed content file, ensure keys exist:
	•	title, summary under 160 chars, type, draft
	•	Posts require date in YYYY-MM-DD.
	•	Section landing pages should include a sections: array using existing HugoBlox blocks.
	•	If keys are missing, add safe defaults and a short comment.

5) Footer, enforce by patch
	•	layouts/partials/footer.html must render a two column layout with dynamic year.
	•	Left column, Robert J. Dellinger © {{ now.Year }} and UCLA address lines.
	•	Right column, Contact Information, mailto:rjdellinger@ucla.edu, tel:+13108809842.
	•	If links are missing, patch them. If wording differs but links are present, leave a warning.

6) SEO and social cards
	•	Homepage content/_index.md summary must be:
	•	Oceanic and Atmospheric Scientist investigating how physical and social forces shape environmental change, translating science into policy and community action.
	•	Prefer page-bundle relative image with image_alt. If the referenced social card is missing, either supply the asset or remove the field to avoid broken cards.

7) Accessibility quick fixes
	•	All changed or added images must have alt, decorative images use empty alt.
	•	One H1 per page, keep headings sequential.
	•	External links should include rel="noopener noreferrer".

8) Dual deploy hygiene
	•	Do not change Actions triggers or Netlify commands unless the PR is titled Deploy Change Request.
	•	If presentation changed, ensure the PR includes a Netlify preview URL.

⸻

Homepage and About requirements
	•	content/_index.md
	•	title: "Robert J. Dellinger"
	•	summary set to the approved copy above.
	•	Hero primary action to /about/, secondary action to /contact/.
	•	Background should reference media/coral-reefs.jpg or the existing reef asset in the repo. If missing, switch to the existing reef asset and note it in the PR.
	•	content/about/_index.md
	•	aliases: ["/experience/","/cv/"]
	•	A CV button should link to /uploads/CV.pdf. If missing, add a TODO in the PR, or hide until added.

⸻

Placeholder policy, warn not block
	•	Placeholders like PASTE_, Insert bio here, Short summary of are allowed during drafting.
	•	List them in one PR comment with file and line numbers, suggest the smallest next step to replace them.
	•	Maintainers decide if placeholders must be removed before merging to main.

⸻

Typical micro-patches Copilot should apply

Fix broken gallery image path

--- a/content/gallery/_index.md
+++ b/content/gallery/_index.md
@@
- ![](/media/gallery/meet-francisca.jpg)
+ ![](media/gallery/meet-francisca.jpg)  <!-- fixed path, page-bundle relative -->

If the file is missing, comment out the line and add a TODO, then create content/gallery/media/gallery/ and drop a README with the source URL.

Enforce footer links

--- a/layouts/partials/footer.html
+++ b/layouts/partials/footer.html
@@
- <p>Contact</p>
+ <p>Contact Information</p>
+ <p>Email, <a href="mailto:rjdellinger@ucla.edu">rjdellinger@ucla.edu</a></p>
+ <p>Phone, <a href="tel:+13108809842">+1 310 880 9842</a></p>

Add missing front matter keys

+ summary: "Short descriptive summary under 160 characters."
+ type: "page"
+ draft: false

Fix case of referenced assets

- image: "media/Avatar.png"
+ image: "media/avatar.png"


⸻

Validation checks Copilot should satisfy
	•	Build passes with hugo --minify.
	•	config/_default/menus.yaml matches .github/canonical/menus.yaml, or PR is titled Nav Change Request.
	•	Link check is clean, or noisy externals added to .github/lychee-allowlist.txt with a short comment.
	•	Footer required links present, dynamic year in use.
	•	Alt text present for changed images.

⸻

Branch, PR, and commits
	•	Branch naming, copilot/<short-task>
	•	PR description includes:
	•	Netlify preview URL when presentation changed
	•	Checklist confirming build, links, footer, alt text
	•	Placeholder list if any remain, with owner assignee
	•	Commit message examples:
	•	fix(content): correct gallery image paths and add alt text
	•	chore(ci): adjust link checker allowlist for known flaky endpoints
	•	fix(layout): enforce footer contact links with dynamic year

⸻

When to ask the owner
	•	Any change to identity, affiliations, or contact details.
	•	Unclear which image or background to use when multiple exist.
	•	Structural nav changes or background swaps that affect brand.

⸻

Notes for Copilot
	•	If two fixes are possible, choose the one that keeps URLs stable and avoids redirects.
	•	Prefer adding aliases for moved content rather than changing existing slugs.
	•	If a file is referenced but absent, either add the missing file in the correct path, or remove the reference and leave a small TODO comment in the PR description.

⸻
