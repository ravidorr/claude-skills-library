# Accessible Component Patterns Reference

Comprehensive guide to building accessible UI components with proper keyboard interactions, ARIA attributes, and screen reader support.

## Pattern Structure

Each pattern includes:

- HTML structure
- ARIA attributes
- Keyboard interactions
- Focus management
- Screen reader announcements
- Common mistakes

## Navigation Patterns

### Skip Links

**Purpose**: Allow keyboard users to skip repetitive content

**HTML**:

```html
<a href="#main-content" class="skip-link">
  Skip to main content
</a>

<nav>...</nav>

<main id="main-content" tabindex="-1">
  ...
</main>
```text

**CSS**:

```css
.skip-link {
  position: absolute;
  top: -40px;
  left: 0;
  background: #000;
  color: #fff;
  padding: 8px;
  z-index: 100;
}

.skip-link:focus {
  top: 0;
}
```text

**Keyboard**: Tab (reveals link), Enter (skips to content)

### Breadcrumbs

**HTML**:

```html
<nav aria-label="Breadcrumb">
  <ol>
    <li><a href="/">Home</a></li>
    <li><a href="/products">Products</a></li>
    <li><a href="/products/widgets" 
           aria-current="page">Widgets</a></li>
  </ol>
</nav>
```text

**Key Points**:

- Use <nav> with aria-label="Breadcrumb"
- Use ordered list
- aria-current="page" on current page

### Pagination

**HTML**:

```html
<nav aria-label="Pagination">
  <a href="?page=1" aria-label="Go to page 1">1</a>
  <a href="?page=2" aria-current="page" 
     aria-label="Current page, page 2">2</a>
  <a href="?page=3" aria-label="Go to page 3">3</a>
  <a href="?page=3" aria-label="Next page">Next</a>
</nav>
```text

**Key Points**:

- Clear navigation label
- aria-current="page" on current
- Descriptive aria-labels

## Form Patterns

### Text Input

**HTML**:

```html
<label for="email">Email Address</label>
<input id="email" 
       type="email"
       required
       aria-required="true"
       aria-describedby="email-help">
<span id="email-help">
  We'll never share your email
</span>
```text

**With Error**:

```html
<label for="email">Email Address</label>
<input id="email" 
       type="email"
       aria-invalid="true"
       aria-describedby="email-error">
<span id="email-error" role="alert">
  Email must include @ symbol
</span>
```text

**Key Points**:

- Always use <label> with for attribute
- aria-describedby for help text
- aria-invalid="true" for errors
- role="alert" on error messages

### Checkbox

**HTML**:

```html
<input type="checkbox" 
       id="agree"
       aria-describedby="agree-help">
<label for="agree">
  I agree to terms and conditions
</label>
<span id="agree-help">
  You must agree to continue
</span>
```text

**Tri-state (Indeterminate)**:

```html
<div role="checkbox" 
     aria-checked="mixed"
     aria-labelledby="select-all-label"
     tabindex="0">
  <span id="select-all-label">Select All</span>
</div>

<div role="group">
  <input type="checkbox" id="item1">
  <label for="item1">Item 1</label>
  
  <input type="checkbox" id="item2">
  <label for="item2">Item 2</label>
</div>
```text

### Radio Buttons

**HTML**:

```html
<fieldset>
  <legend>Choose shipping method</legend>
  
  <input type="radio" 
         id="standard" 
         name="shipping" 
         value="standard">
  <label for="standard">Standard (5-7 days)</label>
  
  <input type="radio" 
         id="express" 
         name="shipping" 
         value="express">
  <label for="express">Express (2-3 days)</label>
</fieldset>
```text

**Keyboard**:

- Tab: Move to group
- Arrow keys: Select within group
- Space: Select (if not selected)

### Select Dropdown

**Native**:

```html
<label for="country">Country</label>
<select id="country" required>
  <option value="">Select a country</option>
  <option value="us">United States</option>
  <option value="ca">Canada</option>
</select>
```text

**Custom Dropdown**:

```html
<label id="country-label">Country</label>
<button aria-haspopup="listbox" 
        aria-expanded="false"
        aria-labelledby="country-label">
  Select a country
</button>

<ul role="listbox" 
    aria-labelledby="country-label"
    hidden>
  <li role="option">United States</li>
  <li role="option">Canada</li>
</ul>
```text

