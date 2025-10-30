# Code Duplication Refactoring Summary

This document summarizes the refactoring work done to eliminate duplicated code in the repository.

## Changes Made

### 1. Removed Duplicate Deployment Workflow

**Problem:** Two GitHub Actions workflows (`deploy.yml` and `hugo.yml`) were performing the same function - deploying the Hugo site to GitHub Pages.

**Solution:** Removed `.github/workflows/hugo.yml` and kept `deploy.yml` as the single source of truth.

**Rationale:**
- `deploy.yml` is more comprehensive and feature-rich:
  - Supports both push and pull_request events (PR previews)
  - Has better caching strategy for dependencies and resources
  - Includes pnpm package manager support
  - Has timeout configuration
  - Includes HugoBlox repository check
  - More actively maintained configuration

**Impact:** Reduces maintenance burden and prevents potential conflicts between workflows.

### 2. Created Hugo Archetype for Research Pages

**Problem:** All research pages (`bay-lab`, `bodega-marine-lab`, `lake-atitlan`) had identical frontmatter structure, leading to code duplication when creating new research entries.

**Solution:** Created `archetypes/research.md` template that standardizes the frontmatter structure for future research pages.

**Benefits:**
- Single source of truth for research page structure
- Easier to maintain consistency across research pages
- Reduces manual errors when creating new content
- Simplifies onboarding for new contributors

**Usage:**
```bash
hugo new content/research/new-project/index.md --kind research
```

### 3. Added Documentation

Created `archetypes/README.md` to document the purpose and usage of Hugo archetypes, making it easier for contributors to understand and use the templating system.

## Files Changed

- **Removed:** `.github/workflows/hugo.yml` (74 lines)
- **Added:** `archetypes/research.md` (17 lines)
- **Added:** `archetypes/README.md` (24 lines)

**Net change:** -33 lines of code, significant reduction in duplication

## Verification

The remaining `deploy.yml` workflow continues to:
- Deploy on pushes to main branch
- Create PR previews for pull requests
- Support manual workflow dispatch
- Use Hugo version 0.152.1
- Support Node.js dependencies via pnpm

No functionality was lost in this refactoring.
