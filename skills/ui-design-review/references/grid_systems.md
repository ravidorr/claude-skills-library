# Grid Systems Reference

Comprehensive guide to modern grid systems for web and mobile interfaces. Reference when addressing layout structure, responsive design, or alignment issues.

## Grid Fundamentals

### Why Grids Matter

- **Consistency**: Predictable structure across screens
- **Efficiency**: Faster design decisions with constraints
- **Responsiveness**: Built-in adaptation to different viewports
- **Alignment**: Visual order and precision
- **Collaboration**: Common language between designers and developers

### Grid Anatomy

**Columns**: Vertical divisions that contain content
**Gutters**: Space between columns
**Margins**: Outer padding from viewport edges
**Rows** (optional): Horizontal divisions for vertical rhythm

## Column Systems

### 12-Column Grid

**Best for**: Complex layouts, enterprise dashboards, content-heavy pages

**Characteristics**:

- Highly flexible (divisible by 2, 3, 4, 6, 12)
- Standard in Bootstrap, Material Design
- Supports complex nested layouts
- Ideal for data tables, dashboards, admin panels

**Common Patterns**:

- 3-column layout: Each takes 4 columns
- 2-column layout: 8/4 or 6/6 split
- Sidebar + content: 3/9 or 4/8
- Triple split: 4/4/4

**When to use**:

- Enterprise applications
- Content management systems
- E-commerce product pages
- Multi-section dashboards
- Admin interfaces

### 8-Column Grid

**Best for**: Moderate complexity, balanced layouts, tablet breakpoints

**Characteristics**:

- Simpler than 12-column
- Still divisible by 2, 4, 8
- Cleaner for tablet sizes
- Good for content + sidebar layouts

**Common Patterns**:

- 2-column: 4/4 split
- Sidebar: 2/6 or 3/5
- Triple: Not ideal (use 12-column)

**When to use**:

- Mid-sized screens (tablet)
- Simpler applications
- Blog layouts
- Marketing pages

### 4-Column Grid

**Best for**: Mobile, simple layouts, minimal complexity

**Characteristics**:

- Maximum simplicity
- Divisible by 2, 4
- Standard for mobile breakpoints
- Forces prioritization

**Common Patterns**:

- Full width: 4 columns
- Half: 2/2 split
- Third: Not possible (use stacking)

**When to use**:

- Mobile viewports (<768px)
- Simple single-purpose pages
- Progressive disclosure interfaces
- Mobile-first designs

### 16-Column Grid

**Best for**: Large screens, highly complex layouts, design systems

**Characteristics**:

- Ultra-flexible
- Used by advanced design systems
- Can be overkill for simple layouts
- Allows very precise control

**When to use**:

- Large desktop screens (>1440px)
- Complex data visualization dashboards
- Design systems requiring granular control
- High-density information displays

## Responsive Breakpoint Strategy

### Standard Breakpoints

**Mobile (320-767px)**: 4-column grid

- Margins: 16-24px
- Gutters: 16px
- Max width: 100%
- Typical content width: 288-719px

**Tablet (768-1023px)**: 8-column grid

- Margins: 24-32px
- Gutters: 20-24px
- Max width: 100%
- Typical content width: 720-967px

**Desktop (1024-1439px)**: 12-column grid

- Margins: 32-48px
- Gutters: 24-32px
- Max width: 1200px (optional container)
- Typical content width: 960-1343px

**Large Desktop (1440px+)**: 12-column grid (wider)

- Margins: 48-64px
- Gutters: 32px
- Max width: 1440px (optional container)
- Typical content width: 1312-1408px

### Breakpoint Transition Strategies

**Content-First**:

- Add breakpoints when content breaks
- Not at arbitrary device sizes
- Test with real content

**Progressive Enhancement**:

- Start mobile (4-column)
- Scale up to tablet (8-column)
- Expand to desktop (12-column)

**Component-Based**:

- Each component has its own breakpoints
- Not global page breakpoints only
- More flexible, more complex

## Gutter Systems

### Fixed Gutters

**Approach**: Same gutter width at all breakpoints

