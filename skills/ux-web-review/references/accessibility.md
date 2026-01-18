# Accessibility Guidelines Reference

Reference for evaluating and improving web accessibility compliance. Based on WCAG 2.1 guidelines with practical application guidance.

## Core Principles (POUR)

### Perceivable

Information and UI components must be presentable to users in ways they can perceive.

### Operable

UI components and navigation must be operable by all users.

### Understandable

Information and UI operation must be understandable.

### Robust

Content must be robust enough to be interpreted by a wide variety of user agents, including assistive technologies.

## Color & Contrast

### Contrast Ratios (WCAG 2.1)

**Level AA (Minimum)**

- Normal text: 4.5:1
- Large text (18pt+ or 14pt+ bold): 3:1
- UI components and graphics: 3:1

**Level AAA (Enhanced)**

- Normal text: 7:1
- Large text: 4.5:1

### How to Check

- Use browser DevTools contrast checker
- Online tools: WebAIM Contrast Checker, Contrast Ratio by Lea Verou
- Check all states: default, hover, focus, disabled, error

### Color Independence

- Never use color alone to convey information
- Provide additional indicators: icons, labels, patterns, text
- Examples: Required fields (asterisk + red), errors (icon + red), status (icon + color)

### Common Issues

- Light gray text on white backgrounds
- Placeholder text that's too light
- Disabled buttons with insufficient contrast
- Link colors too similar to body text
- Charts relying solely on color differentiation

## Keyboard Navigation

### Tab Order

- Logical, predictable sequence (top-to-bottom, left-to-right)
- All interactive elements must be keyboard accessible
- Modal dialogs trap focus until dismissed
- Skip links for bypassing repetitive navigation

### Focus Indicators

- Must be visible on all interactive elements
- Minimum 2px border or outline
- High contrast against background
- Consistent across the interface
- Never remove focus indicators without replacement

### Keyboard Shortcuts

- Standard conventions: Tab (forward), Shift+Tab (backward), Enter (activate), Space (select/toggle), Escape (cancel/close), Arrow keys (navigate within component)
- Document custom shortcuts clearly
- Don't override browser/OS shortcuts
- Provide alternatives for mouse-only interactions

### Common Keyboard Patterns

**Dropdowns/Menus**

- Space/Enter to open
- Arrow keys to navigate options
- Escape to close
- Focus returns to trigger element

**Modal Dialogs**

- Focus moves to modal on open
- Tab cycles within modal
- Escape closes modal
- Focus returns to trigger on close

**Data Tables**

- Arrow keys for cell navigation
- Enter to activate/edit
- Tab to move between interactive elements

**Carousels/Tabs**

- Arrow keys to navigate between items/tabs
- Home/End for first/last
- Enter/Space to activate
- Pause control for auto-rotation

## Screen Reader Support

### Semantic HTML

Use proper HTML elements instead of generic divs:

- `<button>` for buttons (not `<div>` with click handler)
- `<a>` for links (not `<span>` with routing)
- `<nav>` for navigation regions
- `<main>` for main content
- `<header>`, `<footer>` for page sections
- `<article>`, `<section>` for content structure
- `<h1>`-`<h6>` for heading hierarchy

### ARIA Labels and Roles

**When to Use ARIA**

- Only when semantic HTML is insufficient
- Custom components without native equivalents
- Dynamic content and status updates
- Complex widgets (combobox, tree, accordion)

**Essential ARIA Attributes**

`aria-label`: Provides accessible name when visible label doesn't exist

```html
<button aria-label="Close dialog">×</button>
```text

`aria-labelledby`: References visible element(s) as label

```html
<h2 id="dialog-title">Confirm Action</h2>
<dialog aria-labelledby="dialog-title">
```text

`aria-describedby`: References additional descriptive text

```html
<input aria-describedby="password-help">
<div id="password-help">Must be 8+ characters</div>
```text

`role`: Defines element's purpose (use sparingly)

```html
<div role="alert">Error: Form submission failed</div>
```text

`aria-live`: Announces dynamic content changes

- `polite`: Announce when user is idle
- `assertive`: Announce immediately (use sparingly)
- `off`: Don't announce (default)

