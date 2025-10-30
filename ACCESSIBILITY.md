# Accessibility Improvements for robertjdellinger.github.io

This document outlines accessibility enhancements made to the site and recommendations for ongoing compliance with WCAG 2.1 AA standards.

## Implemented Improvements

### 1. Skip to Main Content Link
- Added skip-to-main-content link for keyboard navigation users
- Located in: `layouts/partials/hooks/body-start/skip-to-main.html`
- Allows users to bypass navigation and jump directly to content

### 2. ARIA Labels and Semantic HTML
- Added `aria-label` attributes where appropriate
- Ensured proper use of semantic HTML elements

### 3. Meta Descriptions and SEO
- Added descriptive summaries to all major pages
- Implemented comprehensive meta tags for better screen reader context
- Located in: `layouts/partials/hooks/head-end/custom-seo.html`

### 4. Image Accessibility
- **Note**: Avatar.png needs alt text specification in theme configuration
- All future images should include descriptive alt text
- See IMAGE_OPTIMIZATION.md for image best practices

### 5. Structured Data
- Implemented Schema.org JSON-LD for Person type
- Helps assistive technologies understand page context
- Improves SEO and accessibility

## Recommendations for Future Content

### Images
1. Always include alt text that describes the image content
2. For decorative images, use `alt=""` 
3. For complex images (charts, graphs), provide detailed descriptions

Example:
```markdown
![Graph showing ocean temperature increase from 1900-2020](image.png)
```

### Headings
1. Use proper heading hierarchy (h1 → h2 → h3, never skip levels)
2. Ensure headings are descriptive and meaningful
3. Don't use headings for styling purposes

### Links
1. Use descriptive link text (avoid "click here")
2. Ensure link purpose is clear from context
3. Example: "Read the full research paper on ocean acidification" instead of "Click here"

### Color Contrast
1. Ensure text has sufficient contrast against backgrounds
2. Minimum ratio: 4.5:1 for normal text, 3:1 for large text
3. The Indigo color scheme should meet these requirements, but verify with tools

### Forms (if added in future)
1. All form inputs should have associated labels
2. Required fields should be clearly marked
3. Error messages should be descriptive and helpful
4. Use ARIA attributes for dynamic form validation

### Tables (if used for data)
1. Include `<caption>` elements
2. Use `<th>` for headers with appropriate scope attributes
3. Keep tables simple and provide alternative views for complex data

### Media Content
1. Videos should have captions/subtitles
2. Audio content should have transcripts
3. Avoid auto-playing media

## Testing Recommendations

### Automated Testing
1. Run Pa11y or axe-core on each page
2. Use Lighthouse accessibility audit
3. Validate with WAVE browser extension

### Manual Testing
1. Navigate site using only keyboard (Tab, Enter, Space, Arrow keys)
2. Test with screen reader (NVDA, JAWS, or VoiceOver)
3. Verify all interactive elements are reachable and usable
4. Check color contrast in both light and dark modes

### Keyboard Navigation Checklist
- [ ] Can access all navigation menu items
- [ ] Can activate all links and buttons
- [ ] Can open and close mobile menu (if applicable)
- [ ] Focus indicator is visible on all interactive elements
- [ ] Tab order is logical and follows visual flow
- [ ] Skip to main content link works

### Screen Reader Testing
- [ ] Page title is announced correctly
- [ ] Headings provide proper document outline
- [ ] Links are distinguishable and descriptive
- [ ] Images have meaningful alt text
- [ ] Form fields have labels (if applicable)

## WCAG 2.1 AA Compliance Checklist

### Perceivable
- [x] Text alternatives for images (in progress - needs avatar alt text)
- [x] Captions and alternatives for media (N/A - no media yet)
- [x] Content can be presented in different ways
- [x] Sufficient color contrast

### Operable
- [x] All functionality available from keyboard
- [x] Skip to main content link provided
- [x] Descriptive page titles
- [x] Logical focus order
- [x] Link purpose clear from context

### Understandable
- [x] Language of page specified (lang="en")
- [x] Consistent navigation across pages
- [x] Consistent identification of components
- [x] Clear error messages (for forms, when added)

### Robust
- [x] Valid HTML markup (Hugo Blox generates valid HTML)
- [x] Name, Role, Value available for all components
- [x] Status messages can be programmatically determined

## Resources

- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/)
- [Pa11y Accessibility Testing](https://pa11y.org/)
- [MDN Accessibility Guide](https://developer.mozilla.org/en-US/docs/Web/Accessibility)
- [Hugo Blox Accessibility Documentation](https://docs.hugoblox.com/)

## Contact for Accessibility Issues

If you encounter any accessibility barriers on this site, please contact:
- Email: rjdellinger@ucla.edu
- Report via GitHub Issues: https://github.com/robertjdellinger/robertjdellinger.github.io/issues
