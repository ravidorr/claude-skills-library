# Typography Scales Reference

Comprehensive guide to typography systems for web and enterprise applications. Reference when addressing type hierarchy, readability, or scale issues.

## Typography Fundamentals

### Why Type Scales Matter

- **Hierarchy**: Clear content organization
- **Rhythm**: Consistent vertical spacing
- **Readability**: Appropriate sizing for context
- **Flexibility**: Scales across devices
- **Consistency**: Predictable type usage

### Scale Anatomy

**Base Size**: Foundation (usually 16px for body text)
**Scale Ratio**: Mathematical relationship between sizes
**Steps**: Number of sizes in system
**Weights**: Variations of font thickness
**Line Height**: Vertical spacing within text blocks

## Type Scale Ratios

### Major Third (1.25)

**Best for**: Dense interfaces, dashboards, data-heavy applications

**Characteristics**:

- Subtle distinction between levels
- More sizes fit in viewport
- Professional, restrained feel
- Common in enterprise software

**Example Scale (16px base)**:

- 12px (0.75rem) - Small/metadata
- 14px (0.875rem) - Secondary text
- 16px (1rem) - Body text
- 20px (1.25rem) - H4
- 25px (1.563rem) - H3
- 31px (1.953rem) - H2
- 39px (2.441rem) - H1

**Best for**:

- Admin panels
- Data dashboards
- Monitoring interfaces
- Complex workflows
- Dense information

### Perfect Fourth (1.333)

**Best for**: Balanced hierarchy, standard applications

**Characteristics**:

- Clear distinction between levels
- Standard professional appearance
- Works well for most contexts
- Used by Material Design

**Example Scale (16px base)**:

- 12px (0.75rem) - Small/metadata
- 16px (1rem) - Body text
- 21px (1.333rem) - H4
- 28px (1.777rem) - H3
- 37px (2.369rem) - H2
- 50px (3.157rem) - H1

**Best for**:

- SaaS applications
- Marketing sites
- Standard web apps
- Documentation
- Balanced content

### Major Second (1.125)

**Best for**: Subtle hierarchy, minimal interfaces

**Characteristics**:

- Very subtle size changes
- Modern, minimal aesthetic
- Requires weight variations for hierarchy
- Common in contemporary design

**Example Scale (16px base)**:

- 14px (0.875rem) - Small/metadata
- 16px (1rem) - Body text
- 18px (1.125rem) - H4
- 20px (1.266rem) - H3
- 23px (1.424rem) - H2
- 26px (1.602rem) - H1

**Best for**:

- Minimal interfaces
- Modern marketing
- Mobile applications
- Clean dashboards
- Content-focused sites

### Golden Ratio (1.618)

**Best for**: Editorial content, marketing, high contrast

**Characteristics**:

- Strong differentiation
- Dramatic hierarchy
- Pleasing proportions
- Larger file size (more sizes)

**Example Scale (16px base)**:

- 10px (0.625rem) - Fine print
- 16px (1rem) - Body text
- 26px (1.618rem) - H4
- 42px (2.618rem) - H3
- 68px (4.236rem) - H2
- 110px (6.854rem) - H1

**Best for**:

- Editorial sites
- Marketing landing pages
- Presentation interfaces
- Creative portfolios
- High-impact headers

## Type Hierarchy Patterns

### Standard Hierarchy (6 levels)

**H1 - Page Title**

- Largest size (typically 2.5-4× body)
- Boldest weight (600-700)
- One per page (semantic)
- Main topic identifier
- Example: "Dashboard Overview"

**H2 - Section Title**

- Large size (typically 2-3× body)
- Bold weight (600-700)
- Multiple per page
- Major section breaks
- Example: "Recent Activity"

**H3 - Subsection Title**

- Medium-large size (typically 1.5-2× body)
- Medium-bold weight (500-600)
- Common throughout page
- Content grouping
- Example: "Top Performing Campaigns"

**H4 - Component Title**

- Moderate size (typically 1.2-1.5× body)
- Medium weight (500-600)
- Micro-headlines
- Card titles, list headers
- Example: "User Settings"

**Body Text**

- Base size (16px standard)
- Regular weight (400)
- Primary reading text
- Paragraphs, descriptions
- Line height: 1.5-1.7

**Small Text**

- Reduced size (12-14px)
- Regular or light weight (300-400)
- Metadata, captions, footnotes
- Not for primary content
- Line height: 1.4-1.5

### Dashboard Hierarchy (5 levels)

**Page Title** (H1)

- 24-32px
- Weight: 600-700
- Example: "Sales Dashboard"

**Section Header** (H2)

- 18-24px
- Weight: 600
- Example: "Revenue Breakdown"

**Widget Title** (H3)

- 16-18px
- Weight: 600
- Example: "Top Products"

**Body/Data**

- 14-16px
- Weight: 400-500
- Numbers, labels, table content

**Metadata**

- 12-13px
- Weight: 400
- Timestamps, units, labels

### Mobile Hierarchy (Scale Down)

**Reduce by**:

- 10-20% from desktop sizes
- Or use same scale with smaller base (14-15px)
- Maintain relative relationships

