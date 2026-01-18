# Common UX Patterns Reference

This document catalogs proven UX patterns for common interface challenges. Reference when identifying opportunities to apply standard solutions or when explaining recommended approaches.

## Navigation Patterns

### Primary Navigation

**Top Horizontal Navigation**

- Best for: 5-7 primary sections, equal hierarchy
- When to use: Marketing sites, simple apps, content-focused platforms
- Considerations: Mobile hamburger fallback needed

**Sidebar Navigation**

- Best for: 8+ sections, nested hierarchy, dashboards
- When to use: Complex apps, admin panels, data-heavy tools
- Variants: Collapsible, icon-only, always-visible
- Considerations: Screen real estate tradeoff

**Tab Navigation**

- Best for: 3-5 related views of same context
- When to use: Settings, profiles, detail pages
- Anti-pattern: Don't use for global navigation

**Breadcrumbs**

- Best for: Deep hierarchies, multi-level navigation
- When to use: E-commerce, documentation, file systems
- Pattern: Show full path, last item is current location

### Secondary Navigation

**Contextual Menus**

- Dropdown/popover for related actions
- Keep items to 5-7 for scannability
- Group related items with dividers

**Mega Menus**

- For complex hierarchies with rich previews
- Include visual aids (icons, images, descriptions)
- Organize into clear columns

## Data Display Patterns

### Tables

**Standard Data Table**

- Use for: Scanning, comparing, sorting structured data
- Must include: Column headers, sort indicators, row hover states
- Consider: Fixed headers for long lists, row actions

**Responsive Tables**

- Mobile strategies: Horizontal scroll, card transformation, priority columns
- Always: Keep critical columns visible

**Interactive Tables**

- Inline editing: For quick updates without modal friction
- Expandable rows: For additional details without navigation
- Bulk actions: Select + action bar pattern

### Lists

**Card Lists**

- Use for: Mixed content types, visual-heavy data
- Pattern: Image + title + metadata + actions
- Responsive: Stack on mobile, grid on desktop

**Feed/Timeline**

- Use for: Chronological updates, activity streams
- Pattern: Avatar + content + timestamp + actions
- Consider: Infinite scroll vs pagination

### Dashboards

**Widget-Based Layout**

- Modular components with consistent spacing
- Clear visual hierarchy (size = importance)
- Allow customization when possible

**Metric Cards**

- Pattern: Large number + label + trend indicator + sparkline
- Color coding for status (success/warning/critical)
- Click to drill down into details

## Form Patterns

### Input Fields

**Standard Text Input**

- Label above input (best for scannability)
- Placeholder for format hints, not labels
- Helper text below for guidance
- Inline validation after blur/submit

**Input Groups**

- Related fields grouped visually
- Logical flow (left-to-right, top-to-bottom)
- Clear section headers

### Form Feedback

**Inline Validation**

- Show success/error states immediately after interaction
- Error messages: Specific, actionable, no blame
- Pattern: Red border + icon + message for errors

**Form-Level Feedback**

- Summary of errors at top after submit attempt
- Link error messages to specific fields
- Success confirmation before navigation

### Multi-Step Forms

**Stepped Progress**

- Visual indicator of steps (numbers, progress bar)
- Show completed, current, upcoming steps
- Allow navigation back to previous steps

**Progressive Disclosure**

- Show fields based on previous answers
- Reduce cognitive load
- Clear indication when new fields appear

## Status & Feedback Patterns

### Loading States

**Skeleton Screens**

- Use for: Predictable content structure
- Shows layout while content loads
- Better than spinners for perceived performance

**Spinners**

- Use for: Unpredictable load times, small components
- Position: Center of loading area
- Include text for context if >2 seconds expected

**Progress Bars**

- Use for: File uploads, multi-step processes
- Show percentage when possible
- Provide cancel option for long operations

### Empty States

**First Use Empty State**

- Welcoming message
- Clear explanation of feature
- Primary CTA to get started
- Optional: Quick tutorial or sample data

**No Results Empty State**

