# UI Design Review Skill

Expert UI design consultant with 10+ years of experience in visual interface design for complex systems, enterprise SaaS, and data-heavy products.

## What This Skill Does

Transforms Claude into an expert UI design consultant who provides professional, systematic reviews of visual interface design. The skill covers:

- Layout and information hierarchy
- Grid systems and structural precision
- Composition and visual balance
- Typography scales and readability
- Functional color usage and accessibility
- Visual consistency and pattern alignment

## Who It's For

- **Visual Designers** seeking expert critique on layouts and composition
- **UI Designers** needing grid and typography guidance
- **Product Designers** wanting visual design validation
- **Developers** implementing designs who need design specifications
- **Design Teams** establishing or refining design systems

## When To Use

Trigger this skill by saying:

- "Review the UI design"
- "Critique this layout"
- "Analyze the visual hierarchy"
- "Check the typography and spacing"
- "Review this interface for visual consistency"

Works with:

- Screenshots of interfaces
- Mockups and prototypes
- Design system components
- Live web applications

## Key Features

### Mandatory Context Gathering

Before any review, Claude asks questions to understand:

- What your product does
- Who your users are
- What stage the design is in
- Whether you're using a design system
- Specific visual concerns

This ensures relevant, informed feedback tailored to your context.

### Six-Dimension Analysis

Every review systematically covers:

**1. Layout & Hierarchy**

- Information density vs. white space
- Focal points and visual flow
- Element grouping and alignment

**2. Grid & Structure**

- Grid system adherence (4/8/12 column)
- Responsive breakpoint planning
- Precision and consistency

**3. Composition & Balance**

- Proportions between areas
- Visual weight distribution
- Spatial relationships

**4. Typography**

- Type scale appropriateness
- Hierarchy clarity (H1/H2/H3/body)
- Readability and contrast

**5. Color & Accessibility**

- Functional color usage
- WCAG contrast compliance
- Status communication

**6. Pattern Consistency**

- Component reuse
- State representation
- Modern UI standards alignment

### Precise, Actionable Feedback

Every recommendation includes:

- **Specific measurements**: "Change from 18px to 24px"
- **Exact specifications**: "Use font-weight 600, not 400"
- **Grid coordinates**: "Align to column 2, span 8 columns"
- **Color values**: "Change to #666666 for 5.7:1 contrast"

No vague advice like "improve the design" - only concrete, implementable changes.

### Expert Reference Materials

50+ KB of professional design knowledge:

- Grid system patterns and calculations
- Typography scales for different contexts
- Color system patterns and WCAG compliance
- Layout patterns for dashboards and data interfaces

## What's Included

### Core Instructions (SKILL.md)

- Expert UI design methodology
- Context-gathering workflow
- Six-dimension analysis framework
- Professional standards and best practices

### Reference Materials

**grid_systems.md** (11 KB)

- 12/8/4-column grid systems
- Responsive breakpoint strategies
- Gutter and margin calculations
- Grid precision and alignment rules

**typography_scales.md** (13 KB)

- Type scale ratios (Major Third, Perfect Fourth, etc.)
- Hierarchy patterns for different contexts
- Font weight systems and usage
- Line height and readability guidelines
- WCAG contrast requirements

**color_systems.md** (11 KB)

- Functional color palettes (60-30-10 rule)
- Status color patterns (success, warning, error)
- WCAG AA/AAA contrast compliance
- Enterprise color approaches
- Dark mode considerations

**layout_patterns.md** (11 KB)

- Dashboard layouts (3-column, 2-column, card grid)
- Data display patterns (tables, lists, timelines)
- Navigation patterns
- Form layouts
- Modal and overlay patterns
- Responsive strategies

## Installation