**Keyboard**:

- Space/Enter: Open dropdown
- Arrow keys: Navigate options
- Enter: Select option
- Escape: Close without selecting

## Button Patterns

### Primary Button

**HTML**:

```html
<button type="submit">
  Save Changes
</button>
```text

**Icon Button**:

```html
<button aria-label="Delete">
  <svg aria-hidden="true">...</svg>
</button>
```text

**With Loading State**:

```html
<button aria-busy="true" disabled>
  <span aria-hidden="true">⏳</span>
  Saving...
</button>
```text

**Key Points**:

- Use <button>, not <a> or <div>
- Always descriptive label
- aria-label for icon-only buttons
- aria-busy during loading

### Toggle Button

**HTML**:

```html
<button aria-pressed="false" 
        aria-label="Mute audio">
  <svg aria-hidden="true"><!-- sound on icon --></svg>
</button>

<!-- When pressed -->
<button aria-pressed="true" 
        aria-label="Unmute audio">
  <svg aria-hidden="true"><!-- sound off icon --></svg>
</button>
```text

**Key Points**:

- aria-pressed indicates state
- Update label and icon on toggle
- Screen reader announces "pressed"/"not pressed"

## Dialog/Modal Patterns

### Modal Dialog

**HTML**:

```html
<div role="dialog" 
     aria-modal="true"
     aria-labelledby="dialog-title"
     aria-describedby="dialog-desc">
  
  <h2 id="dialog-title">Delete Account?</h2>
  <p id="dialog-desc">
    This action cannot be undone. All data will be permanently deleted.
  </p>
  
  <button onClick={handleCancel}>Cancel</button>
  <button onClick={handleDelete}>Delete Account</button>
</div>
```text

**Focus Management**:

```javascript
// When opening
const modal = document.querySelector('[role="dialog"]');
const trigger = document.activeElement; // Save for later
modal.focus();

// Trap focus
const focusable = modal.querySelectorAll('a, button, input, [tabindex="0"]');
const firstFocusable = focusable[0];
const lastFocusable = focusable[focusable.length - 1];

modal.addEventListener('keydown', (e) => {
  if (e.key === 'Tab') {
    if (e.shiftKey && document.activeElement === firstFocusable) {
      e.preventDefault();
      lastFocusable.focus();
    } else if (!e.shiftKey && document.activeElement === lastFocusable) {
      e.preventDefault();
      firstFocusable.focus();
    }
  }
  
  if (e.key === 'Escape') {
    closeModal();
  }
});

// When closing
function closeModal() {
  modal.remove();
  trigger.focus(); // Return focus
}
```text

**Keyboard**:

- Tab: Cycle through modal elements only
- Escape: Close modal
- Focus returns to trigger on close

### Alert Dialog

**HTML**:

```html
<div role="alertdialog" 
     aria-modal="true"
     aria-labelledby="alert-title"
     aria-describedby="alert-desc">
  
  <h2 id="alert-title">Unsaved Changes</h2>
  <p id="alert-desc">
    You have unsaved changes. Do you want to save before leaving?
  </p>
  
  <button autofocus>Save Changes</button>
  <button>Discard</button>
  <button>Cancel</button>
</div>
```text

**Key Difference**: role="alertdialog" announces immediately

## Tab Patterns

### Tabs (Manual Activation)

**HTML**:

```html
<div>
  <div role="tablist" aria-label="Account settings">
    <button role="tab" 
            aria-selected="true"
            aria-controls="panel-profile"
            id="tab-profile"
            tabindex="0">
      Profile
    </button>
    <button role="tab" 
            aria-selected="false"
            aria-controls="panel-security"
            id="tab-security"
            tabindex="-1">
      Security
    </button>
  </div>
  
  <div role="tabpanel" 
       id="panel-profile"
       aria-labelledby="tab-profile"
       tabindex="0">
    Profile content...
  </div>
  
  <div role="tabpanel" 
       id="panel-security"
       aria-labelledby="tab-security"
       tabindex="0"
       hidden>
    Security content...
  </div>
</div>
```text