- Acknowledge the situation
- Suggest actions (clear filters, different search)
- Helpful, not accusatory tone

### Notifications

**Toast Messages**

- Brief, auto-dismiss (3-5 seconds)
- Use for: Confirmations, non-critical updates
- Position: Top-right or bottom-center
- Include action for undo when relevant

**Alert Banners**

- Persistent until dismissed
- Use for: Important system-wide messages
- Color coding: Info (blue), Success (green), Warning (yellow), Error (red)

## Complex Workflows

### Modal Dialogs

**When to Use Modals**

- Critical decisions requiring focus
- Quick actions without leaving context
- Temporary content (previews, confirmations)

**Modal Patterns**

- Clear title describing purpose
- Primary action (prominent) + secondary action (subtle)
- Easy dismiss (X, Escape, click outside)
- Return focus on close

**Modal Alternatives**

- Inline expansion: For less critical content
- Slide-over panel: For related context
- New page: For complex workflows

### Filtering & Search

**Faceted Filtering**

- Multiple independent filters
- Show count of results per option
- Clear all + individual filter removal
- Applied filters visible at top

**Combined Search + Filter**

- Search bar prominent
- Filters in sidebar or collapsible panel
- Show active filters as chips/pills
- Save filter combinations

### Bulk Actions

**Selection Pattern**

- Checkbox column (left side)
- Select all checkbox in header
- Action bar appears on selection
- Show count of selected items
- Clear selection option

## Real-Time & Operational Patterns

### Live Updates

**Polling vs Push**

- Polling: Regular interval refresh, show last updated time
- Push: WebSocket updates, instant feedback
- Always: Indicate when data is live vs stale

**Activity Indicators**

- Real-time badges (red dot for new items)
- Subtle animations for updates
- Don't disrupt user's current task

### Monitoring Dashboards

**Alert States**

- Critical: Red, immediate attention required
- Warning: Yellow/orange, concerning but not critical
- Normal: Green, all systems operational
- Unknown: Gray, no data available

**Status Grids**

- Grid of monitored items with status indicators
- Click to drill into details
- Color + icon for redundancy (accessibility)

## Mobile-Specific Patterns

### Touch Targets

- Minimum 44x44px (iOS), 48x48px (Android)
- Adequate spacing between targets
- Thumb-friendly placement (bottom of screen)

### Gestures

- Swipe for navigation, deletion
- Pull-to-refresh for feeds
- Pinch-to-zoom for images, maps
- Always provide button alternatives

### Bottom Navigation

- Use for: 3-5 primary sections on mobile
- Icons + labels for clarity
- Highlight active section
- Fixed position for easy access

## Accessibility-Integrated Patterns

### Keyboard Navigation

- Logical tab order
- Visible focus indicators
- Keyboard shortcuts for power users
- Skip links for long navigation

### Screen Reader Support

- Semantic HTML elements
- ARIA labels for custom controls
- Status announcements for dynamic updates
- Descriptive link text (not "click here")

## When Patterns Don't Apply

Not every situation fits a standard pattern. Deviate when:

- User research shows unique needs
- Domain requires specialized interaction
- Innovation provides clear benefit
- Standard pattern creates more problems

Always user-test non-standard patterns thoroughly.

## Anti-Patterns to Avoid

1. **Carousel/Slider for Critical Content** - Users rarely click past first slide
2. **Accordion for Primary Navigation** - Creates hide-and-seek UX
3. **Modal for Complex Forms** - Use dedicated pages instead
4. **Placeholder as Label** - Disappears on focus, accessibility issues
5. **Horizontal Scroll for Data** - Users miss content off-screen
6. **Auto-Playing Media** - Violates user control, accessibility issues
7. **Infinite Scroll Without Pagination** - Impossible to return to position
8. **Custom Checkboxes/Radios Without Proper States** - Accessibility failure
9. **Single-Field Search with Hidden Advanced Options** - Reduces discoverability
10. **Action Buttons in Hover-Only States** - Fails on touch devices
