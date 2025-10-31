# Copilot Instructions for robertjdellinger.github.io

This repository powers the academic website for Robert J. Dellinger, a PhD student in Atmospheric and Oceanic Sciences at UCLA. The site showcases research, publications, teaching, and outreach related to marine biogeochemistry and ocean acidification.

## 🏗️ Repository Overview

**Framework**: Hugo v0.152.1 with HugoBlox Academic CV template  
**Deployment**: Dual deployment (GitHub Pages + Netlify) with automated builds  
**Package Manager**: pnpm v10.14.0  
**Node Version**: 22 (Netlify) / 20 (GitHub Actions)  
**Styling**: Tailwind CSS v4 with JIT compilation

## 📁 Project Structure

```
├── .github/
│   ├── agents/                 # Custom Copilot agents
│   │   └── hugo-site-guardian.md  # Site quality and accessibility agent
│   └── workflows/              # GitHub Actions workflows
├── assets/                     # Static assets (images, CSS, JS)
├── config/                     # Hugo configuration files
│   └── _default/
│       ├── hugo.yaml          # Main Hugo config
│       ├── params.yaml        # Site parameters
│       └── menus.yaml         # Navigation menus
├── content/                    # Markdown content for all pages
│   ├── _index.md              # Home page
│   ├── authors/               # Author profiles
│   ├── publication/           # Research publications
│   ├── experience/            # Research experience
│   ├── public-engagement/     # Public engagement content
│   └── blog/                  # Blog posts
├── layouts/                    # Custom Hugo templates (overrides)
├── static/                     # Static files served as-is
├── go.mod                      # Hugo modules configuration
├── package.json                # Node.js dependencies
└── hugoblox.yaml              # HugoBlox configuration
```

## 🛠️ Build and Development Commands

### Development Server
```bash
pnpm run dev
# or
hugo server --disableFastRender
```

### Production Build
```bash
pnpm run build
# or
hugo --minify
```

### Install Dependencies
```bash
pnpm install
```

### Hugo Module Management
```bash
hugo mod get -u ./...  # Update all modules
hugo mod tidy          # Clean up unused modules
```

## 🎨 Code Style and Patterns

### Content Files (Markdown)
- All content pages must include front matter with:
  - `title`: Page title
  - `summary`: Brief description (used for meta description and SEO)
  - `date`: Publication/creation date
  - `type`: Content type (e.g., `page`, `post`, `publication`)
  - `draft`: Boolean indicating draft status
- Use Hugo shortcodes for complex elements (callouts, figures, etc.)
- Image paths should be relative to the page bundle
- Alt text is **mandatory** for all images

### Navigation Structure
Standard menu items (defined in `config/_default/menus.yaml`):
- Home
- Bio
- Research Experience
- Public Engagement
- Media
- Blog
- Contact

### Hugo Templates
- Follow Hugo's template lookup order
- Use partials for reusable components
- Leverage Hugo Pipes for asset processing
- Maintain accessibility standards (WCAG 2.1 Level AA)

### Tailwind CSS
- Use utility classes following Tailwind v4 syntax
- HugoBlox handles styling via its module system
- Avoid inline styles; prefer utility classes
- Custom icons can be added to `assets/media/icons/custom/`

## 🧪 Testing and Validation

### Pre-commit Checks
Before committing changes:
1. **Build the site**: `pnpm run build` to ensure no build errors
2. **Check for broken links**: Review build output for link warnings
3. **Validate front matter**: Ensure all required fields are present
4. **Test locally**: Run `pnpm run dev` and verify changes in browser

### CI/CD Pipeline
The site uses dual deployment:
- **GitHub Pages**: Automated via `.github/workflows/deploy.yml` (primary)
  - Builds on push to `main` and pull requests
  - PRs create preview deployments
- **Netlify**: Configured via `netlify.toml` (alternative/backup)
  - Includes Pagefind search indexing
  - Advanced caching and optimization plugins

GitHub Actions workflows:
- **CI**: Validates site structure and entry points
- **Deploy**: Builds and deploys to GitHub Pages
- **Summary**: Generates performance reports
- **Import Publications**: Syncs publications from external sources

