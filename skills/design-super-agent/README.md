# Design Super-Agent Skill

Master expert in product design for complex systems with 10+ years of experience in data-driven systems, operational dashboards, and enterprise SaaS. Integrates all six design disciplines into one comprehensive review.

## What This Skill Does

Transforms Claude into a **holistic design expert** who provides end-to-end design analysis covering:

1. **User Research & Personas** - WHO are users, what do they need
2. **User Journeys & Flows** - WHERE does this fit, how do users move through
3. **Deep UX Analysis** - HOW usable is it, where is friction
4. **Precise UI Design** - IS it visually clear, aligned, precise
5. **Tight Microcopy** - WHAT does it say, is it clear and helpful
6. **Full Accessibility** - DOES it work for everyone, is it compliant

## What Makes This Different

### Individual Skills (Use for Deep Dives)

- **user-research-flows**: Extensive persona building, journey mapping
- **ux-web-review**: Detailed UX and usability analysis
- **ui-design-review**: Precise visual design critique
- **microcopy-content-design**: Specialized content review
- **accessibility-expert**: WCAG compliance audit

### This Super-Agent (Use for Everything)

- Comprehensive review across all areas
- Integrated perspective (how UX affects UI affects copy)
- Holistic recommendations
- One structured deliverable covering all aspects
- Time-efficient single review

## Who It's For

- **Product Designers** wanting comprehensive design review
- **Design Leads** ensuring quality across all dimensions
- **Product Managers** evaluating complete design proposals
- **Startups** needing full design critique efficiently
- **Design Teams** conducting thorough design reviews

## When To Use

Trigger this skill by saying:

- "Review this design comprehensively"
- "Full design review"
- "Analyze everything about this interface"
- "Give me complete design feedback"
- "Review UX, UI, content, and accessibility"

**Use This When**:

- You want comprehensive review of everything
- You need holistic perspective across all design layers
- You're reviewing complete screens or flows
- You want integrated recommendations
- Time-efficient single review preferred

**Use Individual Skills When**:

- Deep dive needed in one specific area
- Specialized expertise required (e.g., WCAG audit only)
- Focused iteration on single aspect
- Building specific deliverable (e.g., persona set)

## Key Features

### Mandatory Context Gathering

Before any review, Claude asks questions to understand:

- What your product does
- Who your users are
- What problems you're solving
- System type and use context
- Design stage

This ensures relevant, informed feedback across all dimensions.

### Six-Dimension Integrated Analysis

**1. Personas & User Psychology**

- Primary user role and technical level
- Goals and motivations
- Context and environment
- Pain points and barriers
- Behavioral patterns

**2. User Journey Context**

- What triggers this interaction
- What came before/after
- Emotional state
- Critical decisions

**3. Flow Analysis**

- Step-by-step breakdown
- Decision points and branching
- Alternative paths
- Error scenarios

**4. UX Analysis**

- Information architecture
- Cognitive load
- Task efficiency
- Navigation and wayfinding

**5. UI Design Review**

- Layout and composition
- Grid and alignment
- Typography hierarchy
- Color and accessibility

**6. Microcopy Review**

- Button labels and CTAs
- Error messages
- Status indicators
- Tone consistency

**7. Accessibility Review**

- WCAG AA compliance
- Keyboard navigation
- Screen reader support
- Color contrast

### Structured Deliverable

Every review includes:

1. **Short Summary** - What was reviewed
2. **Personas & User Goals** - Who uses this, what they need
3. **User Journey Context** - Where this fits
4. **Flow Review** - How users move through
5. **UX Analysis** - Usability strengths and issues
6. **UI Review** - Visual design with specific fixes
7. **Microcopy Review** - Copy with alternatives
8. **Accessibility Review** - Compliance status and fixes
9. **Practical Recommendations** - Prioritized action items
10. **Optional Questions** - Only if critical info missing

### Prioritized Action Items

**Immediate Actions** (Critical):

