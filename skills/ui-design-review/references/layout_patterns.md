# Layout Patterns Reference

Comprehensive guide to layout patterns for complex interfaces, dashboards, and enterprise applications. Reference when suggesting layout alternatives or addressing composition issues.

## Dashboard Layouts

### Three-Column Dashboard

**Structure**: [Sidebar] [Main Content] [Details Panel]

**Column Allocation** (12-column grid):

- Sidebar: 2-3 columns (navigation, filters)
- Main: 6-7 columns (primary workspace)
- Details: 2-3 columns (contextual info, actions)

**Best for**:

- Complex admin panels
- Monitoring dashboards
- Data-heavy applications
- Power user interfaces

**Considerations**:

- Collapsible sidebar for more space
- Details panel can be toggleable
- Mobile: Stack vertically (nav → content → details)

**Examples**: Notion, Linear, Datadog

### Two-Column Dashboard

**Structure**: [Sidebar] [Main Content]

**Column Allocation** (12-column grid):

- Sidebar: 2-4 columns
- Main: 8-10 columns

**Variations**:

- **Narrow sidebar (2 cols)**: Icon + text, collapsible
- **Standard sidebar (3 cols)**: Full navigation tree
- **Wide sidebar (4 cols)**: Filters + navigation

**Best for**:

- SaaS applications
- Document editors
- Email clients
- Project management tools

**Examples**: Gmail, Slack, Asana

### Card Grid Dashboard

**Structure**: Flexible grid of cards/widgets

**Patterns**:

- 3-column grid (4 cols each on 12-col grid)
- 2-column grid (6 cols each)
- Mixed sizes (some 4 cols, some 6, some 8)

**Best for**:

- KPI dashboards
- Analytics overviews
- Status monitoring
- Customizable dashboards

**Considerations**:

- Consistent card heights within rows
- Responsive stacking on mobile
- Optional: Drag-and-drop rearrangement

**Examples**: Google Analytics, Grafana, custom dashboards

### Single-Column Focus

**Structure**: Centered content, single column

**Column Allocation** (12-column grid):

- Content: 6-8 columns, centered

**Best for**:

- Forms
- Document editors (focused mode)
- Onboarding flows
- Reading-focused interfaces

**Considerations**:

- Max width 600-800px for readability
- Ample whitespace on sides
- Good for mobile (already single column)

## Data Display Layouts

### Table-Dominant Layout

**Structure**: Full-width table with optional filters

**Patterns**:

- **Sidebar filters**: 3 cols filters + 9 cols table
- **Top filters**: Horizontal filter bar + full-width table
- **No filters**: Full-width table only

**Best for**:

- Data management interfaces
- Admin panels
- Logs and records
- Inventory systems

**Table Features**:

- Fixed header on scroll
- Column sorting
- Row selection
- Inline actions
- Pagination or virtual scrolling

**Considerations**:

- Mobile: Card transformation or horizontal scroll
- Minimum column width for readability
- Freeze first column(s) if many columns

### List View with Details

**Structure**: [List] [Detail Panel]

**Column Allocation**:

- List: 4-5 columns
- Details: 7-8 columns

**Interaction Pattern**:

- Click item in list → Shows details in panel
- Selected state in list
- Details panel updates on selection

**Best for**:

- Email clients
- File browsers
- User management
- Order management

**Examples**: Apple Mail, Finder, Salesforce lists

### Timeline/Feed Layout

**Structure**: Vertical chronological list

**Patterns**:

- **Centered feed**: 6-8 columns, centered
- **Full-width feed**: All 12 columns
- **Feed + sidebar**: 8 cols feed + 4 cols info

**Best for**:

- Activity feeds
- News feeds
- Notifications
- Social media streams
- Audit logs

**Considerations**:

- Infinite scroll or pagination
- Load more on scroll
- Timestamps for context
- Grouped by date/time

## Navigation Patterns

### Top Navigation + Sidebar

**Structure**: Horizontal top nav + Vertical sidebar

**Top Nav**: Global navigation, user menu, search
**Sidebar**: Section-specific navigation

**Best for**:

- Multi-section applications
- Enterprise software
- Complex hierarchies

**Considerations**:

- Top nav height: 48-64px
- Sidebar width: 200-280px
- Collapsible sidebar option
- Breadcrumbs for context

### Tab-Based Navigation

**Structure**: Horizontal tabs for views of same entity

