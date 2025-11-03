# Accessibility Features

This website is designed to be accessible to all users, following WCAG 2.1 Level AA guidelines.

## Implemented Features

### Navigation
- **Skip to main content**: Keyboard users can skip repetitive navigation elements
- **Keyboard navigation**: All interactive elements are accessible via keyboard
- **Logical tab order**: Elements follow a natural reading order
- **Clear focus indicators**: Visible focus states for all interactive elements

### Semantic HTML
- **Proper heading hierarchy**: H1-H6 tags used logically throughout
- **ARIA labels**: Where needed for enhanced screen reader support
- **Landmark regions**: Main, nav, footer properly marked up
- **Meaningful link text**: All links describe their destination

### Visual Design
- **Color contrast**: Text meets WCAG AA contrast ratios
- **Responsive design**: Works across all device sizes
- **Readable fonts**: Clear, legible typography
- **System theme support**: Respects user's light/dark mode preferences

### Content
- **Alternative text**: All images include descriptive alt text
- **Language declaration**: HTML lang attribute set to English
- **Consistent navigation**: Same menu structure across all pages
- **Clear labels**: All form inputs have associated labels

### Technical Features
- **Valid HTML**: Semantic, standards-compliant markup
- **Mobile-friendly**: Touch targets minimum 44x44px
- **Fast loading**: Optimized images and minified assets
- **Progressive enhancement**: Core content accessible without JavaScript

## Testing

The site has been designed with the following considerations:
- Screen reader compatibility (NVDA, JAWS, VoiceOver)
- Keyboard-only navigation
- Color blindness simulation
- Mobile accessibility

## Feedback

If you encounter any accessibility issues, please contact:
- Email: rjdellinger@ucla.edu
- GitHub: https://github.com/robertjdellinger/robertjdellinger.github.io/issues

## Future Improvements

- [ ] Add WCAG 2.1 AAA compliance where possible
- [ ] Implement more comprehensive ARIA live regions
- [ ] Add user-configurable text sizing
- [ ] Enhance keyboard shortcuts documentation