**Example Mobile Scale**:

- H1: 28px (desktop 32px)
- H2: 20px (desktop 24px)
- H3: 16px (desktop 18px)
- Body: 14px (desktop 16px)
- Small: 12px (desktop 13px)

## Font Weight Systems

### Standard Weight Scale

**100 - Thin/Hairline**: Rarely used, decorative only
**200 - Extra Light**: Very light, large headings only
**300 - Light**: Secondary text, elegant feel
**400 - Regular/Normal**: Body text, primary reading
**500 - Medium**: Emphasis, labels, secondary headings
**600 - Semi-Bold**: Headings, buttons, strong emphasis
**700 - Bold**: Primary headings, strong calls-to-action
**800 - Extra Bold**: Large display text, rare
**900 - Black/Heavy**: Display only, rarely used

### Practical Weight Usage

**Enterprise/Dashboard Context**:

- **Regular (400)**: Body text, descriptions, table data
- **Medium (500)**: Labels, secondary headings, table headers
- **Semi-Bold (600)**: Primary headings, card titles, buttons
- **Bold (700)**: Page titles, critical actions

**Marketing Context**:

- **Light (300)**: Hero text, large displays
- **Regular (400)**: Body text
- **Medium (500)**: Emphasis
- **Bold (700)**: Headings, CTAs

### Weight + Size Combinations

**Avoid**: Large size + heavy weight = overwhelming
**Better**: Large size + medium weight OR Medium size + heavy weight

**Examples**:

- GOOD: 32px at 600 weight
- GOOD: 24px at 700 weight
- BAD: 32px at 700 weight (too heavy)

## Line Height Guidelines

### Body Text

**Optimal**: 1.5-1.7 (24-27px for 16px text)
**Tight**: 1.4 (for UI labels, dense interfaces)
**Loose**: 1.8-2.0 (for large text blocks, accessibility)

**Rule**: Longer line length = more line height needed

### Headings

**Large headings (32px+)**: 1.1-1.3
**Medium headings (20-28px)**: 1.2-1.4
**Small headings (16-18px)**: 1.3-1.5

**Reason**: Large text needs less relative spacing

### UI Elements

**Buttons**: 1.0-1.2 (tight for vertical centering)
**Labels**: 1.2-1.4
**Table cells**: 1.4-1.5
**Form inputs**: 1.5

## Letter Spacing (Tracking)

### Body Text

**Standard**: 0 (default)
**Tight**: -0.01em to -0.02em (for large sizes)
**Loose**: +0.01em to +0.02em (for small sizes, all caps)

### Headings

**Large (32px+)**: -0.02em to -0.04em (tighten)
**Medium (20-28px)**: -0.01em to -0.02em
**Small (16-18px)**: 0 to -0.01em

### Special Cases

**All Caps**: +0.05em to +0.1em (always looser)
**Small Text (<12px)**: +0.01em to +0.02em (improve readability)
**Monospace**: Usually default (0)

## Font Family Selection

### System Font Stacks

**Modern System (Recommended)**:

```css
font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, 
             "Helvetica Neue", Arial, sans-serif;
```

- Fast loading (no download)
- Native feel per OS
- Excellent readability
- Professional appearance

**Monospace (Code, Data)**:

```css
font-family: "SF Mono", Monaco, "Cascadia Code", "Roboto Mono", 
             Consolas, monospace;
```

### Web Fonts

**Google Fonts - Professional**:

- **Inter**: Modern, clear, excellent for UI (free)
- **Roboto**: Clean, widely used, Material Design (free)
- **Open Sans**: Readable, neutral, versatile (free)
- **Work Sans**: Contemporary, professional (free)

**Premium Fonts - Enterprise**:

- **Proxima Nova**: Clean, professional, widely licensed
- **Gotham**: Geometric, strong, corporate
- **Avenir**: Elegant, balanced, refined
- **FF DIN**: Technical, precise, data-focused

### Font Pairing

**Same Family**: Safest, most cohesive

- Example: Inter for both headings and body

**Serif + Sans-Serif**: Classic contrast

- Example: Playfair Display (headings) + Inter (body)
- Caution: Rare in enterprise/dashboard contexts

**Geometric + Humanist**: Modern pairing

- Example: Montserrat (headings) + Open Sans (body)

## Readability Guidelines

### Optimal Line Length

**Desktop Body Text**: 50-75 characters per line
**Mobile Body Text**: 35-50 characters per line
**Too Short (<35 chars)**: Choppy reading, too narrow
**Too Long (>80 chars)**: Hard to track to next line

**Implementation**:

```css
.content {
  max-width: 65ch; /* ch unit = character width */
}
```

### Text Contrast

**WCAG AA (Minimum)**:

- Normal text: 4.5:1 contrast ratio
- Large text (18px+ or 14px+ bold): 3:1

**WCAG AAA (Enhanced)**:

- Normal text: 7:1
- Large text: 4.5:1

**Common Mistakes**:

