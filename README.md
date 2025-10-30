# Robert J. Dellinger – Academic Website

This repository powers the personal academic website of Robert J. Dellinger, a PhD student in the Atmospheric and Oceanic Sciences Department at UCLA. The site highlights research, publications, teaching, and outreach.

- **Website:** https://robertjdellinger.github.io
- **Contact:** robertjdellinger@ucla.edu

## Research Interests

- Climate change impacts on marine organisms and ecosystems
- Scaling links from physiology to ecosystem function
- Social drivers of environmental change (e.g., structural racism)
- Science–art collaboration, storytelling, and public engagement

## Education

- **PhD** (in progress), Atmospheric and Oceanic Sciences — University of California, Los Angeles
- **MS**, Biology — California State University, Northridge (Quantitative Marine Ecology Lab)
- **BS**, Marine and Coastal Science & **BA**, International Relations — University of California, Davis

## Site Structure

- `content/authors/admin/` - Personal profile and biography
- `content/publications/` - Research publications
- `content/research/` - Research project descriptions
- `content/blog/` - News and blog posts
- `content/events/` - Talks and conference presentations
- `config/_default/` - Site configuration files

## Local Development

```bash
# Install dependencies (requires Node.js and pnpm)
pnpm install

# Run development server
hugo server --disableFastRender

# Build for production
hugo --minify
```

See `netlify.toml` for the Hugo version used in production.

## Updating Content

### Adding Publications
Create a new folder in `content/publications/` with an `index.md` file. See `content/publications/README.md` for details.

### Adding Blog Posts
Create a new folder in `content/blog/` with an `index.md` file. See `content/blog/README.md` for guidance.

### Updating Profile
Edit `content/authors/admin/_index.md` to update your biography, education, experience, and social links.

## Deployment

The site is automatically deployed via Netlify when changes are pushed to the repository.

## License

MIT License © 2025 Robert J. Dellinger  
Built with [Hugo Blox](https://hugoblox.com) and [Hugo](https://gohugo.io)
