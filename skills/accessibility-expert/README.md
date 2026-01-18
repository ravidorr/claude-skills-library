# Accessibility Expert Skill

Expert accessibility consultant with 10+ years of experience implementing WCAG 2.1/2.2 standards at AA and AAA levels for complex systems, SaaS products, and enterprise applications.

## What This Skill Does

Transforms Claude into an expert accessibility consultant who provides **comprehensive accessibility audits** based on WCAG 2.1/2.2 standards. The skill ensures designs work for everyone, including:

- Users with visual impairments
- Screen reader users
- Keyboard-only users
- Users with color blindness
- Users with motor impairments
- Users with cognitive disabilities

## Accessibility by Design

This skill provides the **accessibility and inclusivity layer** that ensures designs work for everyone:

**User Research**: WHO are users (including those with disabilities)
**UX Skill**: HOW do users interact (including assistive tech users)
**UI Skill**: Is it visually clear (including for low vision users)
**Content Skill**: Is copy clear (including for screen readers)
**This Skill**: Does it work for EVERYONE? Is it compliant?

## Who It's For

- **Product Designers** ensuring accessibility from the start
- **Design Teams** conducting accessibility audits
- **Product Managers** meeting compliance requirements
- **Developers** implementing accessible patterns
- **Organizations** achieving WCAG compliance

## When To Use

Trigger this skill by saying:

- "Review accessibility for..."
- "Check WCAG compliance..."
- "Make this accessible..."
- "Accessibility audit for..."
- "Does this meet AA standards?"

Works with:

- Design mockups and prototypes
- Existing interfaces
- Component libraries
- Complete flows
- Individual screens

## Key Features

### Minimal Context Required

Unlike other design skills, accessibility standards are objective and universal.

**Only 2 Quick Questions**:

1. **Target WCAG Level**: AA (standard) or AAA (enhanced)?
2. **Platform**: Web, mobile, or desktop?

Then proceed directly to review. Standards-based regardless of product purpose.

### Comprehensive Audit Checklist

**Visual Accessibility**:

- Color contrast ratios (text, icons, UI components)
- Color independence (not color-only information)
- Typography standards (size, spacing, line height)
- Visual hierarchy and reading order

**Keyboard Accessibility**:

- All functionality keyboard-accessible
- Logical tab order
- Visible focus indicators
- No keyboard traps
- Keyboard shortcuts

**Screen Reader Compatibility**:

- Semantic HTML structure
- ARIA attributes (when needed)
- Alt text for images
- Proper heading hierarchy
- Landmark regions

**Content Accessibility**:

- Readable language
- Clear instructions
- Helpful error messages
- Form labels and validation

**Interaction Accessibility**:

- Touch target sizes (mobile)
- Motion and animation safety
- Time limit considerations
- State communication

### Standards-Based Analysis

Every issue references specific WCAG criteria:

**Example**:

```text
Issue: Button has insufficient contrast
WCAG: 1.4.3 Contrast (Minimum) - Level AA
Current: 3.2:1
Required: 4.5:1
Solution: Change #999 to #666 (achieves 5.7:1)
```text

### Prioritized Issues

**Critical (Must Fix)**:

- WCAG failures blocking users
- Legal compliance risks
- Priority: Immediate

**High Priority (Should Fix)**:

- WCAG AA failures
- Significant barriers
- Priority: Short-term

**Medium Priority (Recommended)**:

- WCAG AAA improvements
- Enhanced usability
- Priority: Medium-term

**Low Priority (Nice to Have)**:

- Best practices
- Progressive enhancements
- Priority: Long-term

### Practical Solutions

For every issue found, provides:

- Specific problem description
- Impact on users
- WCAG standard reference
- Current state
- Required standard
- Concrete solution
- Code/design examples

### Testing Guidance

**Automated Testing**:

- Tool recommendations (axe, WAVE, Lighthouse)
- What automated tools can catch (~30-40%)
- Regression testing approach

**Manual Testing**:

- Keyboard testing protocols
- Screen reader testing (NVDA, JAWS, VoiceOver)
- Color blindness simulation
- Contrast checking

**User Testing**:

- Testing with disabled users
- Realistic task scenarios
- Diverse disability representation

## What's Included

### Core Instructions (SKILL.md)