**Pros**:

- Predictable
- Easier to implement
- Consistent rhythm

**Cons**:

- May feel cramped on mobile
- May feel loose on large screens

**Typical values**:

- 16px (tight)
- 24px (balanced)
- 32px (spacious)

### Responsive Gutters

**Approach**: Gutters scale with viewport

**Pros**:

- Better adaptation
- Proportional spacing
- Professional feel

**Cons**:

- More complex calculation
- Requires viewport units or breakpoint rules

**Typical progression**:

- Mobile: 16px
- Tablet: 20-24px
- Desktop: 24-32px
- Large: 32px

### Gutter Calculation

**As percentage**:

```
Gutter width = (Total width - Margin × 2 - Column widths) / (Number of columns - 1)
```

**Example (12-column, 1440px container, 48px margins, 32px gutters)**:

```
Available space = 1440 - (48 × 2) = 1344px
Space for gutters = 32 × 11 = 352px
Space for columns = 1344 - 352 = 992px
Column width = 992 / 12 = 82.67px
```

## Margin Systems

### Fixed Margins

**Standard values**:

- Mobile: 16-24px
- Tablet: 24-32px
- Desktop: 32-48px
- Large: 48-64px

### Percentage Margins

**Mobile**: 5-8% of viewport width
**Tablet**: 4-6% of viewport width
**Desktop**: Fixed (easier to manage)

### Asymmetric Margins

Sometimes useful for:

- Sidebar layouts (smaller margin on sidebar side)
- Navigation patterns (smaller margin near nav)
- Branded layouts (intentional asymmetry)

Generally avoid unless intentional design choice.

## Grid Application Patterns

### Dashboard Layouts

**Three-Column Dashboard** (12-column base):

```
[Sidebar: 3 cols] [Main: 6 cols] [Details: 3 cols]
```

- Sidebar: Navigation, filters
- Main: Primary content, data viz
- Details: Contextual info, actions

**Two-Column Dashboard** (12-column base):

```
[Sidebar: 2-3 cols] [Main: 9-10 cols]
```

- Sidebar: Persistent navigation
- Main: Full-width workspace

**Card Grid Dashboard** (12-column base):

```
[Card: 4 cols] [Card: 4 cols] [Card: 4 cols]
[Card: 6 cols] [Card: 6 cols]
```

- Flexible card sizing
- Responsive stacking

### Data Tables

**Full-Width Table** (12 columns):

- Spans entire content area
- Columns sized by content
- Fixed header for scrolling

**Table + Sidebar** (12-column):

```
[Filters: 3 cols] [Table: 9 cols]
```

- Filters in sidebar
- Table has room for 6-8 columns

### Form Layouts

**Single-Column Form** (centered):

- 4-6 columns wide on 12-column grid
- Centered in content area
- Max width 600-800px for readability

**Two-Column Form**:

```
[Label + Input: 6 cols] [Label + Input: 6 cols]
```

- Related fields side-by-side
- Tablets stack to single column

### Content + Sidebar

**Standard Split** (12-column):

```
[Content: 8 cols] [Sidebar: 4 cols]
```

- 2:1 ratio (common)
- Content has priority

**Alternative Split** (12-column):

```
[Content: 9 cols] [Sidebar: 3 cols]
```

- 3:1 ratio (more content focus)

## Grid Precision

### Alignment Rules

**Column Starts**:

- Content should start at column boundaries
- Not between columns (breaks grid)

**Column Spans**:

- Content should span full columns
- Include gutters in span
- Example: 3 columns = 3 cols + 2 gutters

**Nested Grids**:

- Subdivide existing columns
- Maintain gutter consistency
- Don't create new grid system inside

### Common Alignment Issues

**Issue**: Content starts mid-column
**Fix**: Snap to nearest column boundary

**Issue**: Unequal gutters
**Fix**: Use consistent gutter system throughout

**Issue**: Elements floating between columns
**Fix**: Assign to specific column(s)

**Issue**: Responsive breaking mid-column
**Fix**: Define breakpoints at column boundaries

## Grid Tools & Implementation

