# Microcopy & Content Design Skill

Expert content designer and microcopy specialist with 10+ years of experience writing for complex systems, SaaS products, operational interfaces, and enterprise applications.

## What This Skill Does

Transforms Claude into an expert content designer who provides the **content and communication layer** that brings interfaces to life. The skill covers:

- Microcopy for buttons, labels, tooltips, and interface text
- Error messages that guide users to recovery
- Empty states and onboarding copy
- Status indicators and system feedback
- Tone of voice definition and consistency
- Content for high-stress, time-critical contexts

## Content Layer in Design

This skill provides the content and communication layer that connects design to users:

**User Research & Flows**: WHO are users, WHAT do they need?
**UX Skill**: HOW do users interact, is it usable?
**UI Skill**: Is it visually clear and precise?
**This Skill**: What does the interface SAY? Is it clear, helpful, consistent?

## Who It's For

- **Product Designers** writing interface copy
- **Content Designers** improving product communication
- **UX Writers** seeking systematic microcopy approaches
- **Product Managers** defining tone and voice
- **Developers** writing error messages and UI text

## When To Use

Trigger this skill by saying:

- "Improve this copy"
- "Write error message for..."
- "Review the microcopy"
- "Define tone of voice"
- "Create empty state copy"

Works with:

- Screenshots of interfaces
- Existing copy to improve
- Error scenarios to handle
- Product context for tone definition

## Key Features

### Mandatory Context Gathering

Before any content work, Claude asks questions to understand:

- What your product does
- Who your users are
- The context and stress level
- Existing tone guidelines (if any)

This ensures relevant, on-brand copy tailored to your users.

### Multiple Copy Alternatives

For every piece of copy, provides 3 versions:

**Short** (minimal, scannable):

- Fewest words possible
- For experienced users
- High-density contexts

**Clear** (balanced):

- Clear and unambiguous
- For most users
- Standard contexts

**Detailed** (helpful):

- Provides guidance
- For complex actions
- First-time or critical contexts

### Error Message Framework

Systematic approach to error copy:

**Pattern**: What happened + Why (optional) + What to do

**Example**:

```text
"Can't save changes: File name contains invalid characters. 
Remove special characters and try again."
```

**Error Types Covered**:

- User errors (fixable by user)
- System errors (technical issues)
- Critical errors (urgent action needed)

### Tone & Voice Definition

Complete tone framework:

- **Voice**: Consistent personality (clever, confident, helpful)
- **Tone**: Context-appropriate inflection (calm in errors, brief in success)
- **Principles**: Rules for consistent writing

### Specialized Contexts

**High-Stress Operational**:

- Extremely concise
- Status-first information
- Clear severity indicators
- Immediate action guidance

**Technical Products**:

- Correct terminology
- Don't oversimplify
- Assume technical knowledge

**Enterprise/B2B**:

- Professional tone
- Clear accountability
- Permission/access clarity

## What's Included

### Core Instructions (SKILL.md)

- Expert content design methodology
- Context-gathering workflow
- Copy frameworks for all UI elements
- Tone and voice definition process
- Quality standards

### Reference Materials

**microcopy_patterns.md** (~920 lines)

- Button copy patterns (primary, secondary, destructive)
- Label conventions and best practices
- Tooltip frameworks and guidelines
- Common UI copy patterns
- Anti-patterns to avoid

**error_messages.md** (~633 lines)

- Error message frameworks
- Error types and handling patterns
- User error vs system error copy
- Critical error communication
- Code examples

**tone_voice.md** (~758 lines)

- Tone definition frameworks
- Voice characteristics for different contexts
- Brand voice examples
- Consistency guidelines
- Context-based tone shifts

**content_design.md** (~767 lines)

- Content design principles
- Information architecture for copy
- Readability and scannability
- Cognitive load reduction
- Writing for different user types

## Installation

