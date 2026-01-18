# WCAG Standards Reference

Comprehensive reference for Web Content Accessibility Guidelines (WCAG) 2.1 and 2.2 success criteria. Use when evaluating accessibility compliance or understanding specific requirements.

## WCAG Overview

**Web Content Accessibility Guidelines (WCAG)**: International standard for web accessibility developed by W3C.

**Current Versions**:

- **WCAG 2.1** (June 2018): Adds mobile, low vision, cognitive criteria
- **WCAG 2.2** (October 2023): Adds 9 new criteria, focuses on mobile and cognitive

**Conformance Levels**:

- **Level A**: Minimum (basic accessibility)
- **Level AA**: Standard (legal compliance target)
- **Level AAA**: Enhanced (highest level, not always achievable)

**Four Principles (POUR)**:

1. **Perceivable**: Users must be able to perceive information
2. **Operable**: Users must be able to operate the interface
3. **Understandable**: Users must understand information and operation
4. **Robust**: Content must work with current and future technologies

## How to Use This Reference

**Format**:

```
Criterion Number: Name - Level
Description
Requirements
Common Failures
How to Meet
```

**Quick Lookup**:

- Know the criterion number? Jump to it
- Need all contrast rules? Search "contrast"
- Looking for keyboard rules? Search "keyboard"

## Principle 1: Perceivable

Information and UI components must be presentable to users in ways they can perceive.

### Guideline 1.1: Text Alternatives

Provide text alternatives for non-text content.

#### 1.1.1: Non-text Content - Level A

**Requirement**: All non-text content has a text alternative that serves the equivalent purpose.

**Applies To**:

- Images
- Icons
- Charts/graphs
- Audio/video (alternative)
- Form controls (labels)
- CAPTCHAs

**Requirements**:

- **Images**: Alt text describing content/function
- **Decorative images**: Empty alt attribute (alt="")
- **Complex images**: Long description linked or nearby
- **Icons**: Accessible label (aria-label or visually hidden text)
- **Form controls**: Associated labels
- **CAPTCHAs**: Alternative verification method

**Common Failures**:

- Missing alt attributes
- Generic alt text ("image", "picture")
- Redundant alt text (repeating caption)
- Alt text on decorative images
- Icons without labels

**How to Meet**:

```html
<!-- Informative image -->
<img src="chart.png" alt="Sales increased 25% in Q4 2025">

<!-- Decorative image -->
<img src="divider.png" alt="" role="presentation">

<!-- Icon button -->
<button aria-label="Delete">
  <svg>...</svg>
</button>

<!-- Complex image -->
<img src="complex-chart.png" alt="Quarterly revenue chart" 
     aria-describedby="chart-desc">
<div id="chart-desc">
  Detailed description of chart data...
</div>
```

### Guideline 1.2: Time-Based Media

Provide alternatives for time-based media (audio/video).

#### 1.2.1: Audio-only and Video-only - Level A

- Pre-recorded audio-only: Provide transcript
- Pre-recorded video-only: Provide transcript or audio description

#### 1.2.2: Captions (Prerecorded) - Level A

- All prerecorded video with audio must have captions

#### 1.2.3: Audio Description or Media Alternative - Level A

- Prerecorded video must have audio description or full text alternative

#### 1.2.4: Captions (Live) - Level AA

- All live audio content in synchronized media must have captions

#### 1.2.5: Audio Description (Prerecorded) - Level AA

- Audio description provided for all prerecorded video content

### Guideline 1.3: Adaptable

Create content that can be presented in different ways without losing information or structure.

#### 1.3.1: Info and Relationships - Level A

**Requirement**: Information, structure, and relationships conveyed through presentation can be programmatically determined.

**Requirements**:

- Use proper semantic HTML
- Headings for document structure (H1-H6)
- Lists for list content (ul, ol)
- Tables for tabular data (table, th, td)
- Form labels associated with inputs
- ARIA landmarks for page regions

**Common Failures**:

- Using <div> instead of semantic HTML
- Visual-only headings (styled text, not <h1-6>)
- Tables for layout (not data)
- Unlabeled form fields
- No landmark regions

