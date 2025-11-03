# Deployment Guide

This document describes how the dual deployment system works for this site and how to configure it.

## Overview

This site is configured for **dual deployment** to both GitHub Pages and Netlify:

- **GitHub Pages** (Primary): Automatically deploys from the `main` branch via `.github/workflows/deploy.yml`
- **Netlify** (Optional/Backup): Automatically deploys from the `main` branch via `.github/workflows/deploy-netlify.yml`

Both deployments run independently on every push to `main`, ensuring redundancy and flexibility.

## Why Dual Deployment?

1. **Redundancy**: If one platform has issues, the site is still available on the other
2. **Preview builds**: Netlify provides PR preview deployments automatically
3. **Performance comparison**: Test which platform delivers better performance for your use case
4. **Flexibility**: Easy to switch primary platforms if needed

## GitHub Pages Setup

GitHub Pages deployment is enabled by default and requires no additional configuration. It uses:

- Workflow: `.github/workflows/deploy.yml`
- Default URL: `https://robertjdellinger.github.io`
- Deployment: Automatic on push to `main`

## Netlify Setup

### Prerequisites

1. A Netlify account (free tier is sufficient)
2. A Netlify site created for this repository

### Required Secrets

To enable Netlify deployment, you must add the following secrets to your GitHub repository:

#### 1. NETLIFY_AUTH_TOKEN

This is your Netlify Personal Access Token.

**How to obtain:**
1. Log in to [Netlify](https://app.netlify.com/)
2. Click on your avatar in the top right
3. Select "User settings"
4. Navigate to "Applications" → "Personal access tokens"
5. Click "New access token"
6. Give it a descriptive name (e.g., "GitHub Actions Deploy")
7. Copy the generated token

**How to add to GitHub:**
1. Go to your repository on GitHub
2. Navigate to Settings → Secrets and variables → Actions
3. Click "New repository secret"
4. Name: `NETLIFY_AUTH_TOKEN`
5. Value: Paste the token from Netlify
6. Click "Add secret"

#### 2. NETLIFY_SITE_ID

This is the unique identifier for your Netlify site.

**How to obtain:**
1. Log in to [Netlify](https://app.netlify.com/)
2. Select your site
3. Go to Site settings → General
4. Look for "Site information" section
5. Copy the "Site ID" (also called "API ID")

**How to add to GitHub:**
1. Go to your repository on GitHub
2. Navigate to Settings → Secrets and variables → Actions
3. Click "New repository secret"
4. Name: `NETLIFY_SITE_ID`
5. Value: Paste the Site ID from Netlify
6. Click "Add secret"

### Optional Configuration

#### NETLIFY_SITE_URL (Variable or Secret)

You can optionally set the Netlify site URL to help the link checker know which deployment to check.

**How to add as a variable:**
1. Go to your repository on GitHub
2. Navigate to Settings → Secrets and variables → Actions → Variables tab
3. Click "New repository variable"
4. Name: `NETLIFY_SITE_URL`
5. Value: Your Netlify site URL (e.g., `https://your-site.netlify.app`)
6. Click "Add variable"

Alternatively, you can add it as a secret following the same steps as above but using the Secrets tab.

## How Deployment Works

### GitHub Pages Deployment

1. Triggered on push to `main` or via manual workflow dispatch
2. Builds the Hugo site with `hugo --minify`
3. Uploads the `./public` directory as a Pages artifact
4. Deploys to GitHub Pages
5. Site available at `https://robertjdellinger.github.io`

### Netlify Deployment

1. Triggered on push to `main` or via manual workflow dispatch
2. Only runs if `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` secrets are configured
3. Builds the Hugo site with `hugo --gc --minify`
4. Deploys the `./public` directory to Netlify
5. Site available at your configured Netlify URL

### Build Process

Both deployments use the same build process:

```bash
# Install dependencies (if package.json exists)
pnpm install

# Build the site with Hugo
hugo --gc --minify
```

The build output is placed in the `./public` directory.

## Link Checking

The link checker (`.github/workflows/link-check.yml`) intelligently selects which deployment to check:

1. **Manual input**: If triggered manually, you can specify the URL
2. **Netlify URL**: If `NETLIFY_SITE_URL` secret/variable is set, uses that
3. **GitHub Pages URL**: Falls back to `https://robertjdellinger.github.io`

The checker will:
- Wait up to 5 minutes for the site to become available
- Poll the site every 10 seconds
- Run link checks using [Lychee](https://github.com/lycheeverse/lychee)
- Exclude patterns defined in `.github/lychee-allowlist.txt`

## Troubleshooting

### Netlify deployment not running

**Symptom**: The Netlify workflow is skipped or doesn't run.

**Solution**: Ensure both `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` secrets are configured. The workflow has a condition that skips deployment if these are not set.

### Build failures

**Symptom**: Deployment fails during the build step.

**Possible causes:**
1. Missing dependencies: Ensure `pnpm-lock.yaml` is up to date
2. Hugo version mismatch: Check that `WC_HUGO_VERSION` in the workflow matches your local version. You can check your local Hugo version by running `hugo version` in your terminal. For more details, see the [Hugo Documentation](https://gohugo.io/documentation/).
3. Content errors: Check Hugo build logs for content-related errors

### Link checker failures

**Symptom**: Link checks fail even though links work in a browser.

**Solution**: Add problematic URL patterns to `.github/lychee-allowlist.txt`. Many sites block automated checkers.

### Netlify preview builds

Netlify can also provide preview builds for pull requests if configured directly in Netlify's UI:

1. Go to your site in Netlify
2. Navigate to Site settings → Build & deploy → Continuous deployment
3. Configure branch deploys and deploy previews as desired

Note: The GitHub Actions workflow only handles production deploys. Netlify's built-in PR previews work independently.

## Monitoring Deployments

### GitHub Pages
- View deployment status: Repository → Actions → "Deploy website to GitHub Pages"
- Live site: https://robertjdellinger.github.io

### Netlify
- View deployment status: Repository → Actions → "Deploy website to Netlify"
- Netlify dashboard: https://app.netlify.com/sites/[your-site]/deploys
- Live site: Your custom Netlify URL

## Disabling Netlify Deployment

If you want to disable Netlify deployment while keeping the option available:

1. Remove the `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` secrets from GitHub
2. The workflow will automatically skip the deployment step

The workflow file can remain in place for future use.

## Additional Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Netlify Documentation](https://docs.netlify.com/)
- [Lychee Link Checker](https://github.com/lycheeverse/lychee)