- Expert accessibility methodology
- WCAG 2.1/2.2 compliance framework
- Comprehensive audit checklist
- Platform-specific considerations
- Professional standards

## WCAG Compliance Levels

### Level AA (Standard)

Industry standard for legal compliance. Recommended target.

**Key Requirements**:

- 4.5:1 contrast for normal text
- 3:1 contrast for large text (18pt+)
- 3:1 contrast for UI components
- Keyboard accessibility
- Meaningful alt text
- Form labels
- Visible focus indicators
- Text resizing to 200%

### Level AAA (Enhanced)

Highest level. May not be achievable for all content.

**Additional Requirements**:

- 7:1 contrast for normal text
- 4.5:1 contrast for large text
- Sign language interpretation
- Extended audio descriptions
- Simpler reading level

**Recommendation**: Target AA compliance, implement AAA where feasible.

## Installation

1. **Download**: Get `accessibility-expert.skill` from this directory
2. **Install in Claude**:
   - Go to [Claude.ai](https://claude.ai) → Settings → Skills
   - Click "Upload Skill"
   - Select `accessibility-expert.skill`
   - Confirm installation

## Usage Examples

### Example 1: Dashboard Accessibility Audit

```text
You: Review the accessibility of this monitoring dashboard.
     Target: WCAG AA, Web platform.

Claude: [Analyzes dashboard comprehensively]

GENERAL ACCESSIBILITY STATUS
Estimated Compliance: ~65% AA
Critical Issues: 3
High Priority: 8
Medium Priority: 5

CRITICAL ISSUES (Must Fix)

1. Insufficient Text Contrast
   WCAG: 1.4.3 Contrast (Minimum) - Level AA
   Impact: Low vision users cannot read status text
   Current: Status text #999999 on #FFFFFF = 2.85:1
   Required: 4.5:1 minimum
   Solution: Change to #666666 (5.74:1) or darker
   
2. Missing Keyboard Access to Alert Dismiss
   WCAG: 2.1.1 Keyboard - Level A
   Impact: Keyboard users cannot dismiss alerts
   Current: onClick only, no keyboard handler
   Required: Keyboard-accessible (Enter/Space)
   Solution: Add onKeyDown handler, tabindex="0"
   Example: <button onClick={dismiss} onKeyDown={handleKey}>
   
3. Chart Data Conveyed by Color Only
   WCAG: 1.4.1 Use of Color - Level A
   Impact: Color blind users cannot distinguish lines
   Current: 5 lines differentiated only by color
   Required: Additional distinguishing method
   Solution: Add line patterns (solid, dashed, dotted)
            OR add data labels
            OR use distinct markers

HIGH PRIORITY ISSUES

[... detailed list continues ...]

RECOMMENDATIONS
Immediate: Fix critical contrast and keyboard issues
Short-term: Add ARIA labels, improve focus indicators
Long-term: Implement keyboard shortcuts, enhance patterns
```text

### Example 2: Form Accessibility Review

```text
You: Check this registration form for accessibility.
     WCAG AA, web.

Claude: [Reviews form comprehensively]

CRITICAL ISSUES

1. Missing Form Labels
   WCAG: 3.3.2 Labels or Instructions - Level A
   Impact: Screen reader users don't know field purpose
   Current: Placeholder text only ("Enter email...")
   Required: Explicit <label> elements
   Solution:
   <label for="email">Email Address</label>
   <input id="email" type="email" 
          placeholder="you@example.com">

2. Error Messages Not Linked
   WCAG: 3.3.1 Error Identification - Level A
   Impact: Screen readers don't announce errors
   Current: Error shown visually below field
   Required: aria-describedby linking error
   Solution:
   <input id="password" 
          aria-describedby="password-error"
          aria-invalid="true">
   <span id="password-error" role="alert">
     Password must be at least 8 characters
   </span>

[... continues with all issues and solutions ...]
```text

### Example 3: Quick Component Check

```text
You: Is this modal dialog accessible?

Claude: [Analyzes modal]

ACCESSIBILITY REVIEW: Modal Dialog

CRITICAL ISSUE
Focus Trap Missing
- WCAG: 2.4.3 Focus Order - Level A
- Focus can escape modal to background
- Solution: Trap focus within modal
  - On open: Focus first interactive element
  - Tab: Cycle through modal elements only
  - Shift+Tab: Reverse cycle
  - Escape: Close modal, return focus

HIGH PRIORITY
1. Missing Close Button for Keyboard
   - Close button is visual "X" only
   - Add keyboard-accessible close button
   - Ensure Escape key works

2. No ARIA Modal Role
   - Add role="dialog" 
   - Add aria-modal="true"
   - Add aria-labelledby pointing to title

RECOMMENDED
- Add aria-describedby for longer description
- Prevent background scroll when modal open
- Animate with prefers-reduced-motion check

CODE EXAMPLE:
<div role="dialog" 
     aria-modal="true"
     aria-labelledby="modal-title"
     aria-describedby="modal-description">
  <h2 id="modal-title">Confirm Action</h2>
  <p id="modal-description">Are you sure?</p>
  <button onClick={cancel}>Cancel</button>
  <button onClick={confirm}>Confirm</button>
</div>
```text

## Complementary Skills

This skill works powerfully with all design skills:

### With UX Web Review

- **UX Skill**: General usability review
- **This Skill**: Specific accessibility compliance

### With UI Design Review

- **UI Skill**: Visual precision and consistency
- **This Skill**: Accessible color contrast and typography

### With Microcopy & Content Design

- **Content Skill**: Clear, helpful copy
- **This Skill**: Screen reader-friendly copy

### With User Research & Flows

- **Research Skill**: Understanding all users
- **This Skill**: Ensuring designs serve disabled users

**Use All Five**: For complete, accessible, professional design!

## Core Expertise Areas

- WCAG 2.1/2.2 standards (AA and AAA)
- Color contrast and visual accessibility
- Keyboard navigation and focus management
- Screen reader compatibility and ARIA
- Accessible forms and error handling
- Mobile accessibility
- Data visualization accessibility
- Motion and animation safety
- Enterprise system accessibility
- Automated and manual testing

## Skill Structure

```text
accessibility-expert/
├── SKILL.md (28 KB)               Core instructions
├── README.md                       This file
└── accessibility-expert.skill     Packaged skill
```text

## What Makes This Effective

1. **Standards-Based** - Every recommendation tied to WCAG criteria
2. **Objective Review** - Minimal context needed, universal standards
3. **Comprehensive Coverage** - All aspects of accessibility
4. **Practical Solutions** - Specific, implementable fixes
5. **Prioritized Issues** - Clear action hierarchy
6. **Testing Guidance** - How to verify compliance
7. **Real-World Focus** - Enterprise and complex system experience

## What This Skill Doesn't Do

- Visual design critique (use ui-design-review skill)
- General usability review (use ux-web-review skill)
- Write copy (use microcopy-content-design skill)
- User research (use user-research-flows skill)
- Legal compliance advice (consult accessibility lawyer)

## How This Completes Your Library

**Skill #5 in your comprehensive library**:

1. **User Research & Flows** - Strategic understanding
2. **UX Web Review** - Experience and usability
3. **UI Design Review** - Visual precision
4. **Microcopy & Content** - Clear communication
5. **Accessibility Expert** - Inclusive design (this one!)

**Combined Power**:

- Research → UX → UI → Content → Accessibility
- Complete design process from understanding to inclusive execution
- Professional, comprehensive, compliant

## Accessibility by Design Workflow

This skill promotes **accessibility by design**, not as an afterthought:

**Early Stage**: Review accessibility in mockups
**Mid Stage**: Audit prototypes before development
**Late Stage**: Final compliance check
**Post-Launch**: Regular accessibility audits

**Result**: Accessible products from the start

## Contributing

Found an issue or have suggestions? This skill is part of the Claude Skills Library. See the main repository for contribution guidelines.

## License

MIT License - see [LICENSE](../../LICENSE) for details.

## Links

- [Main Skills Library](../../)
- [User Research & Flows Skill](../user-research-flows) (Complementary)
- [UX Web Review Skill](../ux-web-review) (Complementary)
- [UI Design Review Skill](../ui-design-review) (Complementary)
- [Microcopy & Content Design Skill](../microcopy-content-design) (Complementary)
- [WCAG 2.2 Guidelines](https://www.w3.org/WAI/WCAG22/quickref/)
- [Claude.ai](https://claude.ai)

---

**Created with expertise from 10+ years implementing WCAG standards in complex systems**
