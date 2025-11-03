GitHub Copilot Instructions for robertjdellinger.github.io

Purpose
	•	Make minimal, precise edits so the site matches the intended Website Structure and keeps building cleanly on both GitHub Pages and Netlify.
	•	Default posture is fix first, then warn, only block when something would break the live site or alter identity.

Non-negotiables
	•	Do not change identity, pronouns, affiliations, email, phone, postal address, or footer copy.
	•	Make minimal diffs, fix only what is required, do not reformat unrelated files.
	•	Replace em dashes with hyphens or commas.

⸻

Fix-First Playbook

Copilot should follow this order of operations on every PR that touches content, config, or layouts.
	1.	Build the site locally in CI, then repair
	•	Run pnpm install if package.json exists, install Hugo as in repo workflows, then hugo --minify.
	•	If the build fails, attempt the smallest possible fix:
	•	Missing file referenced, add or comment the reference with a TODO.
	•	Bad path or case mismatch, correct the path in content.
	•	Theme param missing, add the minimal param to the right config file.
	2.	Broken links and missing assets
	•	Use the link check workflow. If a link 404s, prefer to fix, else temporarily exclude it with a short comment and add a TODO pointing to the source of truth.
	•	When an image path is wrong, correct the path to the file that actually exists, or move the file to the expected location.
	•	Prefer these conventions:
	•	Images used by a single page, store inside the page bundle and reference relatively.
	•	Shared assets, store in assets/media/... or static/media/... following existing repo usage.
	•	Case sensitivity matters on Pages. Fix Avatar.png to avatar.png if the file on disk is lower case.
	3.	Navigation, repair instead of block
	•	Canonical nav lives in config/_default/menus.yaml.
	•	Ensure top level entries exist with these attributes, fix if they drift:
	•	about, url /about/, weight 10
	•	research, url /research/, weight 20
	•	gallery, url /gallery/, weight 30
	•	outreach, url /outreach/, weight 40
	•	blog, url /blog/, weight 50
	•	contact, url /contact/, weight 60
	•	If a PR intends to change labels, order, or slugs, require the PR title to begin with Nav Change Request. Otherwise, sync the file back to the expected values.
	4.	Front matter, auto-heal
	•	For any changed content file, ensure keys exist:
	•	title, summary (meta description, under 160 chars), type, draft
	•	Posts require date in YYYY-MM-DD.
	•	Section landing pages should include a sections: array using existing HugoBlox blocks.
	•	If keys are missing, add them with safe defaults and a short comment.
	5.	Footer, enforce by patch
	•	layouts/partials/footer.html must render a two column layout with dynamic year.
	•	Left column includes Robert J. Dellinger © {{ now.Year }} and UCLA address.
	•	Right column includes “Contact Information”, mailto:rjdellinger@ucla.edu, and tel:+13108809842.
	•	If any required link is missing, patch it. If wording differs but links are present, leave a warning, do not block.
	6.	SEO and social cards
	•	Homepage content/_index.md should have summary set to the approved copy:
	•	Oceanic and Atmospheric Scientist investigating how physical and social forces shape environmental change, translating science into policy and community action.
	•	Prefer page-bundle relative image with image_alt. If missing, add or remove the reference to avoid broken cards.
	7.	Accessibility quick fixes
	•	All images updated in the PR must have alt. Decorative images use empty alt.
	•	One H1 per page, fix obvious heading order issues.
	•	External links should include rel="noopener noreferrer".
	8.	Dual deploy hygiene
	•	Do not change GH Actions triggers or Netlify commands unless the PR is titled Deploy Change Request.
	•	If presentation changed, ensure the PR shows a Netlify preview URL.

⸻

Homepage and About requirements
	•	content/_index.md
	•	title: "Robert J. Dellinger"
	•	summary is the approved copy above.
	•	Hero block primary action to /about/, secondary action to /contact/.
	•	Background should reference media/coral-reefs.jpg or the current repo canonical reef asset. If the referenced file is missing, switch to the existing reef asset in the repo and add a note in the PR.
	•	content/about/_index.md
	•	Include aliases: ["/experience/","/cv/"].
	•	A CV button should link to /uploads/CV.pdf. If the file is not present, keep the button but add a TODO comment in the PR, or hide the button until the file is added.

⸻

Placeholder policy, warn not block
	•	Placeholders like PASTE_, Insert bio here, Short summary of are allowed during drafting.
	•	Copilot should list them in a single PR comment with file and line numbers, and suggest the smallest next step to replace them.
	•	Maintainers decide if a given PR to main must remove placeholders before merge.

⸻

Typical micro-patches Copilot should apply
	•	Fix broken gallery image path

--- a/content/gallery/_index.md
+++ b/content/gallery/_index.md
@@
- ![](/media/gallery/meet-francisca.jpg)
+ ![](media/gallery/meet-francisca.jpg)  <!-- fixed path, page-bundle relative -->

If the file is missing entirely, comment out the line and add a TODO, then create the folder structure and a README with where to source the image.

	•	Enforce footer links

--- a/layouts/partials/footer.html
+++ b/layouts/partials/footer.html
@@
- <p>Contact</p>
+ <p>Contact Information</p>
+ <p>Email, <a href="mailto:rjdellinger@ucla.edu">rjdellinger@ucla.edu</a></p>
+ <p>Phone, <a href="tel:+13108809842">+1 310 880 9842</a></p>


	•	Add missing front matter keys

+ summary: "Short descriptive summary under 160 characters."
+ type: "page"
+ draft: false


	•	Fix case of referenced assets

- image: "media/Avatar.png"
+ image: "media/avatar.png"



⸻

Validation checks Copilot should run or satisfy
	•	Build passes, hugo --minify.
	•	Nav file conforms to expected entries above, or PR is titled Nav Change Request.
	•	Link check clean, or noisy externals added to .github/lychee-allowlist.txt with a short comment.
	•	Footer required links present, dynamic year in use.
	•	Alt text present for changed images.

⸻

Branch, PR, and commits
	•	Branch naming: copilot/<short-task>
	•	PR description includes:
	•	Netlify preview URL when presentation changed
	•	Checklist confirming build, links, footer, alt text
	•	Placeholder list if any remain, with owner assignee
	•	Commit messages:
	•	fix(content): correct gallery image paths and add alt text
	•	chore(ci): adjust link checker allowlist for known flaky endpoints
	•	fix(layout): enforce footer contact links with dynamic year

⸻

When to ask the owner
	•	Any change to identity, affiliations, or contact details.
	•	Unclear which image or background to use when multiple exist.
	•	Structural nav changes or background image swaps that affect brand.

⸻

Notes for Copilot
	•	If two fixes are possible, choose the one that keeps URLs stable and avoids redirects.
	•	Prefer adding aliases for moved content rather than changing existing slugs.
	•	If a file is referenced but absent, either add the missing file in the correct path, or remove the reference and leave a small TODO comment in the PR description.

⸻

This version keeps Copilot focused on catching and fixing broken links, paths, case issues, missing files, and small structural drifts, while only blocking on things that would break the site or change identity.