**Keyboard**:

- Tab: Enter/exit tab list
- Arrow Left/Right: Navigate tabs
- Enter/Space: Activate focused tab
- Home: First tab
- End: Last tab

**Focus Management**:

```javascript
// Only selected tab is tabbable
tabs.forEach(tab => {
  tab.tabIndex = tab.getAttribute('aria-selected') === 'true' ? 0 : -1;
});

// Arrow key navigation
tablist.addEventListener('keydown', (e) => {
  const tabs = [...tablist.querySelectorAll('[role="tab"]')];
  const currentIndex = tabs.indexOf(document.activeElement);
  
  let nextIndex;
  if (e.key === 'ArrowRight') {
    nextIndex = (currentIndex + 1) % tabs.length;
  } else if (e.key === 'ArrowLeft') {
    nextIndex = (currentIndex - 1 + tabs.length) % tabs.length;
  }
  
  if (nextIndex !== undefined) {
    tabs[nextIndex].focus();
  }
});
```text

## Accordion Patterns

### Accordion

**HTML**:

```html
<div class="accordion">
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
    Content for section 1...
  </div>
  
  <h3>
    <button aria-expanded="false" 
            aria-controls="section-2"
            id="accordion-2">
      Section 2
    </button>
  </h3>
  <div id="section-2" 
       role="region"
       aria-labelledby="accordion-2"
       hidden>
    Content for section 2...
  </div>
</div>
```text

**Keyboard**:

- Tab: Move between accordion buttons
- Enter/Space: Toggle section
- (Optional) Up/Down arrows: Navigate buttons

**Toggle Logic**:

```javascript
button.addEventListener('click', () => {
  const expanded = button.getAttribute('aria-expanded') === 'true';
  button.setAttribute('aria-expanded', !expanded);
  const panel = document.getElementById(button.getAttribute('aria-controls'));
  panel.hidden = expanded;
});
```text

## Menu Patterns

### Dropdown Menu

**HTML**:

```html
<button aria-haspopup="menu" 
        aria-expanded="false"
        aria-controls="menu-actions">
  Actions
</button>

<ul role="menu" 
    id="menu-actions"
    hidden>
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

**Keyboard**:

- Enter/Space: Open menu
- Arrow Up/Down: Navigate items
- Enter: Select item
- Escape: Close menu
- Home: First item
- End: Last item

**Focus Management**:

```javascript
// Open menu
function openMenu() {
  menu.hidden = false;
  button.setAttribute('aria-expanded', 'true');
  const firstItem = menu.querySelector('[role="menuitem"]');
  firstItem.focus();
}

// Arrow navigation
menu.addEventListener('keydown', (e) => {
  const items = [...menu.querySelectorAll('[role="menuitem"]')];
  const currentIndex = items.indexOf(document.activeElement);
  
  let nextIndex;
  if (e.key === 'ArrowDown') {
    nextIndex = (currentIndex + 1) % items.length;
  } else if (e.key === 'ArrowUp') {
    nextIndex = (currentIndex - 1 + items.length) % items.length;
  } else if (e.key === 'Escape') {
    closeMenu();
    button.focus();
  }
  
  if (nextIndex !== undefined) {
    items[nextIndex].focus();
  }
});
```text

## Notification Patterns

### Toast Notification

**HTML**:

```html
<div role="status" 
     aria-live="polite"
     aria-atomic="true">
  Changes saved successfully
</div>
```text

**For Errors**:

```html
<div role="alert" 
     aria-live="assertive"
     aria-atomic="true">
  Error: Connection lost. Retrying...
</div>
```text

**Auto-dismiss**:

```javascript
function showToast(message, type = 'status') {
  const toast = document.createElement('div');
  toast.setAttribute('role', type); // 'status' or 'alert'
  toast.setAttribute('aria-live', type === 'alert' ? 'assertive' : 'polite');
  toast.setAttribute('aria-atomic', 'true');
  toast.textContent = message;
  
  document.body.appendChild(toast);
  
  // Auto-dismiss after 5 seconds
  setTimeout(() => {
    toast.remove();
  }, 5000);
}
```text

### Alert Banner

**HTML**:

```html
<div role="alert" class="banner">
  <strong>System Maintenance:</strong> Scheduled downtime tonight at midnight.
  <button aria-label="Dismiss alert">×</button>
