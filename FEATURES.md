# Site Features Documentation

This document describes the custom features and enhancements added to the robertjdellinger.github.io Hugo Blox site.

## Custom CSS Styling

### Location
`assets/css/custom.css`

### Features
- **Article Header Overlays**: Support for gradient overlays on article headers
- **Hero Blocks**: Enhanced hero section styling with overlay effects
- **Gallery Grid**: Responsive grid layout with hover effects
- **Accessibility**: Improved focus states and screen reader support
- **Responsive Design**: Mobile-optimized layouts
- **Print Styles**: Clean print output without gradients

### Usage Example
```yaml
# In front matter
design:
  css_class: "article-header-overlay header-theme-dark"
```

## Scroll Animations

### Components
1. **Animate.css CDN**: `layouts/partials/hooks/head-end/animate.html`
2. **Animation Script**: `static/js/scroll-animate.js`
3. **Script Loader**: `layouts/partials/hooks/body-end/animate.html`

### Features
- Lightweight IntersectionObserver-based animations
- Automatic fade-in on scroll
- Performance optimized with CSS preloading
- Graceful degradation for browsers without IntersectionObserver support

### Usage Example
```yaml
# In front matter
sections:
  - block: markdown
    content:
      title: "My Section"
      text: "Content here..."
    design:
      css_class: "js-animate anim-fadeInUp"
```

Available animations (from Animate.css):
- `anim-fadeIn`
- `anim-fadeInUp`
- `anim-fadeInDown`
- `anim-fadeInLeft`
- `anim-fadeInRight`
- `anim-slideInUp`
- `anim-zoomIn`
- And many more from [Animate.css](https://animate.style/)

## Contact Widget

### Location
- `layouts/partials/blocks/contact.html`
- `layouts/partials/hbx/blocks/contact/block.html`

### Features
- Email, phone, and address display with semantic HTML
- Structured data markup (Schema.org)
- Optional contact form support (Netlify or Formspree)
- Accessible form labels and ARIA attributes
- Map integration support

### Configuration
Add to `config/_default/params.yaml`:
```yaml
email: "your.email@example.com"
phone: "+1 234 567 8900"
address: "Your Address Line 1\nLine 2\nCity, State ZIP"
```

### Usage Example
```yaml
# In content/contact/_index.md
sections:
  - block: contact
    content:
      title: "Get in touch"
      text: "Optional introductory text"
      email_form: 0  # 0 = display only, 1 = Netlify, 2 = Formspree
    design:
      columns: "1"
```

## Gallery Shortcode

### Location
`layouts/shortcodes/gallery.html`

### Features
- Responsive grid layout
- Lazy loading with blur-up effect
- Retina display support (1x and 2x srcset)
- Lightbox integration (Fancybox)
- Accessibility alt text support
- LQIP (Low Quality Image Placeholder) for fast perceived loading

### Usage Example
```markdown
<!-- In markdown content -->
{{< gallery album="my-album" >}}
```

With front matter configuration:
```yaml
gallery_item:
  - album: "my-album"
    image: "photo1.jpg"
    caption: "Photo caption"
    alt: "Descriptive alt text"
  - album: "my-album"
    image: "photo2.jpg"
    caption: "Another caption"
    alt: "Alt text for accessibility"
```

## Theme Configuration

### Day Mode Enforcement
The site is configured to always use light mode:
```yaml
# In config/_default/params.yaml
header:
  navbar:
    show_theme_chooser: false
```

This ensures a consistent visual experience for all visitors.

## Performance Optimizations

1. **CSS Preloading**: Animate.css is preloaded with `rel="preload"` for faster initial render
2. **Deferred JavaScript**: Animation script loads with `defer` attribute
3. **Lazy Loading**: Images use native `loading="lazy"` attribute
4. **Resource Minification**: CSS and JS are minified in production builds
5. **Image Optimization**: Automatic image resizing and format conversion via Hugo

## Accessibility Features

1. **Semantic HTML**: All widgets use proper semantic elements
2. **ARIA Labels**: Interactive elements have descriptive ARIA labels
3. **Focus Indicators**: Clear focus states for keyboard navigation
4. **Alt Text**: All images require alt text
5. **Screen Reader Support**: Hidden labels for form inputs with `.sr-only` class
6. **Color Contrast**: Meets WCAG AA standards

## Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- IntersectionObserver API required for scroll animations
- Graceful degradation for older browsers
- Responsive design works on all screen sizes

## Maintenance

### Adding New Animations
1. Choose an animation from [Animate.css](https://animate.style/)
2. Add `css_class: "js-animate anim-[animationName]"` to your block's design section
3. The script will automatically apply the animation on scroll

### Customizing Styles
Edit `assets/css/custom.css` and rebuild:
```bash
hugo --minify
```

### Testing
```bash
# Development server
hugo server -D

# Production build
hugo --minify

# Check for broken links
# (Configured in .lycheeignore for exclusions)
```

## Resources

- [Hugo Blox Documentation](https://docs.hugoblox.com/)
- [Animate.css](https://animate.style/)
- [Accessibility Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [Hugo Documentation](https://gohugo.io/documentation/)