**How to Meet**:

```html
<!-- Proper heading structure -->
<h1>Dashboard</h1>
<h2>Active Alerts</h2>
<h3>Critical Alerts</h3>

<!-- Proper list -->
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
</ul>

<!-- Proper form label -->
<label for="email">Email Address</label>
<input id="email" type="email">

<!-- Landmark regions -->
<header>...</header>
<nav>...</nav>
<main>...</main>
<footer>...</footer>
```

#### 1.3.2: Meaningful Sequence - Level A

**Requirement**: Correct reading sequence can be programmatically determined when sequence affects meaning.

**Common Failures**:

- CSS positioning breaks logical order
- Tab order doesn't match visual order
- Content order illogical for screen readers

#### 1.3.3: Sensory Characteristics - Level A

**Requirement**: Instructions don't rely solely on sensory characteristics (shape, size, visual location, orientation, sound).

**Bad Examples**:

- "Click the round button" (relies on shape)
- "Use the button on the right" (relies on location)
- "Listen for the beep" (relies on sound)

**Good Examples**:

- "Click the Delete button"
- "Click Save Changes at the bottom of the form"
- "Notification sound and visual indicator"

#### 1.3.4: Orientation - Level AA (2.1)

**Requirement**: Content doesn't restrict its view to a single display orientation (portrait or landscape) unless specific orientation is essential.

**How to Meet**:

- Support both portrait and landscape
- Use responsive design
- Don't lock orientation programmatically

#### 1.3.5: Identify Input Purpose - Level AA (2.1)

**Requirement**: Purpose of input fields collecting user information can be programmatically determined when content is implemented using standard technologies.

**How to Meet**:

```html
<!-- Use autocomplete attributes -->
<input type="text" 
       name="given-name" 
       autocomplete="given-name">
       
<input type="email" 
       name="email" 
       autocomplete="email">
       
<input type="tel" 
       name="phone" 
       autocomplete="tel">
```

### Guideline 1.4: Distinguishable

Make it easier for users to see and hear content.

#### 1.4.1: Use of Color - Level A

**Requirement**: Color is not the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.

**Common Failures**:

- Links only distinguished by color
- Required fields only shown in red
- Chart data only differentiated by color
- Status indicators by color alone
- Form errors only in red text

**How to Meet**:

```html
<!-- Links: Use underline + color -->
<a href="#" style="text-decoration: underline; color: blue;">

<!-- Required fields: Add asterisk + color -->
<label>
  Email Address <span style="color: red;">*</span>
</label>

<!-- Status: Icon + color -->
<span style="color: red;">
  [!] Critical
</span>

<!-- Chart: Pattern + color -->
<!-- Add patterns/textures, not just colors -->
```

#### 1.4.3: Contrast (Minimum) - Level AA

**Requirement**: Text and images of text have a contrast ratio of at least:

- **4.5:1** for normal text (under 18pt or 14pt bold)
- **3:1** for large text (18pt+ or 14pt+ bold)

**Applies To**:

- Body text
- Headings
- Button text
- Link text
- Form labels
- Placeholder text
- Icon labels

**Exceptions**:

- Logos
- Decorative text (no information)
- Inactive/disabled elements
- Incidental text (in photos)

**How to Check**:

- WebAIM Contrast Checker
- Chrome DevTools Color Picker
- Stark (Figma plugin)

**Common Failures**:

- Light gray text on white: #999 on #FFF = 2.85:1 (FAIL)
- Blue links on black: #0066FF on #000 = 3.2:1 (FAIL)
- Yellow text on white: #FFFF00 on #FFF = 1.07:1 (FAIL)

**Passing Examples**:

- Dark gray on white: #595959 on #FFF = 7:1 (PASS)
- Blue links on white: #0000EE on #FFF = 8.6:1 (PASS)
- White text on dark blue: #FFF on #003366 = 10.7:1 (PASS)

#### 1.4.4: Resize Text - Level AA

**Requirement**: Text can be resized up to 200% without loss of content or functionality.

**How to Meet**:

- Use relative units (rem, em, %)
- Don't use fixed pixel widths
- Test browser zoom to 200%
- Content reflows, doesn't overflow
- No horizontal scrolling needed