1. **Download**: Get `microcopy-content-design.skill` from this directory
2. **Install in Claude**:
   - Go to [Claude.ai](https://claude.ai) > Settings > Skills
   - Click "Upload Skill"
   - Select `microcopy-content-design.skill`
   - Confirm installation

## Usage Examples

### Example 1: Button Copy Improvement

```text
You: Improve this button copy: "Submit"

Claude: [After context gathering]

Current: "Submit"
Issues: Generic, doesn't indicate outcome

Alternatives:
- Short: "Save"
- Clear: "Create Account"
- Detailed: "Create Your Account"

Recommendation: Use "Create Account" - it tells users 
exactly what will happen when they click.
```

### Example 2: Error Message

```text
You: Write an error message for when a file upload fails 
     because it's too large

Claude: [After understanding context]

Error Message Options:

Short: 
"File too large. Max 5 MB."

Clear:
"Can't upload: File exceeds 5 MB limit. 
Choose a smaller file or compress this one."

Detailed:
"Upload failed: Your file is 12 MB but the maximum 
allowed size is 5 MB. Try compressing the file or 
splitting it into smaller parts."

Recommendation: Use "Clear" version for most contexts. 
It tells users what happened, what the limit is, and 
what to do next.
```

### Example 3: Empty State Copy

```text
You: Write empty state copy for a dashboard with no alerts

Claude: Empty State Options:

First Use (new user):
Heading: "No alerts yet"
Body: "Set up your first alert to start monitoring 
your systems"
Action: [Create Alert]

Zero State (experienced user):
Heading: "All clear"
Body: "No alerts in the last 24 hours"
Action: [View History]

Success State (intentionally empty):
Heading: "All systems operational"
Body: "No issues detected across 12 monitored services"
Action: [View Details]

Recommendation: Choose based on context. Use "First Use" 
for new users, "All clear" for dashboards, "Success State" 
for status pages.
```

### Example 4: Tone of Voice Definition

```text
You: Help me define the tone of voice for a DevOps 
     monitoring tool

Claude: [After understanding product and users]

VOICE DEFINITION: DevOps Monitoring Tool

Voice Characteristics:
- Technical and precise (not dumbed down)
- Direct and efficient (not wordy)
- Helpful and guiding (not condescending)
- Calm under pressure (not alarming)

Tone by Context:

Normal Operation:
"All 12 services healthy. Last checked 2 min ago."

Warning:
"Memory usage at 85% on api-server-3. Consider scaling."

Critical:
"Service outage: Payment API down. 1,200 users affected. 
View details."

Success:
"Deployment complete. 8 services updated."

We Are / We Are Not:
- We ARE precise, not vague
- We ARE calm, not alarming
- We ARE helpful, not condescending
- We ARE technical, not dumbed-down
- We ARE NOT robotic or cold
- We ARE NOT overly casual or jokey
```

## Complementary Skills

This skill works powerfully with:

### With UX Web Review

- **UX Skill**: Overall usability and experience
- **This Skill**: Clear, helpful copy throughout

### With UI Design Review

- **UI Skill**: Visual precision and layout
- **This Skill**: Copy that fits the visual design

### With Accessibility Expert

- **Accessibility Skill**: Screen reader compatibility
- **This Skill**: Copy that works for all users

### With User Research & Flows

- **Research Skill**: Understanding user needs
- **This Skill**: Copy that addresses those needs

**Use All Five**: For complete, professional design!

## Core Expertise Areas

- Microcopy for complex technical interfaces
- Error messages that guide action
- Status indicators and system feedback
- Empty states and onboarding copy
- Tooltips and contextual help
- Button labels and calls-to-action
- Tone of voice definition
- Content for high-stress contexts
- Technical writing for operational products

## Skill Structure

```text
microcopy-content-design/
├── SKILL.md (25 KB)               Core instructions
├── README.md                       This file
├── microcopy-content-design.skill Packaged skill
└── references/
    ├── microcopy_patterns.md      Button, label, tooltip patterns
    ├── error_messages.md          Error message frameworks
    ├── tone_voice.md              Tone definition frameworks
    └── content_design.md          Content design principles
```

## What Makes This Effective

1. **Context-First** - Understands your product and users before writing
2. **Multiple Options** - Three versions (short/clear/detailed) for every copy
3. **Systematic Frameworks** - Proven patterns for buttons, errors, empty states
4. **Tone Guidance** - Complete voice and tone definition process
5. **Specialized Contexts** - Expert in technical, operational, enterprise copy
6. **Actionable Output** - Ready-to-use copy with clear recommendations

## What This Skill Doesn't Do

- Long-form content (blog posts, documentation)
- Marketing copy (landing pages, ads)
- SEO optimization
- Translation or localization
- Visual design (use ui-design-review skill)
- Usability evaluation (use ux-web-review skill)

## Content Quality Standards

Every piece of copy must be:

- **Clear**: Meaning is unambiguous
- **Concise**: No unnecessary words
- **Actionable**: User knows what to do
- **Consistent**: Matches established tone
- **Accessible**: Works for screen readers

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
- [UI Design Review Skill](../ui-design-review) (Complementary)
- [Accessibility Expert Skill](../accessibility-expert) (Complementary)
- [User Research & Flows Skill](../user-research-flows) (Complementary)
- [Claude.ai](https://claude.ai)

---

**Created with expertise from 10+ years of content design in complex systems and enterprise applications**