- Light gray on white (#999 on #FFF = 2.85:1) - FAIL
- Medium gray on white (#666 on #FFF = 5.74:1) - PASS

### Paragraph Spacing

**Between paragraphs**: 0.5-1× line height
**After headings**: 0.5-0.75× line height of heading
**Before headings**: 1.5-2× line height of body

**Example (16px body, 24px line height)**:

- Paragraph spacing: 12-24px
- After H2: 12-18px
- Before H2: 36-48px

## Type Scale Implementation

### CSS Custom Properties

```css
:root {
  /* Base */
  --font-size-base: 16px;
  
  /* Scale (Major Third 1.25) */
  --font-size-xs: 12px;   /* 0.75rem */
  --font-size-sm: 14px;   /* 0.875rem */
  --font-size-md: 16px;   /* 1rem */
  --font-size-lg: 20px;   /* 1.25rem */
  --font-size-xl: 25px;   /* 1.563rem */
  --font-size-2xl: 31px;  /* 1.953rem */
  --font-size-3xl: 39px;  /* 2.441rem */
  
  /* Line Heights */
  --line-height-tight: 1.25;
  --line-height-normal: 1.5;
  --line-height-relaxed: 1.75;
  
  /* Weights */
  --font-weight-normal: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
}
```

### Responsive Typography

```css
/* Fluid typography */
html {
  font-size: calc(14px + 0.25vw);
  /* Scales from 14px to 18px across viewport widths */
}

/* Breakpoint-based */
body {
  font-size: 14px; /* Mobile */
}

@media (min-width: 768px) {
  body {
    font-size: 16px; /* Tablet/Desktop */
  }
}
```

## Type Patterns for Specific Contexts

### Data Tables

**Column Headers**:

- Size: 12-14px
- Weight: 600
- Transform: Uppercase or Regular case
- Letter spacing: +0.05em if uppercase

**Table Data**:

- Size: 13-15px
- Weight: 400
- Monospace for numbers (optional)
- Align right for numbers

### Forms

**Labels**:

- Size: 14-16px
- Weight: 500-600
- Above input (preferred) or left-aligned

**Input Text**:

- Size: 16px (minimum on mobile to prevent zoom)
- Weight: 400
- Match body text size

**Helper Text**:

- Size: 12-14px
- Weight: 400
- Color: Secondary text color

**Error Messages**:

- Size: 12-14px
- Weight: 500
- Color: Error color

### Buttons

**Size**: 14-16px (match or slightly smaller than body)
**Weight**: 500-600 (medium to semi-bold)
**Transform**: None or Sentence case (avoid all caps unless brand)
**Letter spacing**: 0 to +0.02em

### Metadata/Timestamps

**Size**: 12-13px
**Weight**: 400
**Color**: Secondary text (60-70% opacity of body)
**Style**: Often italic for differentiation

## Typography Checklist

### Planning

- [ ] Chosen appropriate scale ratio
- [ ] Defined 5-6 size steps
- [ ] Selected font family
- [ ] Determined weight variations needed
- [ ] Calculated line heights
- [ ] Planned responsive behavior

### Implementation

- [ ] All headings use scale
- [ ] Body text is 16px minimum (desktop)
- [ ] Line height is 1.5+ for body text
- [ ] Contrast meets WCAG AA (4.5:1)
- [ ] Line length is 50-75 characters
- [ ] Heading hierarchy is logical

### Quality Check

- [ ] No arbitrary sizes (all from scale)
- [ ] Weights create clear hierarchy
- [ ] Mobile sizes are readable
- [ ] No orphans/widows in headings
- [ ] Paragraph spacing is consistent
- [ ] Metadata is distinguishable but not overwhelming

## Common Typography Mistakes

### Mistake 1: Too Many Sizes

**Problem**: 15+ different font sizes
**Solution**: Stick to scale, use weight for variation

### Mistake 2: Insufficient Contrast

**Problem**: #999 gray text on white background
**Solution**: Darker text, minimum #666 for body

### Mistake 3: Tiny Body Text

**Problem**: 12-13px body text on desktop
**Solution**: 16px minimum for primary reading

### Mistake 4: Inconsistent Line Height

**Problem**: Some paragraphs 1.3, others 1.7
**Solution**: Standardize to 1.5-1.6 for body

### Mistake 5: All Caps Overuse

**Problem**: Headers, buttons, labels all uppercase
**Solution**: Reserve for labels/tags only, use weight instead

### Mistake 6: Wrong Font for Context

**Problem**: Decorative font for dashboard data
**Solution**: Clean sans-serif for functional interfaces

## Typography Resources

### Tools

- **Type Scale**: <https://type-scale.com/> (visual scale generator)
- **Modular Scale**: <https://www.modularscale.com/> (ratio calculator)
- **Contrast Checker**: WebAIM or Stark (contrast testing)

### Fonts

- **Google Fonts**: <https://fonts.google.com/> (free web fonts)
- **Adobe Fonts**: <https://fonts.adobe.com/> (included with Creative Cloud)
- **Font Squirrel**: <https://www.fontsquirrel.com/> (free fonts)

### Reference

- **Material Type System**: <https://material.io/design/typography/>
- **Apple Typography**: <https://developer.apple.com/design/human-interface-guidelines/typography>
- **Practical Typography**: <https://practicaltypography.com/>
