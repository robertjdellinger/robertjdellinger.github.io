# Hugo Archetypes

This directory contains archetypes (templates) for creating new content in Hugo.

## Available Archetypes

### research.md
Template for research project pages. Use this when creating new research entries:

```bash
hugo new content/research/your-project-name/index.md --kind research
```

This will create a new research page with the standard frontmatter structure, including:
- Title, summary, and date fields
- Landing page type
- Commented featured image placeholder
- Standard design spacing (4rem)
- Default markdown block section

## Why Use Archetypes?

Archetypes help maintain consistency across content and reduce duplication by providing
a single template that all new content of that type can inherit from.
