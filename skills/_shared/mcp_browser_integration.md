# MCP Browser Tool Integration

This document provides examples of how to use the cursor-ide-browser MCP tools for visual design reviews in Cursor IDE.

## Overview

The cursor-ide-browser MCP provides tools for:

- Navigating to URLs
- Taking screenshots
- Interacting with page elements
- Testing responsive behavior
- Capturing network and console data

These tools are particularly useful for design skills that review live web applications.

## Available Tools

| Tool | Purpose |
|------|---------|
| `browser_navigate` | Go to a URL |
| `browser_take_screenshot` | Capture page visuals |
| `browser_snapshot` | Get page structure for interactions |
| `browser_click` | Click elements |
| `browser_type` | Enter text in inputs |
| `browser_hover` | Hover over elements |
| `browser_resize` | Test responsive breakpoints |
| `browser_press_key` | Keyboard interactions |
| `browser_tabs` | Manage browser tabs |
| `browser_console_messages` | Check for JS errors |
| `browser_network_requests` | Monitor API calls |

## Common Workflows

### 1. Basic Page Review

Navigate to a URL and capture the initial state:

```
1. browser_navigate: url="https://example.com/dashboard"
2. browser_take_screenshot: fullPage=true, filename="dashboard-full.png"
3. Analyze the screenshot for UX/UI issues
```

### 2. Responsive Testing

Test different viewport sizes:

```
1. browser_navigate: url="https://example.com"
2. browser_resize: width=1920, height=1080  # Desktop
3. browser_take_screenshot: filename="desktop.png"
4. browser_resize: width=768, height=1024   # Tablet
5. browser_take_screenshot: filename="tablet.png"
6. browser_resize: width=375, height=812    # Mobile
7. browser_take_screenshot: filename="mobile.png"
```

### 3. Interactive Flow Testing

Test a user flow by interacting with elements:

```
1. browser_navigate: url="https://example.com/login"
2. browser_snapshot  # Get element refs
3. browser_type: element="email input", ref="[ref=...]", text="test@example.com"
4. browser_type: element="password input", ref="[ref=...]", text="password"
5. browser_click: element="login button", ref="[ref=...]"
6. browser_take_screenshot: filename="after-login.png"
```

### 4. Accessibility Keyboard Testing

Test keyboard navigation:

```
1. browser_navigate: url="https://example.com"
2. browser_press_key: key="Tab"  # First focusable element
3. browser_take_screenshot: filename="focus-1.png"
4. browser_press_key: key="Tab"  # Next element
5. browser_take_screenshot: filename="focus-2.png"
6. Repeat to verify focus order and visibility
```

### 5. Error State Capture

Capture error states for review:

```
1. browser_navigate: url="https://example.com/form"
2. browser_click: element="submit button", ref="[ref=...]"  # Submit empty form
3. browser_take_screenshot: filename="validation-errors.png"
```

### 6. Console and Network Monitoring

Check for JavaScript errors or API issues:

```
1. browser_navigate: url="https://example.com"
2. browser_console_messages  # Check for errors
3. browser_network_requests  # Review API calls
```

## Skill-Specific Usage

### UX Web Review

```markdown
When reviewing a live web application:

1. Navigate to the URL provided
2. Take full-page screenshot for overall review
3. Test key user flows:
   - Navigation paths
   - Form submissions
   - Interactive elements
4. Test responsive behavior at common breakpoints
5. Check console for JavaScript errors
6. Document findings with screenshots
```

### UI Design Review

```markdown
When reviewing visual design:

1. Navigate to the URL
2. Take screenshots of:
   - Full page (desktop)
   - Key sections/components
   - Mobile viewport
3. Capture hover states and interactive elements
4. Document spacing, alignment, and visual issues
```

### Accessibility Expert

```markdown
When conducting accessibility audit:

1. Navigate to the URL
2. Test keyboard navigation:
   - Tab through all interactive elements
   - Verify focus indicators are visible
   - Check skip links work
3. Capture screenshots of focus states
4. Check console for ARIA errors
5. Test at different zoom levels (browser_resize)
```

### Design Super-Agent

```markdown
For comprehensive review:

1. Navigate and capture initial state
2. Test responsive breakpoints (mobile, tablet, desktop)
3. Test key user flows with interactions
4. Verify keyboard accessibility
5. Check for console errors
6. Document all findings with screenshots
```

## Best Practices

### Screenshot Strategy

- **Full page**: For overall layout review
- **Element-specific**: For detailed component analysis
- **Before/after**: For interaction state changes
- **Multiple viewports**: For responsive review

### Naming Conventions

Use descriptive filenames:

- `dashboard-desktop-full.png`
- `login-form-error-state.png`
- `nav-mobile-expanded.png`
- `focus-indicator-button.png`

### Workflow Tips

1. **Always navigate first** - Ensure you're on the right page
2. **Use snapshots for interactions** - Required to get element refs
3. **Capture states systematically** - Document before/after
4. **Check console messages** - Catch JavaScript errors
5. **Test realistic viewport sizes** - Use common device sizes

## Common Viewport Sizes

| Device | Width | Height |
|--------|-------|--------|
| Desktop Large | 1920 | 1080 |
| Desktop | 1440 | 900 |
| Laptop | 1280 | 800 |
| Tablet Landscape | 1024 | 768 |
| Tablet Portrait | 768 | 1024 |
| Mobile Large | 414 | 896 |
| Mobile | 375 | 812 |
| Mobile Small | 320 | 568 |

## Troubleshooting

### Element Not Found

If `browser_click` or `browser_type` fails:

1. Run `browser_snapshot` to get current element refs
2. Verify the element is visible (not hidden or off-screen)
3. Check if element is inside an iframe

### Screenshots Not Capturing Correctly

1. Wait for page to fully load (use `browser_wait_for` if needed)
2. Check if content is dynamically loaded
3. Try `fullPage=true` for scrollable content

### Interactions Not Working

1. Verify element ref from most recent snapshot
2. Check if element requires hover first
3. Ensure no modal or overlay is blocking