1. **Download**: Get `ui-design-review.skill` from this directory
2. **Install in Claude**:
   - Go to [Claude.ai](https://claude.ai) > Settings > Skills
   - Click "Upload Skill"
   - Select `ui-design-review.skill`
   - Confirm installation

## Usage Examples

### Example 1: Dashboard Layout Review

```
You: Review the UI design of this dashboard
     [uploads screenshot]

Claude: [Asks context questions first]
Claude: Based on what I see, this appears to be an analytics 
        dashboard for a SaaS product. Is this correct?
        
You: Yes, that's right.

Claude: [Provides systematic six-dimension analysis with specific 
        recommendations for grid alignment, typography hierarchy, 
        color usage, etc.]
```

### Example 2: Typography Check

```
You: Check the typography and hierarchy in this interface

Claude: [After context gathering]
Claude: Typography Analysis:
        
        Issues:
        - H1 at 20px is too small (recommend 28-32px)
        - Body text at 14px should be 16px minimum
        - Insufficient hierarchy: H2 and H3 too similar
        
        Recommendations:
        - Use Major Third scale (1.25 ratio)
        - H1: 32px, weight 600
        - H2: 25px, weight 600
        - H3: 20px, weight 600
        - Body: 16px, weight 400
        - Line height: 1.6 for body text
```

### Example 3: Grid Precision Review

```
You: Analyze the grid system and alignment precision

Claude: [Analyzes structure]
Claude: Grid Issues:
        
        1. Mixed column usage: Some elements on 12-col, others floating
        2. Inconsistent gutters: 16px in header, 24px in content
        3. Sidebar not aligned to grid columns
        
        Specific Fixes:
        - Standardize on 12-column grid, 24px gutters
        - Sidebar: Span columns 1-3 (3 cols)
        - Main content: Span columns 4-12 (9 cols)
        - Align all cards to column boundaries
```

### Example 4: Color & Accessibility

```
You: Review color usage and check WCAG compliance

Claude: Color Analysis:
        
        Contrast Failures:
        - Secondary text (#999) on white = 2.8:1 (fails AA)
        - Warning badge (#FFC107) on white = 1.8:1 (fails)
        
        Fixes:
        - Secondary text: Change to #666666 (5.7:1, passes AA)
        - Warning badge: Add #FF8F00 background (4.6:1, passes)
        - Or add border: 1px solid #FF8F00
        
        Functional Color Review:
        - Status colors well-chosen
        - Recommend reducing decorative color usage
        - Apply 60-30-10 rule more strictly
```

## Review Approach

### Professional Tone

- Direct, professional, confident
- Technically precise with measurements
- Always offers alternatives with rationale
- Emphasizes readability, order, functionality

### Quality Standards

- No generic criticism
- Every recommendation is specific and actionable
- Practical changes with exact values
- Context-appropriate for enterprise/data-heavy interfaces
- Based on modern principles (Material, Apple HIG, data UI patterns)

### Flexibility

- Adapts to design stage (wireframe vs high-fidelity)
- Can focus on specific dimensions if requested
- Works with varying levels of context
- Scales depth based on user needs

## Core Expertise Areas

- Layout and hierarchy for data-heavy interfaces
- Modern grid systems (responsive, precise)
- Composition and visual field organization
- Typography scales for operational products
- Functional color (not decorative)
- Enterprise dashboard design
- Design patterns from Material, Apple HIG

## Skill Structure

```
ui-design-review/
├── SKILL.md                        # Core instructions (12 KB)
├── README.md                       # This file
├── ui-design-review.skill         # Packaged skill
└── references/
    ├── grid_systems.md            # Grid patterns (11 KB)
    ├── typography_scales.md       # Type scales (13 KB)
    ├── color_systems.md           # Color patterns (11 KB)
    └── layout_patterns.md         # Layout patterns (11 KB)
```

## What Makes This Effective

1. **Context-First Approach** - Understands your product before critiquing
2. **Systematic Coverage** - Six dimensions ensure comprehensive review
3. **Precise Specifications** - Exact measurements, not vague suggestions
4. **Professional Standards** - Based on proven grid, type, and color systems
5. **Reference-Backed** - 46KB of design system knowledge
6. **Actionable Recommendations** - Implementable changes with rationale

## What This Skill Doesn't Do

- User experience flows (use ux-web-review skill)
- Interaction design
- Animation and motion design
- Brand strategy
- Illustration or iconography
- User research
- A/B testing

## Complementary Skills

This skill pairs well with:

- **ux-web-review**: For holistic experience + visual review
- **accessibility**: For deeper WCAG compliance
- **design-system**: For component library creation

## Progressive Disclosure

The skill uses a three-level loading system:

1. **Metadata** - Always in context (name + description)
2. **SKILL.md** - Loaded when skill triggers
3. **References** - Loaded only when Claude needs specific guidance

This keeps context usage efficient while providing deep expertise when needed.

## Contributing

Found an issue or have suggestions? This skill is part of the Claude Skills Library. See the main repository for contribution guidelines.

## License

MIT License - see [LICENSE](../../LICENSE) for details.

## Links

- [Main Skills Library](../../)
- [UX Web Review Skill](../ux-web-review) (Complementary)
- [Claude.ai](https://claude.ai)

---

**Created with expertise from 10+ years of UI design in enterprise and data-heavy applications**