**Common Failures**:

- Fixed pixel font sizes
- Containers too small for text
- Text overlapping at larger sizes
- Content cut off when zoomed

#### 1.4.5: Images of Text - Level AA

**Requirement**: Use actual text rather than images of text (unless essential or customizable).

**Exceptions**:

- Logos
- Specific visual presentation (artistic)
- User-customizable appearance

**How to Meet**:

- Use web fonts, not text images
- CSS for styling, not images
- SVG text when needed

#### 1.4.6: Contrast (Enhanced) - Level AAA

**Requirement**: Text and images of text have a contrast ratio of at least:

- **7:1** for normal text
- **4.5:1** for large text

*Note: This is stricter than Level AA (1.4.3)*

#### 1.4.10: Reflow - Level AA (2.1)

**Requirement**: Content reflows without requiring scrolling in two dimensions at 320 CSS pixels width (equivalent to 400% zoom or 1280px width).

**How to Meet**:

- Responsive design
- No horizontal scrolling at 320px width
- Content stacks vertically on small screens
- Test at 400% browser zoom

**Exceptions**:

- Data tables
- Maps
- Diagrams requiring 2D layout

#### 1.4.11: Non-text Contrast - Level AA (2.1)

**Requirement**: UI components and graphical objects have a contrast ratio of at least **3:1** against adjacent colors.

**Applies To**:

- Buttons and controls
- Input borders
- Focus indicators
- Charts and graphs
- Icons (meaningful)
- Visual boundaries

**Common Failures**:

- Light gray button border: #CCC on #FFF = 1.6:1 (FAIL)
- Subtle input borders: #DDD on #FFF = 1.3:1 (FAIL)
- Faint focus indicators: #AAA on #FFF = 2.3:1 (FAIL)

**Passing Examples**:

- Button border: #767676 on #FFF = 4.5:1 (PASS)
- Input border: #666 on #FFF = 5.7:1 (PASS)
- Focus outline: #0000FF on #FFF = 8.6:1 (PASS)

#### 1.4.12: Text Spacing - Level AA (2.1)

**Requirement**: No loss of content or functionality when user adjusts:

- Line height to at least 1.5x font size
- Paragraph spacing to at least 2x font size
- Letter spacing to at least 0.12x font size
- Word spacing to at least 0.16x font size

**How to Meet**:

- Don't use fixed heights on text containers
- Test with text spacing bookmarklet
- Allow content to expand

#### 1.4.13: Content on Hover or Focus - Level AA (2.1)

**Requirement**: Content that appears on hover or focus must be:

- **Dismissible**: Can close without moving pointer/focus
- **Hoverable**: Pointer can move to hover content
- **Persistent**: Stays visible until dismissed or no longer relevant

**Applies To**:

- Tooltips
- Dropdown menus
- Popovers
- Context menus

**How to Meet**:

```javascript
// Allow Escape key to dismiss
element.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') {
    hideTooltip();
  }
});

// Keep tooltip open when hovering over it
tooltip.addEventListener('mouseenter', () => {
  keepTooltipOpen();
});
```

## Principle 2: Operable

UI components and navigation must be operable.

### Guideline 2.1: Keyboard Accessible

Make all functionality available from a keyboard.

#### 2.1.1: Keyboard - Level A

**Requirement**: All functionality is operable through keyboard with no specific timings required for individual keystrokes.

**Keyboard Patterns**:

- **Tab**: Move forward through interactive elements
- **Shift+Tab**: Move backward through interactive elements
- **Enter/Space**: Activate buttons and links
- **Arrow keys**: Navigate within components (menus, tabs, radio buttons)
- **Escape**: Close modals and menus

**Common Failures**:

- Click-only functionality (no keyboard handler)
- Custom controls without keyboard support
- Focus trapped in modal (can't escape)
- Dropdown requires mouse
- Image links without keyboard access

**How to Meet**:

```javascript
// Click-only (BAD)
<div onClick={handleClick}>Click me</div>

// Keyboard accessible (GOOD)
<button onClick={handleClick}>Click me</button>

// Custom control (GOOD)
<div role="button" 
     tabIndex="0"
     onClick={handleClick}
     onKeyDown={(e) => {
       if (e.key === 'Enter' || e.key === ' ') {
         handleClick();
       }
     }}>
  Click me
</div>
```

#### 2.1.2: No Keyboard Trap - Level A

**Requirement**: Keyboard focus can move away from any component using only keyboard.

**Common Failures**:

- Modal dialog traps focus permanently
- Embedded content (iframe, plugin) traps focus
- Custom components without focus management

**How to Meet**:

```javascript
// Trap focus within modal
function trapFocus(modal) {
  const focusable = modal.querySelectorAll('a, button, input, [tabindex="0"]');
  const first = focusable[0];
  const last = focusable[focusable.length - 1];
  
  modal.addEventListener('keydown', (e) => {
    if (e.key === 'Tab') {
      if (e.shiftKey && document.activeElement === first) {
        e.preventDefault();
        last.focus();
      } else if (!e.shiftKey && document.activeElement === last) {
        e.preventDefault();
        first.focus();
      }
    }
    
    // Allow Escape to exit
    if (e.key === 'Escape') {
      closeModal();
    }
  });
}
```

#### 2.1.4: Character Key Shortcuts - Level A (2.1)

**Requirement**: If keyboard shortcut uses only character keys, then one of the following is true:

- Can turn off
- Can remap
- Only active when component has focus

**Why**: Single-key shortcuts can interfere with assistive tech.

**How to Meet**:

- Use modifier keys (Ctrl, Alt, Cmd)
- Provide settings to disable shortcuts
- Only activate when component focused

### Guideline 2.2: Enough Time

Provide users enough time to read and use content.

#### 2.2.1: Timing Adjustable - Level A

**Requirement**: User can turn off, adjust, or extend time limits (unless real-time or essential).

**Applies To**:

- Session timeouts
- Timed tests
- Auto-advancing carousels
- Auto-updating content

**How to Meet**:

- Provide warning before timeout (e.g., "Session expires in 2 minutes")
- Allow user to extend time with simple action
- Provide setting to adjust time limit
- Or remove time limit entirely

#### 2.2.2: Pause, Stop, Hide - Level A

**Requirement**: For moving, blinking, scrolling, or auto-updating content:

- User can pause, stop, or hide it
- Unless it's essential

**Applies To**:

- Auto-advancing carousels
- Scrolling news tickers
- Auto-updating dashboards
- Animated content

**How to Meet**:

```html
<!-- Carousel with controls -->
<div class="carousel">
  <button aria-label="Pause carousel">Pause</button>
  <button aria-label="Previous slide">Previous</button>
  <button aria-label="Next slide">Next</button>
</div>

<!-- Auto-updating with pause -->
<div role="region" aria-live="polite" aria-atomic="true">
  <button onClick={pauseUpdates}>Pause Updates</button>
  <div>Last updated: {timestamp}</div>
</div>
```

### Guideline 2.3: Seizures and Physical Reactions

Don't design content that could cause seizures or physical reactions.

#### 2.3.1: Three Flashes or Below Threshold - Level A

**Requirement**: No content flashes more than 3 times per second, or flash is below general flash and red flash thresholds.

**Why**: Flashing content can trigger seizures.

**How to Meet**:

- Avoid flashing content entirely
- If necessary, limit to 3 flashes/second maximum
- Keep flash small (under 25% of screen)
- Test with tools (PEAT)

### Guideline 2.4: Navigable

Provide ways to help users navigate, find content, and determine where they are.

#### 2.4.1: Bypass Blocks - Level A

**Requirement**: Mechanism to bypass repeated blocks of content (like navigation).

**How to Meet**:

```html
<!-- Skip link -->
<a href="#main-content" class="skip-link">
  Skip to main content
</a>

<nav>...</nav>

<main id="main-content">
  ...
</main>

<style>
.skip-link {
  position: absolute;
  top: -40px;
}
.skip-link:focus {
  top: 0;
}
</style>
```

#### 2.4.2: Page Titled - Level A

**Requirement**: Web pages have descriptive titles.

**How to Meet**:

```html
<!-- Specific, descriptive titles -->
<title>Dashboard - MetricsHub</title>
<title>Edit Profile - User Settings - MetricsHub</title>
<title>Critical Alert: API Gateway Down - MetricsHub</title>

<!-- Avoid generic titles -->
<title>Page</title> <!-- BAD -->
<title>Home</title> <!-- BAD -->
```

#### 2.4.3: Focus Order - Level A

**Requirement**: Components receive focus in an order that preserves meaning and operability.

**How to Meet**:

- Natural DOM order matches visual order
- Use CSS for layout, not reordering
- Test with Tab key
- Avoid positive tabindex values

#### 2.4.4: Link Purpose (In Context) - Level A

**Requirement**: Purpose of each link can be determined from link text alone or from link text together with programmatically determined context.

**Bad Examples**:

```html
<a href="report.pdf">Click here</a>
<a href="/docs">Learn more</a>
<a href="/settings">Here</a>
```

**Good Examples**:

```html
<a href="report.pdf">Download Q4 Financial Report (PDF)</a>
<a href="/docs">Read API documentation</a>
<a href="/settings">Configure alert settings</a>
```

#### 2.4.5: Multiple Ways - Level AA

**Requirement**: More than one way to locate a page within a set of web pages (except for specific process steps).

**Ways to Meet**:

- Search functionality
- Table of contents
- Site map
- Navigation menu
- Breadcrumbs

#### 2.4.6: Headings and Labels - Level AA

**Requirement**: Headings and labels describe topic or purpose.

**How to Meet**:

```html
<!-- Descriptive headings -->
<h2>Active Critical Alerts</h2>
<h2>Recent Deployments</h2>
<h2>Team Performance Metrics</h2>

<!-- Avoid generic -->
<h2>Section 1</h2> <!-- BAD -->
<h2>Items</h2> <!-- BAD -->
```

#### 2.4.7: Focus Visible - Level AA

**Requirement**: Keyboard focus indicator is visible.

**How to Meet**:

```css
/* Custom focus indicator */
button:focus,
a:focus,
input:focus {
  outline: 2px solid #0066FF;
  outline-offset: 2px;
}

/* Never remove outline without replacement */
*:focus {
  outline: none; /* BAD - DON'T DO THIS */
}
```

#### 2.4.11: Focus Not Obscured (Minimum) - Level AA (2.2)

**Requirement**: When component receives focus, it's not entirely hidden by author-created content.

**Common Failures**:

- Sticky headers covering focused element
- Fixed footers hiding focused buttons
- Modals overlapping focused content

#### 2.4.13: Focus Appearance - Level AAA (2.2)

**Requirement**: Focus indicator has minimum 2 CSS pixels thickness and contrast ratio of at least 3:1.

### Guideline 2.5: Input Modalities

Make it easier for users to operate functionality through various inputs beyond keyboard.

#### 2.5.1: Pointer Gestures - Level A (2.1)

**Requirement**: Functionality operated by multipoint or path-based gestures has single-pointer alternative (unless essential).

**How to Meet**:

- Pinch zoom: Provide zoom buttons
- Two-finger scroll: Single-finger scroll works
- Swipe gestures: Provide buttons as alternative
- Drag-and-drop: Provide cut/paste or buttons

#### 2.5.2: Pointer Cancellation - Level A (2.1)

**Requirement**: For single-pointer functionality:

- No down-event (onClick on mouse up, not down)
- Abort or undo available
- Up-event reverses down-event
- Or completing on down-event is essential

#### 2.5.3: Label in Name - Level A (2.1)

**Requirement**: For UI components with visible text labels, the accessible name contains the visible text.

**How to Meet**:

```html
<!-- Visible label matches accessible name -->
<button aria-label="Save Changes">Save Changes</button>

<!-- GOOD: Visual and accessible name match -->
<button>Delete</button>

<!-- BAD: Mismatch -->
<button aria-label="Remove item">Delete</button>
```

#### 2.5.4: Motion Actuation - Level A (2.1)

**Requirement**: Functionality triggered by device motion or user motion has alternative (unless essential), and can be disabled.

**Examples**:

- Shake to undo: Provide undo button
- Tilt to scroll: Provide scroll controls
- Voice commands: Provide button alternative

#### 2.5.7: Dragging Movements - Level AA (2.2)

**Requirement**: Functionality that uses dragging movement has single-pointer alternative (unless essential).

**How to Meet**:

- Drag-and-drop: Provide cut/paste or buttons
- Slider: Provide input field for value
- Reorder list: Provide up/down buttons

#### 2.5.8: Target Size (Minimum) - Level AA (2.2)

**Requirement**: Target size is at least 24x24 CSS pixels, with exceptions.

**How to Meet**:

- Touch targets 24x24px minimum
- Better: 44x44px (mobile standard)
- Ensure adequate spacing between targets
- Test on mobile devices

## Principle 3: Understandable

Information and operation of UI must be understandable.

### Guideline 3.1: Readable

Make text content readable and understandable.

#### 3.1.1: Language of Page - Level A

**Requirement**: Default human language of page can be programmatically determined.

**How to Meet**:

```html
<html lang="en">
<html lang="es">
<html lang="fr">
```

#### 3.1.2: Language of Parts - Level AA

**Requirement**: Language of each passage or phrase can be programmatically determined (except proper names, technical terms, words of indeterminate language).

**How to Meet**:

```html
<p>The French phrase <span lang="fr">bon appétit</span> means...</p>
<blockquote lang="es">El español es hermoso.</blockquote>
```

### Guideline 3.2: Predictable

Make web pages appear and operate in predictable ways.

#### 3.2.1: On Focus - Level A

**Requirement**: Component receiving focus doesn't initiate a change of context.

**Don't**:

- Auto-submit form on focus
- Open modal on focus
- Navigate to new page on focus

#### 3.2.2: On Input - Level A

**Requirement**: Changing component setting doesn't automatically cause change of context (unless user warned beforehand).

**Don't**:

- Auto-submit on selection
- Navigate on dropdown change (without warning)

**Do**:

```html
<select onChange={handleChange}>
  <option>Select action</option>
</select>
<button onClick={executeAction}>Go</button>
```

#### 3.2.3: Consistent Navigation - Level AA

**Requirement**: Navigation repeated on multiple pages occurs in same relative order each time.

#### 3.2.4: Consistent Identification - Level AA

**Requirement**: Components with same functionality are identified consistently.

**Example**:

- If "Search" icon is magnifying glass on one page, use same icon on all pages
- If "Delete" is red trash can on one page, use consistently

### Guideline 3.3: Input Assistance

Help users avoid and correct mistakes.

#### 3.3.1: Error Identification - Level A

**Requirement**: If input error is detected, item in error is identified and error described in text.

**How to Meet**:

```html
<label for="email">Email Address</label>
<input id="email" 
       type="email" 
       aria-invalid="true"
       aria-describedby="email-error">
<span id="email-error" role="alert">
  Email must include @ symbol
</span>
```

#### 3.3.2: Labels or Instructions - Level A

**Requirement**: Labels or instructions provided when content requires user input.

**How to Meet**:

```html
<!-- Clear labels -->
<label for="password">Password</label>
<input id="password" type="password">
<span>Must be at least 8 characters</span>

<!-- Format instructions -->
<label for="phone">Phone Number</label>
<input id="phone" type="tel" placeholder="(555) 123-4567">
<span>Format: (XXX) XXX-XXXX</span>
```

#### 3.3.3: Error Suggestion - Level AA

**Requirement**: If input error is detected and suggestions known, provide suggestions (unless it would jeopardize security).

**How to Meet**:

```
BAD: "Invalid email"
GOOD: "Email must include @ symbol (e.g., you@company.com)"

BAD: "Date format error"
GOOD: "Date format: MM/DD/YYYY (e.g., 01/15/2026)"
```

#### 3.3.4: Error Prevention (Legal, Financial, Data) - Level AA

**Requirement**: For legal/financial transactions or data modifications, one of the following is true:

- Reversible
- Checked (data validated)
- Confirmed (review before submission)

#### 3.3.7: Redundant Entry - Level A (2.2)

**Requirement**: Information previously entered or provided is auto-populated or selectable (except when essential, necessary for security, or previously entered invalid).

**How to Meet**:

- Use autocomplete attributes
- Pre-fill known information
- Remember previous entries
- Copy data between steps

## Principle 4: Robust

Content must be robust enough to be interpreted by a wide variety of user agents, including assistive technologies.

### Guideline 4.1: Compatible

Maximize compatibility with current and future user agents, including assistive technologies.

#### 4.1.2: Name, Role, Value - Level A

**Requirement**: For all UI components, name and role can be programmatically determined; states, properties, and values that can be set by the user can be programmatically set; and notification of changes to these items is available to user agents, including assistive technologies.

**How to Meet**:

```html
<!-- Native HTML (best) -->
<button>Save</button>
<input type="checkbox">

<!-- Custom component (requires ARIA) -->
<div role="button" 
     aria-label="Save" 
     tabindex="0">
  Save
</div>

<div role="checkbox" 
     aria-checked="false" 
     tabindex="0">
  Subscribe
</div>
```

#### 4.1.3: Status Messages - Level AA (2.1)

**Requirement**: Status messages can be programmatically determined through role or properties so they can be presented to user without receiving focus.

**How to Meet**:

```html
<!-- Success message -->
<div role="status" aria-live="polite">
  Changes saved successfully
</div>

<!-- Error message -->
<div role="alert" aria-live="assertive">
  Connection lost. Retrying...
</div>

<!-- Loading -->
<div role="status" aria-live="polite" aria-busy="true">
  Loading dashboard...
</div>
```

## Quick Reference Tables

### Contrast Requirements

| Content Type | Level AA | Level AAA |
|-------------|----------|-----------|
| Normal text (< 18pt) | 4.5:1 | 7:1 |
| Large text (18pt+) | 3:1 | 4.5:1 |
| UI components | 3:1 | - |
| Graphical objects | 3:1 | - |

### Touch Target Sizes

| Standard | Minimum Size |
|----------|--------------|
| WCAG 2.2 AA | 24x24 CSS pixels |
| Mobile best practice | 44x44 CSS pixels |
| Apple HIG | 44x44 points |
| Material Design | 48x48 dp |

### Keyboard Shortcuts

| Key | Common Use |
|-----|------------|
| Tab | Next focusable element |
| Shift+Tab | Previous element |
| Enter | Activate button/link |
| Space | Activate button, toggle checkbox |
| Arrow keys | Navigate within component |
| Escape | Close modal/menu |
| Home/End | Start/end of list/content |
| Page Up/Down | Scroll |

## Common WCAG Failures

**Most Common**:

1. Low contrast text (1.4.3)
2. Missing alt text (1.1.1)
3. No keyboard access (2.1.1)
4. Missing form labels (3.3.2)
5. Missing focus indicator (2.4.7)
6. Poor heading structure (1.3.1)
7. Color-only information (1.4.1)
8. Non-semantic HTML (1.3.1)

## Testing Priority

**Start With** (Highest Impact):

1. Keyboard navigation (2.1.1)
2. Color contrast (1.4.3, 1.4.11)
3. Alt text (1.1.1)
4. Form labels (3.3.2)
5. Focus indicators (2.4.7)

**Then Address**:
6. Heading structure (1.3.1)
7. ARIA usage (4.1.2)
8. Link purpose (2.4.4)
9. Error messages (3.3.1, 3.3.3)
10. Touch targets (2.5.8)

## Resources

**Official**:

- WCAG 2.1: <https://www.w3.org/WAI/WCAG21/quickref/>
- WCAG 2.2: <https://www.w3.org/WAI/WCAG22/quickref/>
- Understanding WCAG: <https://www.w3.org/WAI/WCAG22/Understanding/>

**Tools**:

- WebAIM: Contrast checker, evaluation tools
- WAVE: Browser extension for testing
- axe DevTools: Automated testing

**Communities**:

- A11y Project: Resources and checklist
- WebAIM: Articles and forums
- Deque: Accessibility resources
