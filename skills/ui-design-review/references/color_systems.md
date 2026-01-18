# Color Systems Reference

Comprehensive guide to functional color usage for web and enterprise applications. Reference when addressing color usage, accessibility, or palette issues.

## Color System Fundamentals

### Functional vs. Decorative Color

**Functional Color** (Preferred in enterprise):
- Communicates meaning
- Indicates status or state
- Guides user action
- Reinforces hierarchy
- Systematic and consistent

**Decorative Color** (Use sparingly):
- Aesthetic only
- No semantic meaning
- Can distract from function
- Appropriate for branding moments

**Principle**: In data-heavy or operational interfaces, every color should have a purpose.

## Color Palette Structure

### 60-30-10 Rule

**60% - Neutral/Background**:
- White, grays, subtle tints
- Provides breathing room
- Reduces visual fatigue
- Most of the interface

**30% - Primary Brand**:
- Main interactive elements
- Primary actions
- Key UI components
- Brand reinforcement

**10% - Accent/Secondary**:
- Highlights
- Secondary actions
- Status indicators
- Strategic emphasis

### Core Palette Components

**Neutrals** (5-8 shades):
- Pure white (#FFFFFF)
- Light grays (#F5F5F5, #E0E0E0)
- Mid grays (#9E9E9E, #757575)
- Dark grays (#424242, #212121)
- Pure black (#000000) - rarely used directly

**Primary Color** (5-7 shades):
- 50: Very light tint
- 100-300: Light variations
- 500: Main brand color
- 600-700: Dark variations
- 900: Very dark shade

**Secondary Color(s)** (3-5 shades):
- Complement primary
- Usually 1-2 secondary colors
- Lighter shade set than primary

**Status Colors**:
- Success (green)
- Warning (yellow/orange)
- Error (red)
- Info (blue)
- Each with 3-5 shades

## Status Color Systems

### Success (Green)

**Purpose**: Positive outcomes, completion, confirmation

**Palette**:
- Light: #E8F5E9, #C8E6C9
- Main: #4CAF50, #43A047
- Dark: #388E3C, #2E7D32

**Usage**:
- Success messages
- Completed tasks
- Positive metrics (revenue up)
- Confirmation states
- "Success" badges

**Avoid**:
- As primary brand color (unless brand)
- For clickable elements (implies success, not action)

### Warning (Yellow/Orange)

**Purpose**: Caution, attention needed, non-critical issues

**Palette**:
- Light: #FFF9C4, #FFF59D
- Main: #FFC107, #FFB300
- Dark: #FFA000, #FF8F00

**Usage**:
- Warning messages
- Pending states
- Moderate alerts
- "Needs attention" indicators
- Metrics requiring monitoring

**Avoid**:
- Overuse (creates alarm fatigue)
- On white backgrounds without border (low contrast)

### Error (Red)

**Purpose**: Errors, failures, critical issues, destructive actions

**Palette**:
- Light: #FFEBEE, #FFCDD2
- Main: #F44336, #E53935
- Dark: #D32F2F, #C62828

**Usage**:
- Error messages
- Failed operations
- Critical alerts
- Destructive action warnings (delete)
- Negative metrics (revenue down)
- Invalid states

**Avoid**:
- As only indicator (add icon/text)
- For non-critical information

### Info (Blue)

**Purpose**: Informational, neutral, guidance

**Palette**:
- Light: #E3F2FD, #BBDEFB
- Main: #2196F3, #1E88E5
- Dark: #1976D2, #1565C0

**Usage**:
- Info messages
- Helper text
- Neutral notifications
- Documentation links
- General guidance

**Avoid**:
- As primary action color (may conflict with links)

## Enterprise Color Patterns

### Minimal Palette (Recommended)

**Neutrals**: 6 shades gray
**Primary**: 1 brand color (5 shades)
**Status**: Success, Warning, Error (3 shades each)

**Total**: ~20 colors

**Benefits**:
- Easy to maintain
- Consistent application
- Professional appearance
- Reduces decision fatigue

### Data Visualization Palette

**Categorical** (6-8 distinct colors):
- Clearly distinguishable
- Accessible color blind
- Example: Blues, oranges, greens, purples

**Sequential** (5-7 gradient):
- Single hue, varying lightness
- For quantitative data
- Example: Light blue → Dark blue

**Diverging** (7-9 gradient with midpoint):
- Two hues meeting at neutral
- For data with meaningful midpoint
- Example: Red → White → Blue

## Contrast and Accessibility

### WCAG Contrast Requirements

**Level AA (Minimum Standard)**:
- Normal text (under 18pt): 4.5:1 ratio
- Large text (18pt+ or 14pt+ bold): 3:1 ratio
- UI components: 3:1 ratio
- Graphical objects: 3:1 ratio

**Level AAA (Enhanced)**:
- Normal text: 7:1 ratio
- Large text: 4.5:1 ratio

### Common Contrast Failures

**Text on Colored Backgrounds**:
- FAIL: White text on #2196F3 (blue) = 3.3:1 (fails AA)
- PASS: White text on #1565C0 (dark blue) = 5.5:1 (passes AA)

**Colored Text on White**:
- FAIL: #FFC107 (yellow) on white = 1.8:1 (fails)
- PASS: #FF8F00 (dark orange) on white = 4.6:1 (passes)

**Gray Text**:
- FAIL: #999999 on white = 2.8:1 (fails)
- PASS: #666666 on white = 5.7:1 (passes)
- PASS: #757575 on white = 4.5:1 (passes exactly)

### Contrast Checking Tools
- Chrome DevTools (built-in)
- WebAIM Contrast Checker
- Stark (Figma plugin)
- Contrast Ratio by Lea Verou

## Color Application Patterns

### Backgrounds

**Primary Background**: White or #F5F5F5 (very light gray)
**Secondary Background**: #FAFAFA, #F5F5F5
**Elevated Components**: White with shadow OR slightly lighter than background
**Hover States**: 5-10% darker than base
**Active States**: 10-15% darker than base

### Text

**Primary Text**: #212121 (near black) on light backgrounds
**Secondary Text**: #757575 (60-70% opacity)
**Disabled Text**: #BDBDBD (40-50% opacity)
**Link Text**: Primary color (default blue #1976D2)
**Error Text**: Error color (red #D32F2F)

### Interactive Elements

**Buttons - Primary**:
- Background: Primary color
- Text: White (if contrast sufficient)
- Hover: 10% darker
- Active: 20% darker
- Disabled: 30% opacity with #E0E0E0 background

**Buttons - Secondary**:
- Background: Transparent
- Border: Primary color
- Text: Primary color
- Hover: Light tint background

**Links**:
- Default: Primary color or blue
- Hover: Darker shade
- Visited: Purple (optional, context-dependent)
- Focus: Outline in primary color

### Borders and Dividers

**Light Dividers**: #E0E0E0 (subtle)
**Medium Dividers**: #BDBDBD (noticeable)
**Input Borders**: #E0E0E0 (default), primary (focus), error (invalid)

## Color Naming Convention

### Systematic Naming

**By Function**:
```
--color-primary
--color-primary-hover
--color-primary-active
--color-success
--color-error
--color-warning
```

**By Shade (Material Design style)**:
```
--color-primary-50
--color-primary-100
...
--color-primary-900
```

**By Usage**:
```
--color-text-primary
--color-text-secondary
--color-background-default
--color-border-default
```

### Avoid
- BAD: --color-light-blue
- BAD: --color-button-green
- BAD: --color-header-text

## Dark Mode Considerations

### Inverted Neutrals
- Background: #121212, #1E1E1E (not pure black)
- Surface: #1E1E1E, #2C2C2C
- Text: #FFFFFF, #CCCCCC

### Adjusted Colors
- Reduce saturation by 10-20%
- Increase brightness slightly
- Maintain contrast ratios
- Test all states

### Elevation in Dark Mode
- Use lighter surfaces for elevated components
- Not shadows (don't work well)
- Example: Card (#1E1E1E) on Background (#121212)

## Color Psychology (Contextual)

**Blue**: Trust, stability, professionalism (most common primary)
**Green**: Growth, success, positivity
**Red**: Error, urgency, importance
**Yellow/Orange**: Warning, attention, energy
**Purple**: Premium, creative, innovative
**Gray**: Neutral, calm, sophisticated

**Caution**: Cultural differences exist. Test with target audience.

## Color Combinations to Avoid

**Low Contrast Pairs**:
- Red on green (color blind issue)
- Blue on purple (poor distinction)
- Yellow on white (readability)
- Light gray on white (contrast)

**Vibrating Combinations**:
- Pure red on pure blue
- Pure green on pure red
- High saturation adjacents

**Confusing Meanings**:
- Red for success (unexpected)
- Green for errors (contradictory)
- Multiple colors for same meaning

## Implementation (CSS)

### CSS Custom Properties

```css
:root {
  /* Neutrals */
  --color-white: #FFFFFF;
  --color-gray-50: #FAFAFA;
  --color-gray-100: #F5F5F5;
  --color-gray-200: #E0E0E0;
  --color-gray-300: #BDBDBD;
  --color-gray-400: #9E9E9E;
  --color-gray-500: #757575;
  --color-gray-600: #666666;
  --color-gray-700: #424242;
  --color-gray-800: #212121;
  --color-black: #000000;
  
  /* Primary */
  --color-primary-50: #E3F2FD;
  --color-primary-100: #BBDEFB;
  --color-primary-500: #2196F3;
  --color-primary-700: #1976D2;
  --color-primary-900: #0D47A1;
  
  /* Status */
  --color-success: #4CAF50;
  --color-warning: #FFC107;
  --color-error: #F44336;
  --color-info: #2196F3;
  
  /* Semantic */
  --color-text-primary: var(--color-gray-800);
  --color-text-secondary: var(--color-gray-500);
  --color-background: var(--color-white);
  --color-border: var(--color-gray-200);
}
```

### Alpha Transparency

```css
/* Instead of multiple gray shades */
.overlay {
  background: rgba(0, 0, 0, 0.5); /* 50% black */
}

.text-secondary {
  color: rgba(0, 0, 0, 0.6); /* 60% opacity */
}
```

## Color Checklist

### Planning
- [ ] Defined neutral scale (6-8 shades)
- [ ] Chosen primary brand color
- [ ] Defined status colors (success, warning, error)
- [ ] Established 60-30-10 balance
- [ ] Tested all combinations for contrast
- [ ] Documented color usage

### Implementation
- [ ] All colors meet WCAG AA contrast
- [ ] Consistent color application
- [ ] Status colors used semantically
- [ ] No decorative-only color
- [ ] Hover/active states defined
- [ ] Disabled states are clear

### Quality Check
- [ ] No arbitrary colors (all from system)
- [ ] Color blind friendly
- [ ] Works in dark mode (if applicable)
- [ ] Accessible to all users
- [ ] Professional appearance
- [ ] Reduced visual noise

## Common Color Mistakes

### Mistake 1: Too Many Colors
**Problem**: 20+ colors with no system
**Solution**: Minimal palette, systematic shades

### Mistake 2: Rainbow Status
**Problem**: Success (green), Warning (yellow), Error (red), Info (blue), Progress (purple), Pending (orange)...
**Solution**: 3-4 status colors maximum

### Mistake 3: Low Contrast
**Problem**: #CCCCCC text on white
**Solution**: Minimum #666666 for body text

### Mistake 4: Decorative Overload
**Problem**: Colored backgrounds, text, icons everywhere
**Solution**: 60-30-10 rule, neutral dominance

### Mistake 5: Inconsistent Application
**Problem**: Success is green sometimes, blue other times
**Solution**: Document and follow color meanings

## Color Resources

### Tools
- **Coolors**: https://coolors.co/ (palette generator)
- **Adobe Color**: https://color.adobe.com/ (color wheel tool)
- **WebAIM Contrast Checker**: https://webaim.org/resources/contrastchecker/
- **ColorBox by Lyft**: https://colorbox.io/ (accessible palette builder)

### Palette Generators
- **Material Design Palette**: https://material.io/design/color/
- **Tailwind Colors**: https://tailwindcss.com/docs/customizing-colors
- **Radix Colors**: https://www.radix-ui.com/colors (accessible by design)

### Accessibility
- **Who Can Use**: https://whocanuse.com/ (vision simulator)
- **Contrast Grid**: https://contrast-grid.eightshapes.com/ (matrix testing)