</div>
```text

**Key Points**:

- role="alert" announces immediately
- Dismiss button has descriptive label
- Don't auto-dismiss important messages

## Data Display Patterns

### Data Table

**HTML**:

```html
<table>
  <caption>User Account Summary</caption>
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>John Doe</td>
      <td>john@example.com</td>
      <td>Active</td>
    </tr>
  </tbody>
</table>
```text

**With Sortable Columns**:

```html
<th scope="col" aria-sort="ascending">
  <button>
    Name
    <span aria-hidden="true">▲</span>
  </button>
</th>
```text

**Key Points**:

- Use <caption> for table title
- scope="col" for column headers
- scope="row" for row headers
- aria-sort for sortable columns

### Progress Bar

**HTML**:

```html
<label id="upload-label">Upload Progress</label>
<div role="progressbar" 
     aria-labelledby="upload-label"
     aria-valuenow="45"
     aria-valuemin="0"
     aria-valuemax="100">
  <div style="width: 45%">45%</div>
</div>
```text

**Indeterminate**:

```html
<div role="progressbar" 
     aria-label="Loading"
     aria-valuetext="Loading, please wait">
  <div class="spinner"></div>
</div>
```text

**Live Updates**:

```javascript
function updateProgress(value) {
  progressbar.setAttribute('aria-valuenow', value);
  progressbar.setAttribute('aria-valuetext', `${value}% complete`);
}
```text

## Interactive Patterns

### Slider

**HTML**:

```html
<label id="volume-label">Volume</label>
<input type="range" 
       min="0" 
       max="100" 
       value="50"
       aria-labelledby="volume-label">
```text

**Custom Slider**:

```html
<label id="volume-label">Volume</label>
<div role="slider" 
     aria-labelledby="volume-label"
     aria-valuenow="50"
     aria-valuemin="0"
     aria-valuemax="100"
     aria-orientation="horizontal"
     tabindex="0">
  <div class="slider-thumb" style="left: 50%"></div>
</div>
```text

**Keyboard**:

- Arrow Right/Up: Increase
- Arrow Left/Down: Decrease
- Page Up: Increase by 10
- Page Down: Decrease by 10
- Home: Minimum
- End: Maximum

### Tooltip

**HTML**:

```html
<button aria-describedby="tooltip-help">
  Help
</button>

<div role="tooltip" 
     id="tooltip-help"
     hidden>
  Click for assistance
</div>
```text

**Show/Hide**:

```javascript
button.addEventListener('mouseenter', () => {
  tooltip.hidden = false;
});

button.addEventListener('mouseleave', () => {
  tooltip.hidden = true;
});

button.addEventListener('focus', () => {
  tooltip.hidden = false;
});

button.addEventListener('blur', () => {
  tooltip.hidden = true;
});

// Escape key
button.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') {
    tooltip.hidden = true;
  }
});
```text

## Best Practices Summary

### Focus Management

1. Visible focus indicators always
2. Logical tab order
3. Focus trapped in modals
4. Focus returned after modal closes
5. Skip links for navigation

### Keyboard Support

1. All functionality keyboard accessible
2. Standard key patterns followed
3. Escape closes/cancels
4. Enter activates
5. Arrow keys navigate

### ARIA Usage

1. Use native HTML first
2. Only add ARIA when necessary
3. Update states dynamically
4. Test with screen readers
5. Validate ARIA correctness

### Screen Readers

1. Meaningful labels
2. Descriptive link text
3. Form labels associated
4. Error messages clear
5. Status updates announced

## Testing Checklist

For each pattern:

- [ ] Keyboard only (unplug mouse)
- [ ] Screen reader (NVDA/VoiceOver)
- [ ] Focus visible at all times
- [ ] Tab order logical
- [ ] States announced correctly
- [ ] Error messages clear
- [ ] Zoom to 200% (still works)
- [ ] Color contrast (AA minimum)

## Resources

- WAI-ARIA Authoring Practices: w3.org/WAI/ARIA/apg/
- Inclusive Components: inclusive-components.design
- A11y Project Patterns: a11yproject.com/patterns
