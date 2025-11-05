# Robert J. Dellinger – Academic Website

[![Deploy](https://github.com/robertjdellinger/robertjdellinger.github.io/actions/workflows/deploy.yml/badge.svg)](https://github.com/robertjdellinger/robertjdellinger.github.io/actions/workflows/deploy.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Hugo](https://img.shields.io/badge/Hugo-0.152.1-blue.svg)](https://gohugo.io/)
[![HugoBlox](https://img.shields.io/badge/HugoBlox-Academic%20CV-orange)](https://hugoblox.com/)

This repository powers the personal academic website of Robert J. Dellinger, a PhD student in the Atmospheric and Oceanic Sciences Department at UCLA. The site highlights research, publications, teaching, and outreach related to marine biogeochemistry, ocean acidification, and climate change impacts on marine ecosystems.

## 🌐 Website

**Live Site**: [https://robertjdellinger.github.io](https://robertjdellinger.github.io)

## 🛠️ Technical Details

- **Framework**: Hugo v0.152.1 Extended
- **Template**: HugoBlox Academic CV
- **Styling**: Tailwind CSS v4
- **Deployment**: GitHub Pages / Netlify
- **CI/CD**: GitHub Actions
- **Package Manager**: pnpm v10.14.0

## 🚀 Quick Start

### Prerequisites

- [Hugo](https://gohugo.io/installation/) v0.152.0+ (Extended version required)
- [Node.js](https://nodejs.org/) v22+
- [pnpm](https://pnpm.io/) v10.14.0+

### Development

```bash
# Clone the repository
git clone https://github.com/robertjdellinger/robertjdellinger.github.io.git
cd robertjdellinger.github.io

# Install dependencies
pnpm install

# Run development server
pnpm run dev
# Site available at http://localhost:1313/

# Build for production
pnpm run build
```

## 📁 Project Structure

```
.
├── .github/          # GitHub configuration and workflows
├── assets/           # CSS, JS, and images
├── config/           # Hugo configuration files
│   └── _default/     # Default configuration
├── content/          # Site content (Markdown)
│   ├── authors/      # Author profiles
│   ├── blog/         # Blog posts
│   ├── research/     # Research content
│   └── ...
├── layouts/          # Custom Hugo templates
├── static/           # Static assets
└── public/           # Generated site (git-ignored)
```

## 🤝 Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](.github/CONTRIBUTING.md) for details.

## 📄 License

MIT License © 2025 Robert J. Dellinger  
Built with [HugoBlox](https://hugoblox.com/) and [Hugo](https://gohugo.io/)

## 📧 Contact

- **Website**: https://robertjdellinger.github.io
- **Email**: rjdellinger@ucla.edu
- **Twitter**: [@RJ_Dellinger](https://twitter.com/RJ_Dellinger)
- **ORCID**: [0009-0009-3524-4041](https://orcid.org/0009-0009-3524-4041)

---

🌊 Marine biogeochemistry • Ocean acidification • Climate science
