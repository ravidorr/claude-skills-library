# ARIA Guide Reference

Comprehensive guide to ARIA (Accessible Rich Internet Applications) - when to use it, how to use it correctly, and common patterns.

## ARIA First Rule

**Use native HTML when possible. Only use ARIA when HTML can't do what you need.**

```html
<!-- GOOD: Native HTML -->
<button>Click Me</button>

<!-- AVOID: Unnecessary ARIA -->
<div role="button" tabindex="0" 
     onclick="..." onkeydown="...">
  Click Me
</div>
```text

## When to Use ARIA

**Valid ARIA Use Cases**:

1. Dynamic content updates (live regions)
2. Complex custom widgets (no native equivalent)
3. Additional context for assistive tech
4. Relationships not expressed in HTML

**Don't Use ARIA For**:

- Things native HTML can do
- Visual styling (use CSS)
- Redundant information

## ARIA Core Concepts

### Roles

**Definition**: Defines what an element is or does.

**Categories**:

- **Landmark Roles**: Page structure (banner, navigation, main, complementary)
- **Widget Roles**: Interactive elements (button, checkbox, tab, slider)
- **Document Structure**: Content organization (article, heading, list)
- **Live Region**: Dynamic content (alert, status, log)

**Example**:

```html
<div role="alert">Error: Connection lost</div>
<div role="navigation">...</div>
<div role="tabpanel">...</div>
```text

### States

**Definition**: Current condition of element (changes over time).

**Examples**:

- aria-expanded (true/false)
- aria-checked (true/false/mixed)
- aria-pressed (true/false/mixed)
- aria-selected (true/false)
- aria-hidden (true/false)
- aria-disabled (true/false)
- aria-invalid (true/false)
- aria-busy (true/false)

**Example**:

```html
<button aria-expanded="false" 
        aria-controls="menu">
  Menu
</button>

<input type="text" 
       aria-invalid="true" 
       aria-describedby="error">
```text

### Properties