### CSS Grid

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: 24px; /* gutter */
  padding: 48px; /* margin */
  max-width: 1440px;
  margin: 0 auto;
}

.span-6 {
  grid-column: span 6;
}
```

### Flexbox Grid

```css
.row {
  display: flex;
  margin: 0 -12px; /* negative margin for gutters */
}

.col-6 {
  flex: 0 0 50%;
  padding: 0 12px; /* gutter */
}
```

### Design Tool Setup

**Figma**:

- Layout Grid: Columns
- Count: 12 (or 8, 4)
- Gutter: 24px
- Margin: 48px
- Type: Stretch

**Sketch**:

- Total Width: 1440px
- Number of Columns: 12
- Gutter Width: 24px
- Column Width: Calculate automatically
- Gutter on Outside: Yes

## Special Grid Patterns

### Asymmetric Grids

**When to use**:

- Intentional visual tension
- Editorial layouts
- Marketing pages
- Art direction

**Caution**: Harder to maintain, use sparingly in enterprise contexts

### Modular Grids

**When to use**:

- Complex multi-section layouts
- Magazine-style layouts
- Heavy content pages

**Pattern**: Both columns and rows defined
**Complexity**: Higher maintenance

### Baseline Grids

**When to use**:

- Typography-focused designs
- Vertical rhythm is critical
- Long-form content

**Pattern**: Horizontal lines for text alignment
**Often combined with**: Column grid

### Broken Grids

**When to use**:

- Intentional disruption
- Hero sections
- Visual interest

**Caution**: Easy to overdo, maintain some structure

## Grid Best Practices

### Do's

- Use consistent column count within breakpoint
- Maintain gutter consistency
- Align elements to column boundaries
- Plan for responsive transitions
- Document grid system for team
- Test with real content
- Use grid as guide, not prison

### Don'ts

- Mix column counts within same breakpoint
- Create random gutter sizes
- Float elements between columns
- Break grid without intention
- Use too many columns on mobile
- Ignore responsive behavior
- Force content to fit grid awkwardly

## Grid System Checklist

### Planning

- [ ] Chosen appropriate column count for complexity
- [ ] Defined breakpoints based on content
- [ ] Calculated gutter and margin sizes
- [ ] Considered responsive transitions
- [ ] Documented system for team

### Implementation

- [ ] All content aligns to columns
- [ ] Gutters are consistent
- [ ] Margins are appropriate for viewport
- [ ] Responsive behavior is smooth
- [ ] Nested grids follow system

### Quality Check

- [ ] No elements floating between columns
- [ ] Column widths add up correctly
- [ ] Breakpoints are clean transitions
- [ ] Mobile grid works at 320px
- [ ] Large screens don't become unwieldy

## Common Grid Mistakes

### Mistake 1: Too Many Columns on Mobile

**Problem**: 8 or 12 columns on mobile viewport
**Solution**: Use 4-column (max) on mobile, stack content

### Mistake 2: Inconsistent Gutters

**Problem**: 16px here, 20px there, 32px somewhere else
**Solution**: Choose gutter system and stick to it

### Mistake 3: Breaking Grid Randomly

**Problem**: Elements don't align to any column
**Solution**: Either follow grid or intentionally break for effect

### Mistake 4: No Responsive Plan

**Problem**: Desktop grid forced onto mobile
**Solution**: Plan column reduction strategy per breakpoint

### Mistake 5: Grid as Straitjacket

**Problem**: Forcing content awkwardly to fit grid
**Solution**: Grid is guide, adapt when content demands it

## Grid Resources

### Frameworks

- Bootstrap: 12-column, responsive, widely adopted
- Material Design: Flexible columns, 8dp baseline
- Foundation: 12-column, mobile-first
- Tailwind: Utility-first, 12-column

### Tools

- Gridlover: Typography + grid calculator
- Modulargrid: Grid planning tool
- Grids template (Figma): Ready-made grid layouts

### Reference

- Material Design Grid: <https://material.io/design/layout/responsive-layout-grid.html>
- Apple HIG Layout: <https://developer.apple.com/design/human-interface-guidelines/layout>
