# Contributing to Robert J. Dellinger's Academic Website

Thank you for your interest in contributing! This is a personal academic website, but contributions that improve functionality, fix bugs, or enhance documentation are welcome.

## Ways to Contribute

### 1. Reporting Bugs

If you find a bug, please create an issue with:
- Clear description of the problem
- Steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)
- Browser/device information

### 2. Suggesting Enhancements

For feature requests or improvements:
- Use the feature request issue template
- Explain the use case and benefits
- Provide examples if possible

### 3. Submitting Pull Requests

#### Before You Start

1. Check existing issues and PRs to avoid duplicates
2. For major changes, open an issue first to discuss
3. Fork the repository

#### Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/robertjdellinger.github.io.git
cd robertjdellinger.github.io

# Install dependencies
npm install -g pnpm@10.14.0
pnpm install

# Install Hugo (requires v0.152.1 extended)
# See: https://gohugo.io/installation/

# Run development server
pnpm run dev
# Site available at http://localhost:1313/

# Build the site
pnpm run build
```

#### Pull Request Process

1. **Create a Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make Changes**
   - Follow existing code style
   - Test your changes locally
   - Update documentation if needed

3. **Test**
   ```bash
   pnpm run build
   ```

4. **Commit**
   - Write clear, descriptive commit messages
   - Reference related issues

5. **Push and Create PR**
   ```bash
   git push origin feature/your-feature-name
   ```
   - Fill out the PR template
   - Link to related issues

### Code Style

- **YAML/TOML**: Use 2-space indentation
- **Markdown**: Follow standard Markdown practices
- **Front Matter**: Follow HugoBlox conventions
- **File Names**: Use lowercase with hyphens

### Content Guidelines

#### Posts and Pages
- Include proper front matter
- Use YYYY-MM-DD format for dates
- Add appropriate tags and categories
- Include alt text for images

#### Accessibility
- Provide meaningful alt text for all images
- Use semantic heading hierarchy (H1 → H2 → H3)
- Add `rel="noopener noreferrer"` to external links
- Ensure sufficient color contrast

### Commit Message Format

```
<type>: <short summary>

<optional detailed description>

<optional footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Formatting, missing semicolons, etc.
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance tasks

**Examples:**
```
feat: add new research publication

docs: update installation instructions

fix: correct broken link in navigation
```

## Project Structure

```
.
├── .github/          # GitHub configuration
│   ├── workflows/    # CI/CD workflows
│   └── ISSUE_TEMPLATE/
├── assets/           # CSS, JS, images
├── config/           # Hugo configuration
│   └── _default/     # Default configs
├── content/          # Site content
│   ├── authors/
│   ├── blog/
│   ├── research/
│   └── ...
├── layouts/          # Custom templates
├── static/           # Static files
└── themes/           # Hugo themes (via modules)
```

## Questions?

- **Email**: rjdellinger@ucla.edu
- **Issues**: Open a GitHub issue for technical questions

## License

By contributing, you agree that your contributions will be licensed under the same license as the project (MIT License).

## Code of Conduct

Please be respectful and professional in all interactions. This is a welcoming, harassment-free environment for everyone.

---

Thank you for contributing to make this academic website better! 🌊
