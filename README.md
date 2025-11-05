# Robert J. Dellinger - Personal Website

[![CI](https://github.com/robertjdellinger/robertjdellinger.github.io/workflows/CI/badge.svg)](https://github.com/robertjdellinger/robertjdellinger.github.io/actions)
[![Deploy](https://github.com/robertjdellinger/robertjdellinger.github.io/workflows/Deploy/badge.svg)](https://github.com/robertjdellinger/robertjdellinger.github.io/actions)

Professional website for Robert J. Dellinger, Oceanic & Atmospheric Scientist investigating the physical and social drivers of environmental change.

## 🌐 Live Site

Visit the live site at: [https://robertjdellinger.github.io/](https://robertjdellinger.github.io/)

## 🏗️ Technology Stack

This site is built with:

- **[Hugo](https://gohugo.io/)** - Fast and flexible static site generator
- **[Hugo Blox](https://hugoblox.com/)** - Powerful website builder for Hugo
- **[Tailwind CSS](https://tailwindcss.com/)** - Utility-first CSS framework
- **GitHub Pages** - Free hosting and deployment

## 📁 Site Structure

```
├── content/              # Site content (Markdown files)
│   ├── about/           # About page
│   ├── authors/         # Author profiles
│   ├── blog/            # Blog posts
│   ├── contact/         # Contact information
│   ├── engagement/      # Media, press, and writing
│   ├── gallery/         # Personal photography & artwork
│   ├── publications/    # Academic publications
│   └── research/        # Research projects and conferences
├── layouts/             # Custom Hugo layouts and shortcodes
├── assets/              # CSS, JavaScript, and images
├── config/              # Hugo configuration files
└── static/              # Static files (served as-is)
```

## 🚀 Local Development

### Prerequisites

- Hugo Extended v0.148.2+ ([Installation guide](https://gohugo.io/installation/))
- Node.js 18+ and pnpm 10+
- Git

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/robertjdellinger/robertjdellinger.github.io.git
   cd robertjdellinger.github.io
   ```

2. Install dependencies:
   ```bash
   pnpm install
   ```

3. Start the development server:
   ```bash
   pnpm dev
   ```

4. Open your browser to `http://localhost:1313`

### Building for Production

```bash
pnpm build
```

The site will be generated in the `public/` directory.

## 📝 Content Management

### Creating a New Blog Post

```bash
hugo new content/blog/my-post/index.md
```

### Adding Publications

Publications are managed in `content/publications/`. Each publication should have its own folder with an `index.md` file.

### Updating Profile

Edit `content/authors/admin/_index.md` to update author information.

## 🎨 Available Shortcodes

This site includes custom Hugo shortcodes for enhanced content:

- `{{< gallery >}}` - Display image gallery
- `{{< button >}}` - Styled call-to-action buttons
- `{{< alert >}}` - Information alerts
- `{{< collapse >}}` - Collapsible content sections
- `{{< chart >}}` - Interactive Plotly charts
- `{{< embed >}}` - Embed external resources (GitHub, HuggingFace, etc.)
- And many more in `layouts/_shortcodes/`

See [FEATURES.md](FEATURES.md) for detailed documentation.

## 🔧 Configuration

Main configuration files are in `config/_default/`:

- `hugo.yaml` - Hugo core settings
- `params.yaml` - Site parameters and theme settings
- `menus.yaml` - Navigation menu structure
- `languages.yaml` - Multi-language support

## 🧪 Testing & Quality

The site includes automated workflows for:

- **CI/CD** - Automated builds and deployment
- **Link checking** - Validates all links are working
- **HTML linting** - Ensures valid HTML markup
- **Cache maintenance** - Optimizes build performance

## 📊 Site Features

- ✅ Responsive design (mobile-first)
- ✅ SEO optimized
- ✅ Accessibility compliant (WCAG 2.1)
- ✅ Fast page loads (optimized assets)
- ✅ Dark/light mode toggle
- ✅ Interactive data visualizations
- ✅ Publication management
- ✅ Contact forms
- ✅ Image galleries

## 📄 License

The **code** for this website is licensed under the [MIT License](LICENSE).

The **content** (blog posts, publications, images, etc.) is © Robert J. Dellinger. All rights reserved.

## 🤝 Contributing

This is a personal website, but suggestions and bug reports are welcome! Please open an issue to discuss any changes.

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📧 Contact

For inquiries, please use the [contact form](https://robertjdellinger.github.io/contact/) on the website.

---

Built with ❤️ using Hugo and deployed on GitHub Pages
