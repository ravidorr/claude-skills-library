# UX Web Review Skill

Expert UX consultant with 10+ years of experience in SaaS, enterprise systems, and complex interfaces.

## What This Skill Does

Transforms Claude into an expert UX consultant who provides professional, systematic reviews of web applications. The skill covers:

- Usability analysis
- Visual design critique
- Accessibility evaluation (WCAG 2.1)
- Information architecture assessment
- Interaction design review
- Mobile responsiveness
- Content and microcopy analysis

## Who It's For

- **Product Designers** seeking expert feedback on interfaces
- **Product Managers** evaluating design decisions
- **Developers** wanting UX guidance before implementation
- **UX Teams** needing structured review methodology
- **Founders** getting professional design critique

## When To Use

Trigger this skill by saying:

- "Give me UX feedback on this page"
- "Review this web app"
- "Analyze the UX of [URL]"
- "Provide UX analysis on this interface"
- "Critique the design of this dashboard"

Works with:

- Live URLs (Claude will navigate and capture screenshots)
- Screenshots you upload
- Design mockups and wireframes

## Key Features

### Mandatory Context Gathering

Before any review, Claude asks questions to understand:

- What your product does
- Who your users are
- What problems you're solving
- Development stage
- Specific concerns

This ensures relevant, informed feedback rather than generic advice.

### Systematic Visual Analysis

For live URLs, Claude:

- Captures comprehensive screenshots
- Tests interactions
- Checks responsive behavior
- Documents edge cases

### Structured Analysis

Every review includes:

- **What Works Well** - Effective UX decisions
- **Issues & Risks** - Prioritized by severity (P0-P3)
- **Practical Recommendations** - Actionable, specific fixes
- **Accessibility Review** - WCAG compliance check
- **Pattern Recognition** - Industry-standard solutions

### Professional Deliverables

Creates comprehensive reports with:

- Executive summary
- Detailed findings with screenshots
- Prioritized action items
- Implementation guidance

## What's Included

### Core Instructions (SKILL.md)

- Expert UX persona and methodology
- Context-gathering workflow
- Browser automation guidance
- Analysis frameworks
- Flexible adaptation guidelines

### Reference Materials

**ux_patterns.md** (8.5 KB)

- 50+ proven UX patterns
- Navigation, data display, forms, complex workflows
- Mobile-specific patterns
- Anti-patterns to avoid

**accessibility.md** (13 KB)

- Complete WCAG 2.1 guidelines
- Keyboard navigation requirements
- Screen reader support
- Color contrast specifications
- Testing checklist and tools
- Common issues with solutions

**review_checklist.md** (14 KB)

- 15 comprehensive review categories
- 200+ specific checkpoints
- Priority framework
- Adaptation guidelines for different review types

## Installation

1. **Download**: Get `ux-web-review.skill` from this directory
2. **Install in Claude**:
   - Go to [Claude.ai](https://claude.ai) > Settings > Skills
   - Click "Upload Skill"
   - Select `ux-web-review.skill`
   - Confirm installation

## Usage Examples

### Example 1: Quick Review

```text
You: Give me UX feedback on https://example.com/dashboard

Claude: [Asks context questions first]
Claude: Based on what I see, this appears to be a SaaS analytics 
        dashboard. Is this correct?
        
You: Yes, that's right.

Claude: [Navigates, captures screenshots, provides detailed analysis]
```text

### Example 2: Focused Review

```text
You: Review the checkout flow on this e-commerce site, focus on 
     mobile experience and conversion optimization

Claude: [Context gathering, then mobile-focused analysis]
```text

### Example 3: Screenshot Review

```text
You: [Uploads screenshot] Analyze the UX of this dashboard design

Claude: [Asks clarifying questions, then provides analysis based 
        on available visual information]
```text

### Example 4: Accessibility Audit

```text
You: Do a full accessibility audit of our app including WCAG 
     compliance

Claude: [Comprehensive accessibility review with specific WCAG 
        criteria, contrast ratios, keyboard nav, screen reader support]
```text

## Review Approach

### Professional Tone

- Sharp, practical, direct feedback
- Experience-based, not theoretical
- Genuine criticism with constructive solutions
- No generic terms like "improve the UX"

### Quality Standards

- Every recommendation is actionable
- Issues prioritized by severity
- Concrete examples provided
- Real-world applicable solutions

### Flexibility

- Adapts to different review depths
- Can focus on specific areas
- Works with varying levels of fidelity
- Conversational or formal report style

## Core Expertise Areas

- Complex systems (dashboards, monitoring, NOC, incident management)
- SaaS enterprise products
- Modern design patterns
- Advanced interactions
- Information architecture
- Microcopy for technical users
- AI integration into existing products
- Principles from DataDog, New Relic, GitHub, Monday, Figma

## Skill Structure

```text
ux-web-review/
├── SKILL.md                      # Core instructions (8 KB)
├── README.md                     # This file
├── ux-web-review.skill          # Packaged skill for installation
└── references/
    ├── ux_patterns.md           # Common UX patterns (8.5 KB)
    ├── accessibility.md         # WCAG guidelines (13 KB)
    └── review_checklist.md      # Systematic checklist (14 KB)
```text

## Progressive Disclosure

The skill uses a three-level loading system:

1. **Metadata** - Always in context (name + description)
2. **SKILL.md** - Loaded when skill triggers
3. **References** - Loaded only when Claude needs specific guidance

This keeps context usage efficient while providing comprehensive knowledge when needed.

## What Makes This Effective

1. **Context-First Approach** - No generic feedback; always grounded in product goals
2. **Systematic Coverage** - Comprehensive checklist ensures nothing is missed
3. **Proven Patterns** - 35+ KB of industry-standard UX knowledge
4. **Experience-Based** - 10+ years of real-world consulting distilled
5. **Priority Framework** - Clear P0-P3 severity levels for action planning
6. **Professional Delivery** - Sharp feedback without being harsh

## What This Skill Doesn't Do

- Visual design (pixel-perfect mockups)
- User research or testing
- Code implementation
- Graphic design
- Branding or marketing strategy
- A/B test setup
- Analytics configuration

## Contributing

Found an issue or have suggestions? This skill is part of the Claude Skills Library. See the main repository for contribution guidelines.

## License

MIT License - see [LICENSE](../../LICENSE) for details.

## Links

- [Main Skills Library](../../)
- [Claude.ai](https://claude.ai)

---

**Created with expertise from 10+ years of UX consulting in SaaS and enterprise systems**