### Accessibility Validation
- All images must have descriptive `alt` text
- Maintain proper heading hierarchy (H1 → H2 → H3, etc.)
- Ensure sufficient color contrast (WCAG AA minimum)
- Test keyboard navigation
- See `ACCESSIBILITY.md` for full guidelines

### Performance Targets
As documented in `PERFORMANCE.md`:
- **Lighthouse Performance**: > 90
- **Lighthouse Accessibility**: 100
- **Lighthouse Best Practices**: 100
- **Lighthouse SEO**: 100
- **First Contentful Paint (FCP)**: Target < 1.8s
- **Largest Contentful Paint (LCP)**: Target < 2.5s
- **Time to Interactive (TTI)**: Target < 3.8s
- **Cumulative Layout Shift (CLS)**: Target < 0.1
- **First Input Delay (FID)**: Target < 100ms

## 🤖 Custom Agents

### hugo-site-guardian
A specialized agent that reviews and improves the Hugo/Hugo Blox website for:
- **Accessibility**: Alt text, heading hierarchy, keyboard navigation
- **SEO**: Meta descriptions, canonical tags, structured data
- **Content quality**: Clear communication, proper formatting
- **Build integrity**: Valid front matter, safe Mermaid/KaTeX syntax
- **Performance**: Image optimization, asset bundling

**When to use**: For content changes, template modifications, or accessibility improvements

## 🔒 Security and Privacy

- Never commit API keys or credentials
- Keep dependencies updated (Dependabot enabled)
- Follow security best practices in `SECURITY.md`
- Academic data should be accurate and properly attributed

## 📝 Common Tasks

### Adding a New Publication
1. Create new directory in `content/publication/[slug]/`
2. Add `index.md` with required front matter
3. Include citation info, abstract, and authors
4. Add PDF if available to directory
5. Commit and push

### Adding a Blog Post
1. Create new directory in `content/blog/[slug]/`
2. Add `index.md` with front matter (title, date, summary, tags)
3. Write content in Markdown
4. Add featured image if desired
5. Set `draft: false` when ready to publish

### Updating Navigation
1. Edit `config/_default/menus.yaml`
2. Follow existing pattern for menu items
3. Test navigation locally before committing

### Updating Site Metadata
1. Edit `config/_default/params.yaml`
2. Update fields like site description, social links, contact info
3. Validate YAML syntax

## 🐛 Common Issues and Solutions

### Hugo Build Failures
- **Missing front matter**: Ensure all content files have valid YAML front matter
- **Invalid shortcode syntax**: Check shortcode parameters match documentation
- **Module errors**: Run `hugo mod get -u ./...` to update modules

### Styling Issues
- **Tailwind classes not working**: Ensure Tailwind CLI is installed and configured
- **CSS not updating**: Clear Hugo cache with `hugo --gc`

### Image Problems
- **Images not displaying**: Check file paths are relative to page bundle
- **Large file sizes**: Optimize images before adding (use WebP format when possible)

## 📚 Key Documentation

- [Hugo Documentation](https://gohugo.io/documentation/)
- [HugoBlox Documentation](https://hugoblox.com/docs/)
- [Tailwind CSS v4 Docs](https://tailwindcss.com/docs)
- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)

## 💡 Best Practices

1. **Make minimal changes**: Only modify what's necessary
2. **Test locally first**: Always run `pnpm run dev` to test changes
3. **Use the hugo-site-guardian agent**: For content and accessibility work
4. **Maintain accessibility**: Every change should preserve or improve accessibility
5. **Keep it fast**: Monitor performance impact of changes
6. **Document changes**: Clear commit messages and PR descriptions
7. **Follow Hugo conventions**: Use Hugo's built-in features rather than workarounds

## 🎯 Goals and Priorities

1. **Accessibility**: WCAG 2.1 Level AA compliance (target: AAA where possible)
2. **Performance**: Lighthouse score > 90 on all metrics
3. **Content accuracy**: Scientific rigor and proper citations
4. **User experience**: Clear navigation, readable typography, responsive design
5. **Maintainability**: Clean code, documented patterns, reusable components

## 📬 Contact

For questions or issues:
- **Repository**: https://github.com/robertjdellinger/robertjdellinger.github.io/issues
- **Email**: rjdellinger@ucla.edu
- **Website**: https://robertjdellinger.github.io