- Must-fix issues blocking users

**Short-Term Improvements** (High Priority):

- Should-fix issues affecting experience

**Medium-Term Enhancements** (Recommended):

- Nice-to-have improvements

## What's Included

### Core Instructions (SKILL.md)

- Expert holistic design methodology
- Context-gathering workflow
- Six-dimension analysis framework
- Structured deliverable format
- Quality standards for comprehensive review

### No Separate References

This skill consolidates expertise from all five specialized skills. For deep-dive reference materials, use the individual skills:

- `ux-web-review/references/` - UX patterns, accessibility basics
- `ui-design-review/references/` - Grid, typography, color systems
- `accessibility-expert/references/` - WCAG standards, ARIA patterns
- `microcopy-content-design/references/` - Copy patterns, error messages
- `user-research-flows/references/` - Personas, journeys, flows

## Installation

1. **Download**: Get `design-super-agent.skill` from this directory
2. **Install in Claude**:
   - Go to [Claude.ai](https://claude.ai) > Settings > Skills
   - Click "Upload Skill"
   - Select `design-super-agent.skill`
   - Confirm installation

## Usage Examples

### Example 1: Complete Dashboard Review

```
You: Give me a full design review of this dashboard
     [uploads screenshot]

Claude: [Asks context questions first]
        Based on what I see, this appears to be an observability
        dashboard for DevOps teams. Is this correct?

You: Yes, it's for monitoring microservices.

Claude: [Provides comprehensive six-dimension analysis]

        1. SHORT SUMMARY
        Reviewing observability dashboard for DevOps/SRE users
        monitoring microservices health and performance.
        
        2. PERSONAS & USER GOALS
        Primary: Senior SRE, 5+ years experience
        Goals: Quick triage, reduce MTTR, spot patterns
        Context: High-stress, time-critical, multi-tasking
        
        3. USER JOURNEY CONTEXT
        Journey Stage: Active monitoring / incident detection
        Trigger: Regular check or alert notification
        Emotions: Vigilant, needs confidence in data
        
        4. FLOW REVIEW
        Current: Dashboard > Service list > Drill down
        Issues: 3 clicks to see logs, should be 1
        Recommendation: Add quick-access log panel
        
        5. UX ANALYSIS
        Strengths:
        - Clear service health overview
        - Good use of status colors
        
        Issues:
        - Cognitive overload: 47 metrics visible at once
        - No clear hierarchy of importance
        - Filter panel hidden by default
        
        6. UI REVIEW
        Layout: 
        - Issue: Cards not aligned to grid
        - Fix: Use 12-column grid, 24px gutters
        
        Typography:
        - Issue: 6 different font sizes, no clear scale
        - Fix: Use Major Third scale (32/24/20/16/14)
        
        7. MICROCOPY REVIEW
        Button "Submit" should be "Apply Filters"
        Error "Error" should be "Can't load metrics. Retry?"
        
        8. ACCESSIBILITY REVIEW
        WCAG Status: ~60% AA compliant
        Critical: Gray text (#999) fails contrast (2.8:1)
        Fix: Change to #666666 (5.7:1)
        
        9. RECOMMENDATIONS
        Immediate:
        1. Fix contrast failures
        2. Add keyboard navigation to charts
        
        Short-term:
        1. Reduce visible metrics, add progressive disclosure
        2. Implement consistent grid system
        
        Medium-term:
        1. Add customizable dashboard layouts
        2. Implement saved filter presets
```

### Example 2: Focused Comprehensive Review

```
You: Full design review, but focus more on accessibility
     and microcopy - those are our weak areas

Claude: [After context gathering, provides full review
        with expanded accessibility and microcopy sections]
```

### Example 3: Flow-Focused Review

```
You: Comprehensive review of this onboarding flow
     [uploads 5 screens]

Claude: [Reviews all screens as connected flow]
        
        FLOW OVERVIEW
        5-step onboarding: Account > Profile > Connect > Configure > Done
        
        [Provides analysis for each step covering all 6 dimensions,
        plus transition analysis between steps]
        
        FLOW-LEVEL ISSUES
        - Step 3-4 transition unclear
        - No progress indicator
        - Can't go back from step 4
        
        [Continues with UI, copy, accessibility for each screen]
```

## Specialized Context Expertise

### Operational Systems & Real-Time Interfaces

- High-stress decision-making
- Time-critical operations
- 24/7 contexts with handoffs
- Alert fatigue prevention
- Keyboard-driven power user workflows

### Enterprise & B2B Applications

- Multiple stakeholder types
- Complex approval workflows
- Compliance and audit requirements
- Long-term user relationships
- Technical depth required

### Data-Heavy Dashboards

- Dense information display
- Multi-metric monitoring
- Pattern recognition support
- Drill-down hierarchies
- Customization needs

### DevOps & Observability Tools

- Technical user base
- CLI comfort expected
- Automation integration
- Incident response flows
- Runbook integration

## Skill Structure

```
design-super-agent/
├── SKILL.md (21 KB)               Core instructions
├── README.md                       This file
└── design-super-agent.skill       Packaged skill
```

## What Makes This Effective

1. **Holistic Perspective** - Sees how all design dimensions connect
2. **Comprehensive Coverage** - Six dimensions in one review
3. **Integrated Recommendations** - Considers cross-cutting concerns
4. **Time Efficient** - One review instead of five separate ones
5. **Prioritized Output** - Clear action items by priority
6. **Context-Aware** - Adapts depth to your needs
7. **Professional Standards** - Based on 10+ years of consulting experience

## What This Skill Doesn't Do

- Code implementation
- User research execution (interviews, testing)
- Visual design creation (mockups, wireframes)
- Brand strategy
- Marketing or growth strategy
- A/B test analysis
- Analytics setup

## Relationship to Other Skills

This super-agent **integrates** the five specialized skills:

| Specialized Skill | Super-Agent Coverage |
|-------------------|---------------------|
| user-research-flows | Personas, journeys, flows (condensed) |
| ux-web-review | UX analysis (condensed) |
| ui-design-review | UI review (condensed) |
| microcopy-content-design | Copy review (condensed) |
| accessibility-expert | Accessibility (condensed) |

**Use Super-Agent** for breadth across all areas.
**Use Specialized Skills** for depth in one area.

## Quality Standards

Every comprehensive review includes:

- [ ] Clear persona and user goals
- [ ] Journey context established
- [ ] Flow analysis with alternatives
- [ ] UX strengths and weaknesses
- [ ] UI specific improvements with measurements
- [ ] Microcopy alternatives (3 versions)
- [ ] Accessibility compliance check
- [ ] Prioritized action items

Every recommendation is:

- [ ] Specific and detailed
- [ ] Immediately actionable
- [ ] Based on user needs
- [ ] Considering technical constraints
- [ ] Referenced to standards (when applicable)

## Progressive Disclosure

The skill uses a two-level loading system:

1. **Metadata** - Always in context (name + description)
2. **SKILL.md** - Loaded when skill triggers

For deep reference materials, the skill directs to specialized skills.

## Contributing

Found an issue or have suggestions? This skill is part of the Claude Skills Library. See the main repository for contribution guidelines.

## License

MIT License - see [LICENSE](../../LICENSE) for details.

## Links

- [Main Skills Library](../../)
- [UX Web Review Skill](../ux-web-review) (Component)
- [UI Design Review Skill](../ui-design-review) (Component)
- [Accessibility Expert Skill](../accessibility-expert) (Component)
- [Microcopy & Content Design Skill](../microcopy-content-design) (Component)
- [User Research & Flows Skill](../user-research-flows) (Component)
- [Claude.ai](https://claude.ai)

---

**Created with expertise from 10+ years of holistic product design consulting in complex systems**