**Definition**: Characteristics of element (generally don't change).

**Examples**:

- aria-label (string)
- aria-labelledby (ID reference)
- aria-describedby (ID reference)
- aria-required (true/false)
- aria-haspopup (true/false/menu/listbox/tree/grid/dialog)
- aria-controls (ID reference)
- aria-owns (ID reference)

**Example**:

```html
<button aria-label="Close dialog" 
        aria-haspopup="dialog">
  ×
</button>

<input aria-required="true" 
       aria-describedby="help-text">
<span id="help-text">Format: MM/DD/YYYY</span>
```text

## ARIA Labeling

### aria-label

**When**: Element has no visible label

```html
<!-- Icon button -->
<button aria-label="Delete">
  <svg>...</svg>
</button>

<!-- Close button -->
<button aria-label="Close">×</button>

<!-- Search input (if placeholder not sufficient) -->
<input type="search" 
       aria-label="Search products">
```text

**Don't**: Use on elements that shouldn't have labels

```html
<!-- BAD: Div isn't interactive -->
<div aria-label="Content">...</div>

<!-- BAD: Heading already has text -->
<h1 aria-label="Welcome">Welcome</h1>
```text

### aria-labelledby

**When**: Label exists elsewhere on page (visible text)

```html
<!-- Form field labeled by heading -->
<h2 id="billing-heading">Billing Information</h2>
<div role="region" aria-labelledby="billing-heading">
  <input type="text" name="card">
</div>

<!-- Button labeled by multiple elements -->
<button aria-labelledby="action-icon action-text">
  <svg id="action-icon">...</svg>
  <span id="action-text">Save</span>
</button>

<!-- Modal labeled by its title -->
<div role="dialog" aria-labelledby="dialog-title">
  <h2 id="dialog-title">Confirm Action</h2>
  ...
</div>
```text

**Priority**: aria-labelledby overrides aria-label and element's text

### aria-describedby

**When**: Additional context needed beyond label

```html
<!-- Form field with help text -->
<label for="password">Password</label>
<input id="password" 
       type="password"
       aria-describedby="password-hint">
<span id="password-hint">
  Must be at least 8 characters
</span>

<!-- Error message -->
<input id="email" 
       aria-invalid="true"
       aria-describedby="email-error">
<span id="email-error" role="alert">
  Email must include @ symbol
</span>

<!-- Tooltip-style description -->
<button aria-describedby="info-tooltip">
  <svg>...</svg>
</button>
<div id="info-tooltip" role="tooltip">
  Learn more about this feature
</div>
```text

## Live Regions

**Purpose**: Announce dynamic content changes to screen readers.

### aria-live

**Values**:

- **off**: Updates not announced (default)
- **polite**: Announce when user idle
- **assertive**: Announce immediately

```html
<!-- Polite announcement -->
<div aria-live="polite">
  Changes saved successfully
</div>

<!-- Urgent announcement -->
<div aria-live="assertive">
  Connection lost! Reconnecting...
</div>
```text

### role="alert"

**Purpose**: Important message requiring immediate attention
**Equivalent**: aria-live="assertive"

```html
<div role="alert">
  Error: Form submission failed
</div>
```text

### role="status"

**Purpose**: Advisory information, not important enough for alert
**Equivalent**: aria-live="polite"

```html
<div role="status">
  Loading... 45% complete
</div>

<div role="status">
  3 new messages
</div>
```text

### aria-atomic

**When**: Control whether entire region announced or just changes
**Values**: true (announce entire region) / false (announce only changes)

```html
<!-- Announce entire message -->
<div aria-live="polite" aria-atomic="true">
  <p>Page 2 of 10</p>
</div>

<!-- Announce only what changed -->
<div aria-live="polite" aria-atomic="false">
  Items added: <span id="count">3</span>
</div>
```text

### aria-relevant

**When**: Control which changes announced
**Values**: additions, removals, text, all

```html
<!-- Announce text changes only -->
<div aria-live="polite" aria-relevant="text">
  <p id="status">Ready</p>
</div>

<!-- Announce additions and removals -->
<div aria-live="polite" aria-relevant="additions removals">
  <ul id="task-list">...</ul>
</div>
```text

## Common ARIA Patterns

### Button

**Native HTML Preferred**:

```html
<button onClick={handleClick}>Click Me</button>
```text

**Custom Button** (when absolutely necessary):

```html
<div role="button" 
     tabindex="0"
     onClick={handleClick}
     onKeyDown={(e) => {
       if (e.key === 'Enter' || e.key === ' ') {
         e.preventDefault();
         handleClick();
       }
     }}>
  Click Me
</div>
```text

**Toggle Button**:

```html
<button aria-pressed="false">
  Mute
</button>

<!-- When pressed -->
<button aria-pressed="true">
  Mute
</button>
```text

### Checkbox

**Native HTML Preferred**:

```html
<input type="checkbox" id="agree">
<label for="agree">I agree</label>
```text

**Custom Checkbox**:

```html
<div role="checkbox" 
     aria-checked="false"
     tabindex="0"
     onKeyDown={(e) => {
       if (e.key === ' ') {
         toggleChecked();
       }
     }}>
  I agree
</div>
```text

**Tri-state Checkbox** (parent with children):

```html
<div role="checkbox" 
     aria-checked="mixed"
     tabindex="0">
  Select All
</div>
```text

### Dialog/Modal

```html
<div role="dialog" 
     aria-modal="true"
     aria-labelledby="dialog-title"
     aria-describedby="dialog-desc">
  
  <h2 id="dialog-title">Confirm Delete</h2>
  <p id="dialog-desc">
    This action cannot be undone.
  </p>
  
  <button>Cancel</button>
  <button>Delete</button>
</div>
```text

**Key Requirements**:

- role="dialog"
- aria-modal="true"
- aria-labelledby (title ID)
- Focus trapped inside
- Escape closes modal
- Focus returned to trigger

### Tabs

```html
<div role="tablist" aria-label="Account settings">
  <button role="tab" 
          aria-selected="true"
          aria-controls="panel-1"
          id="tab-1">
    Profile
  </button>
  <button role="tab" 
          aria-selected="false"
          aria-controls="panel-2"
          id="tab-2">
    Security
  </button>
</div>

<div role="tabpanel" 
     id="panel-1"
     aria-labelledby="tab-1">
  Profile content...
</div>

<div role="tabpanel" 
     id="panel-2"
     aria-labelledby="tab-2"
     hidden>
  Security content...
</div>
```text

**Key Requirements**:

- role="tablist" on container
- role="tab" on each tab
- role="tabpanel" on each panel
- aria-selected on tabs
- aria-controls linking tabs to panels
- Arrow keys to navigate tabs

### Accordion

```html
<div>
  <h3>
    <button aria-expanded="false" 
            aria-controls="section-1"
            id="accordion-1">
      Section 1
    </button>
  </h3>
  <div id="section-1" 
       role="region"
       aria-labelledby="accordion-1"
       hidden>
    Content...
  </div>
</div>
```text

**Key Requirements**:

- Button for each header
- aria-expanded on buttons
- aria-controls linking to panels
- role="region" on panels
- Hidden/shown based on state

### Menu/Dropdown

```html
<button aria-haspopup="menu" 
        aria-expanded="false"
        aria-controls="menu-1">
  Actions
</button>

<ul role="menu" id="menu-1">
  <li role="menuitem">
    <button>Edit</button>
  </li>
  <li role="menuitem">
    <button>Delete</button>
  </li>
  <li role="separator"></li>
  <li role="menuitem">
    <button>Export</button>
  </li>
</ul>
```text

**Key Requirements**:

- role="menu" on container
- role="menuitem" on items
- aria-haspopup on trigger
- Arrow keys to navigate
- Escape closes menu
- Enter activates item

### Combobox (Autocomplete)

```html
<label for="search">Search</label>
<input type="text" 
       id="search"
       role="combobox"
       aria-expanded="false"
       aria-controls="listbox-1"
       aria-autocomplete="list">

<ul role="listbox" 
    id="listbox-1"
    aria-label="Search results">
  <li role="option" id="option-1">
    Result 1
  </li>
  <li role="option" id="option-2">
    Result 2
  </li>
</ul>
```text

**Key Requirements**:

- role="combobox" on input
- role="listbox" on results
- role="option" on each result
- aria-expanded reflects state
- Arrow keys to navigate results
- Enter selects result

### Tooltip

```html
<button aria-describedby="tooltip-1">
  Help
</button>

<div role="tooltip" 
     id="tooltip-1">
  Click for assistance
</div>
```text

**Key Requirements**:

- role="tooltip"
- aria-describedby linking trigger
- Shown on hover and focus
- Hidden on blur and mouse leave

### Alert Banner

```html
<div role="alert" aria-live="assertive">
  <strong>Error:</strong> Connection lost
</div>
```text

**Key Requirements**:

- role="alert" for important messages
- Announces immediately
- Remove from DOM when dismissed

### Progress Bar

```html
<div role="progressbar" 
     aria-valuenow="45"
     aria-valuemin="0"
     aria-valuemax="100"
     aria-label="Upload progress">
  45%
</div>
```text

**Indeterminate Progress**:

```html
<div role="progressbar" 
     aria-label="Loading"
     aria-valuetext="Loading, please wait">
  <div class="spinner"></div>
</div>
```text

### Slider

```html
<label id="volume-label">Volume</label>
<div role="slider" 
     aria-labelledby="volume-label"
     aria-valuenow="50"
     aria-valuemin="0"
     aria-valuemax="100"
     aria-orientation="horizontal"
     tabindex="0">
</div>
```text

**Key Requirements**:

- role="slider"
- aria-valuenow (current value)
- aria-valuemin, aria-valuemax
- Arrow keys to adjust
- Page Up/Down for large increments
- Home/End for min/max

## ARIA Antipatterns

### Don't Overuse ARIA

```html
<!-- BAD: Redundant ARIA -->
<button role="button">Click</button>
<nav role="navigation">...</nav>
<input role="textbox">

<!-- GOOD: Native HTML -->
<button>Click</button>
<nav>...</nav>
<input>
```text

### Don't Break Native Semantics

```html
<!-- BAD: Conflicting roles -->
<h1 role="button">Heading</h1>
<button role="heading">Button</button>

<!-- GOOD: Use correctly -->
<h1>Heading</h1>
<button>Button</button>
```text

### Don't Use aria-label on Containers

```html
<!-- BAD: aria-label on div -->
<div aria-label="Content area">
  <p>Content...</p>
</div>

<!-- GOOD: Use heading -->
<div>
  <h2>Content Area</h2>
  <p>Content...</p>
</div>
```text

### Don't Forget Focus Management

```html
<!-- BAD: No keyboard access -->
<div role="button">Click</div>

<!-- GOOD: Keyboard accessible -->
<div role="button" tabindex="0">Click</div>
```text

### Don't Use aria-hidden on Focusable Elements

```html
<!-- BAD: Hidden but focusable -->
<button aria-hidden="true">Click</button>

<!-- GOOD: Properly hidden -->
<button hidden>Click</button>
<!-- OR -->
<button aria-hidden="true" tabindex="-1">Click</button>
```text

## ARIA Testing

**Checklist**:

- [ ] ARIA only used when necessary
- [ ] Roles are valid
- [ ] Required attributes present
- [ ] States update correctly
- [ ] Labels meaningful
- [ ] Live regions announce properly
- [ ] Focus management works
- [ ] Keyboard navigation functional
- [ ] Screen reader announces correctly

**Tools**:

- axe DevTools (ARIA linting)
- NVDA/JAWS (screen reader testing)
- Chrome Accessibility Inspector

## Resources

- WAI-ARIA Authoring Practices: w3.org/WAI/ARIA/apg/
- MDN ARIA Reference: developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA
- ARIA Spec: w3.org/TR/wai-aria-1.2/