`aria-expanded`: Indicates collapsed/expanded state

```html
<button aria-expanded="false" aria-controls="menu-id">Menu</button>
```text

`aria-hidden`: Hides content from assistive technologies

```html
<span aria-hidden="true">★</span> <!-- Decorative icon -->
<span class="sr-only">Rating: 4 stars</span>
```text

### Heading Structure

- Single `<h1>` per page (page title)
- Logical hierarchy (don't skip levels)
- Descriptive, unique headings
- Used for structure, not styling

### Link Text

- Descriptive and self-contained
- Avoid "click here", "read more", "learn more"
- Include context: "Read more about accessibility testing"
- Distinguish between links: Not multiple "read more" links

### Form Labels

- Every input must have associated `<label>`
- Label text clearly describes purpose
- Required fields indicated (not color alone)
- Error messages associated with inputs

### Alternative Text

**Images**

- `alt` attribute required on all `<img>` tags
- Describe purpose/content, not "image of..."
- Decorative images: `alt=""` (empty, not omitted)
- Complex images: Provide extended description

**Icons**

- Functional icons: Descriptive label
- Decorative icons: `aria-hidden="true"`
- Icon + text: Text should be sufficient

### Table Accessibility

- `<caption>` for table purpose
- `<th>` for headers with `scope` attribute
- `scope="col"` for column headers
- `scope="row"` for row headers
- Simple structure preferred over complex nested tables

## Forms & Input

### Form Structure

- Logical grouping with `<fieldset>` and `<legend>`
- One column layout (easier to scan)
- Labels above inputs (not placeholder text)
- Clear indication of required fields

### Input Types

- Use appropriate HTML5 input types: email, tel, url, number, date
- Provides better mobile keyboards
- Built-in validation patterns
- Assistive technology benefits

### Error Handling

- Clear, specific error messages
- Associated with field via `aria-describedby`
- Announce errors to screen readers with `role="alert"`
- Error summary at top of form linking to fields
- Don't rely on color alone for error indication

### Form Validation

- Inline validation after field blur (not while typing)
- Success indicators for completed fields
- Clear format examples and constraints
- Allow paste for password fields
- Adequate time limits (or none)

## Dynamic Content

### Loading States

- Announce loading status: "Loading results..."
- Use `aria-live` for status updates
- Skeleton screens or spinners
- Maintain focus position during updates

### Infinite Scroll

- Announce new content loading
- Provide "Load more" button alternative
- Allow keyboard access to new items
- Maintain scroll position on back navigation

### Single Page Applications

- Announce route changes to screen readers
- Update page title on navigation
- Manage focus on route change (move to main content)
- Provide skip navigation link

### Notifications & Alerts

- `role="alert"` for important announcements
- `role="status"` for non-critical updates
- Position consistently (top-right, bottom-center)
- Persist critical alerts until dismissed
- Auto-dismiss non-critical (3-5 seconds)

## Multimedia

### Video

- Provide captions for all video content
- Audio descriptions for important visual content
- Keyboard controls for play/pause
- Don't auto-play videos
- Transcript available for download

### Audio

- Provide transcripts
- Visual indicators for audio playing
- Keyboard controls
- Volume control

### Animations

- Respect `prefers-reduced-motion` media query
- Provide static alternative or slow animation
- User control for auto-playing animations
- No flashing content (seizure risk): <3 flashes per second

## Touch & Mobile

### Touch Targets

- Minimum 44x44px (iOS), 48x48px (Android)
- Adequate spacing between targets (8px+)
- Thumb-friendly zones (bottom, sides)
- Avoid tiny touch targets or cramped layouts

### Gestures

- Provide alternatives to complex gestures
- Don't require precise gestures
- Use standard platform gestures
- Document custom gestures

### Orientation

- Support both portrait and landscape
- Don't lock orientation unless essential
- Adapt layout appropriately

## Responsive Design

### Zoom & Text Resize

- Support browser zoom up to 200%
- Support text-only zoom
- Avoid horizontal scrolling at 200% zoom
- No content cutoff or overlap
- Relative units (rem, em) instead of pixels for text

### Breakpoints

- Test at multiple viewport sizes
- Ensure functionality at all sizes
- Mobile-first approach
- Content parity across devices

## Testing Checklist

### Automated Testing

- Run accessibility scanners: Axe, WAVE, Lighthouse
- Catch ~30% of issues automatically
- Good starting point, not comprehensive

### Manual Testing

**Keyboard Only**

- Disconnect mouse
- Navigate entire interface with keyboard
- Verify all functionality accessible
- Check visible focus indicators

**Screen Reader**

- macOS: VoiceOver (Cmd+F5)
- Windows: NVDA (free), JAWS
- Test core user flows
- Verify announcements make sense

**Browser Zoom**

- Zoom to 200%
- Verify no content cutoff
- Check for horizontal scrolling
- Test all interactive elements

**Color Blindness**

- Simulate color blindness (Chrome DevTools)
- Verify information not color-dependent
- Test all color-coded elements

**Mobile Testing**

- Test on real devices if possible
- Check touch target sizes
- Verify gesture alternatives
- Test screen reader on mobile

### User Testing

- Include users with disabilities
- Observe assistive technology usage
- Real-world scenarios
- Iterate based on feedback

## Common Issues & Solutions

### Issue: Custom Checkboxes Without States

**Problem**: Styled checkbox that doesn't show focus or checked states
**Solution**: Use native checkbox with CSS styling, maintain all native states

### Issue: Modal Without Focus Trap

**Problem**: Tab key exits modal, focusing hidden content
**Solution**: Implement focus trap, return focus on close

### Issue: Icon-Only Buttons

**Problem**: Icons without text labels
**Solution**: Add visually-hidden text or aria-label

### Issue: Non-Semantic Clickable Divs

**Problem**: `<div onclick="">` instead of button
**Solution**: Use `<button>` element, gets keyboard support free

### Issue: Form Without Labels

**Problem**: Placeholder as label disappears on focus
**Solution**: Use `<label>` element associated with input

### Issue: Low Contrast Text

**Problem**: Gray text on light background fails contrast
**Solution**: Darken text or use fewer gray variations

### Issue: No Error Announcement

**Problem**: Form errors show visually but silent to screen readers
**Solution**: Use `role="alert"` and `aria-describedby`

### Issue: Carousel Without Pause

**Problem**: Auto-rotating carousel can't be stopped
**Solution**: Provide pause button, pause on hover/focus

### Issue: Missing Skip Link

**Problem**: Keyboard users must tab through navigation
**Solution**: Add skip link to main content

### Issue: Insufficient Touch Targets

**Problem**: Buttons too small on mobile
**Solution**: Increase size to 44x44px minimum

## Resources & Tools

### Browser Extensions

- Axe DevTools: Automated accessibility testing
- WAVE: Visual feedback on accessibility issues
- Lighthouse: Overall site quality including accessibility

### Testing Tools

- WebAIM Contrast Checker: Color contrast analysis
- Color Oracle: Color blindness simulation
- NVDA: Free screen reader for Windows
- VoiceOver: Built-in macOS/iOS screen reader

### Standards & References

- WCAG 2.1: <https://www.w3.org/WAI/WCAG21/quickref/>
- WAI-ARIA Authoring Practices: <https://www.w3.org/WAI/ARIA/apg/>
- MDN Accessibility: <https://developer.mozilla.org/en-US/docs/Web/Accessibility>

### Priority Levels

**P0 (Blockers)** - Fix immediately

- Keyboard navigation completely broken
- Cannot access core functionality
- Severe contrast issues (cannot read)
- Missing form labels

**P1 (High Priority)** - Fix soon

- Focus indicators missing
- ARIA labels missing on custom controls
- Heading hierarchy broken
- Modal focus trap missing

**P2 (Medium Priority)** - Fix in roadmap

- Contrast slightly below threshold
- Missing alt text on non-critical images
- Link text could be more descriptive
- Some animations without reduced-motion support

**P3 (Low Priority)** - Nice to have

- Minor semantic HTML improvements
- Additional ARIA enhancements
- Extended keyboard shortcuts
- Enhanced mobile gestures