**Patterns**:

- **Top tabs**: Under page header
- **Sidebar tabs**: Vertical tab list
- **Segmented tabs**: Pill-style switcher

**Best for**:

- Settings pages
- Profile views
- Detail pages with multiple facets
- Related content sections

**Considerations**:

- 3-7 tabs maximum
- Active state clearly visible
- Mobile: Horizontal scroll or dropdown

### Mega Menu Layout

**Structure**: Large dropdown with organized content

**Patterns**:

- Multi-column (2-4 columns)
- Sections with headings
- Icons + text
- Featured content

**Best for**:

- Marketing sites
- E-commerce
- Content platforms
- Documentation sites

**Considerations**:

- Click to open (not hover-only)
- Keyboard accessible
- Mobile alternative (full-screen drawer)

## Content Layouts

### Article/Documentation Layout

**Structure**: [Content] or [Content] [TOC Sidebar]

**Patterns**:

- **Centered content**: 8 columns, centered
- **Content + TOC**: 8 cols content + 4 cols table of contents
- **Content + Sidebar**: 9 cols content + 3 cols related

**Best for**:

- Blog posts
- Documentation
- Knowledge bases
- Long-form content

**Considerations**:

- Max width 75ch for readability
- Sticky TOC on scroll
- Progress indicator
- Responsive: Stack TOC below on mobile

### Hero + Sections Layout

**Structure**: Large hero + Stacked content sections

**Patterns**:

- Full-width hero (12 cols)
- Alternating content sections
- Call-to-action sections

**Best for**:

- Marketing landing pages
- Product pages
- Campaign pages

**Considerations**:

- Hero height: 60-80vh
- Section padding: 80-120px top/bottom
- Background alternation (white/gray)

### Multi-Column Content

**Structure**: 2-3 columns of related content

**Patterns**:

- **2 columns**: 6/6 split
- **3 columns**: 4/4/4 split
- **Asymmetric**: 8/4 or 7/5

**Best for**:

- Feature comparisons
- Service offerings
- Team/portfolio pages
- Pricing tables

**Considerations**:

- Equal height cards/sections
- Responsive stacking on mobile
- Consistent spacing between columns

## Form Layouts

### Single-Column Form (Preferred)

**Structure**: Centered, narrow column

**Width**: 4-6 columns on 12-col grid (max 600px)

**Pattern**:

- Label above input (best for scannability)
- Full-width inputs within column
- Grouped sections with headings
- Primary action at bottom

**Best for**:

- All forms (unless specific reason for multi-column)
- Onboarding forms
- Account settings
- Contact forms

**Benefits**:

- Fastest completion
- Clear, linear flow
- Mobile-friendly
- Accessible

### Two-Column Form

**Structure**: Related fields side-by-side

**Pattern**:

- 6/6 split within form container
- Group related fields (first name / last name)
- Stack on mobile

**Best for**:

- Address forms (city / state / zip)
- Date/time combinations
- Related pairs (min / max)

**Caution**:

- Slower completion than single-column
- Use only when fields are truly related
- Don't use just to save vertical space

### Wizard/Multi-Step Form

**Structure**: Steps with progress indicator

**Pattern**:

- Progress indicator at top
- Single step visible at a time
- Back/Next navigation
- Review step before submit

**Best for**:

- Complex, long forms
- Decision flows
- Onboarding processes
- Checkout flows

**Considerations**:

- Show progress (step X of Y)
- Allow navigation back
- Save progress if possible
- Mobile: Vertical progress indicator

## Modal and Overlay Patterns

### Modal Dialog (Center)

**Size Options**:

- Small: 400px wide (confirmation, simple inputs)
- Medium: 600px wide (forms, content)
- Large: 800px wide (complex content)
- Full-screen: Max viewport (rare)

**Structure**:

- Header with title + close button
- Body with content
- Footer with actions

**Best for**:

- Confirmations
- Quick edits
- Non-critical information
- Single-focus tasks

**Considerations**:

- Trap focus within modal
- Escape key to close
- Click outside to close (optional)
- Return focus to trigger on close

### Slide-Over Panel (Side)

**Width**: 400-600px (25-40% of viewport)

**Pattern**:

- Slides from right (or left)
- Overlays or pushes content
- Often used for details/editing

**Best for**:

- Supplementary information
- Edit forms
- Filters
- Settings

**Advantages over modal**:

- Maintains page context
- Less disruptive
- Good for related content

### Drawer (Mobile)

**Pattern**:

- Slides from bottom (mobile)
- Partial or full-height
- Drag handle to dismiss

**Best for**:

- Mobile actions
- Filters on mobile
- Menus on mobile

## Density and Information Hierarchy

### High Density (Compact)

**Characteristics**:

- Tight spacing (4-8px)
- Smaller fonts (13-14px)
- Minimal whitespace
- More content visible

**Best for**:

- Data tables
- Admin panels
- Power user tools
- Dashboards for monitoring

**Considerations**:

- Still maintain minimum touch targets
- Ensure readability
- Not for mobile

### Medium Density (Balanced)

**Characteristics**:

- Standard spacing (12-16px)
- Normal fonts (14-16px)
- Comfortable whitespace
- Balanced content visibility

**Best for**:

- Most applications
- General SaaS products
- Default state for most interfaces

**Considerations**:

- Most versatile
- Works across devices
- Professional appearance

### Low Density (Spacious)

**Characteristics**:

- Generous spacing (24-32px)
- Larger fonts (16-18px)
- Ample whitespace
- Focus on fewer items

**Best for**:

- Marketing sites
- Focused tasks
- Mobile interfaces
- Accessibility-first designs

**Considerations**:

- Reduces cognitive load
- Better for touch
- Requires more scrolling

## Responsive Layout Strategies

### Mobile-First Approach

**Process**:

1. Design for mobile (single column)
2. Scale up to tablet (2 columns, some sidebars)
3. Expand to desktop (full grid, all features)

**Benefits**:

- Forces prioritization
- Ensures mobile works
- Progressive enhancement

### Desktop-First Approach

**Process**:

1. Design for desktop (full complexity)
2. Simplify for tablet (reduce columns)
3. Distill for mobile (essentials only)

**Considerations**:

- Risk of cramming too much on mobile
- May require significant rework for small screens

### Breakpoint Strategy

**Common Breakpoints**:

- Small: <768px (mobile)
- Medium: 768-1023px (tablet)
- Large: 1024-1439px (desktop)
- XL: 1440px+ (large desktop)

**Layout Changes**:

- Collapse sidebars
- Stack columns
- Change navigation
- Reduce density

## Layout Best Practices

### Do's

- Use consistent spacing system (8px base)
- Maintain clear visual hierarchy
- Group related elements
- Provide ample whitespace
- Design for responsive
- Test with real content
- Follow platform conventions

### Don'ts

- Mix layout patterns inconsistently
- Cram too much in viewport
- Ignore mobile experience
- Break grid without purpose
- Use arbitrary spacing
- Center everything
- Ignore accessibility

## Layout Checklist

### Planning

- [ ] Chosen appropriate layout pattern
- [ ] Defined responsive breakpoints
- [ ] Established spacing system
- [ ] Planned navigation structure
- [ ] Considered information hierarchy

### Implementation

- [ ] Consistent spacing throughout
- [ ] Clear content grouping
- [ ] Responsive behavior works
- [ ] Mobile layout is usable
- [ ] Navigation is accessible

### Quality Check

- [ ] No layout shifts on load
- [ ] Content fits at all breakpoints
- [ ] Actions are reachable
- [ ] Focus flow is logical
- [ ] Scrolling behavior is smooth

## Common Layout Mistakes

### Mistake 1: Cramming Desktop onto Mobile

**Problem**: 3-column desktop forced to mobile
**Solution**: Stack columns, simplify for mobile

### Mistake 2: Centered Content Everywhere

**Problem**: All content centered for no reason
**Solution**: Center intentionally (forms, heroes, etc.)

### Mistake 3: Inconsistent Spacing

**Problem**: 10px here, 15px there, 23px somewhere
**Solution**: Use spacing system (8px base)

### Mistake 4: No Clear Hierarchy

**Problem**: Everything same size and prominence
**Solution**: Establish primary/secondary/tertiary levels

### Mistake 5: Ignoring Grid

**Problem**: Elements placed randomly
**Solution**: Align to grid system

## Layout Inspiration

### Enterprise/Dashboard

- Datadog
- New Relic
- Grafana
- Linear
- Monday.com

### SaaS Products

- Notion
- Slack
- Figma
- GitHub
- Asana

### Documentation

- Stripe Docs
- Material Design
- Apple HIG
- Tailwind CSS Docs
