# Shared Context Gathering Protocol

This document contains the standard context gathering workflow used across all design skills. It ensures consistent, thorough understanding of the user's product and needs before providing any analysis.

## Purpose

Context gathering is **MANDATORY** before any design review or analysis. It ensures:

- Relevant, informed feedback (not generic advice)
- Understanding of user goals and constraints
- Appropriate recommendations for the context
- Proper prioritization of issues

## The Context Gathering Workflow

### Step 1: MANDATORY Context Gathering

> **STOP**: Do NOT proceed to analysis until context is gathered AND user has confirmed.

**CRITICAL**: Before beginning any review, ALWAYS gather context first. Choose one approach:

#### Option 1: Self-Assessment (Recommended for URLs/Screenshots)

Analyze the design and describe your understanding, then ask the user to confirm or correct:

1. **Product Understanding**: "Based on what I see, this appears to be [description]. Is this correct?"
2. **User Identification**: "The primary user seems to be [role/persona]. Am I understanding this correctly?"
3. **Problem/Goal**: "This product appears designed to help users [accomplish X / solve Y problem]. Did I get that right?"
4. **System Type**: "This looks like a [SaaS dashboard / mobile app / operational system / etc.]. Is that accurate?"
5. **Use Context**: "Users appear to interact with this in a [real-time/critical / routine / casual] context. Is this the intended use case?"

**DO NOT answer these questions yourself. DO NOT make assumptions. ONLY the user can provide this context.**

**WAIT**: Stop here and wait for user confirmation or correction. Do NOT proceed without user response.

#### Option 2: Designer Context Questions

Request brief context directly:

1. **Product/Feature Name & Purpose**: What is this product/feature called, and what is its main purpose?
2. **Primary User**: Who is the intended user? (role, technical level, primary goals)
3. **Problem Being Solved**: What problem or need does this address for users?
4. **System Type**: What category best describes this?
   - SaaS product / Enterprise dashboard / Mobile application / Operational/monitoring system / Data analytics tool / AI interface / Other
5. **Use Context**: How and when will users typically interact with this?
   - Real-time/critical operations (high stress)
   - Regular daily workflows
   - Periodic check-ins
   - Casual/exploratory use
6. **Design Stage**: What stage is this design in?
   - Early concept/wireframe / Mid-fidelity prototype / High-fidelity mockup / Near-final design / Existing product needing revision

**DO NOT answer these questions yourself. DO NOT make assumptions. ONLY the user can provide this context.**

**WAIT**: Stop here and wait for user responses. Do NOT proceed without user response.

**DO NOT skip this step. DO NOT proceed to analysis without user response.**

## Skill-Specific Context Questions

In addition to the standard questions above, each skill may add domain-specific questions:

### UX Web Review

Additional question:

- **Specific UX Concerns (Optional)**: Are there any specific UX concerns or areas you would like me to focus on?

### UI Design Review

Additional questions:

- **Design System (Optional)**: Are you working within an existing design system or brand guidelines?
- **Specific UI Concerns (Optional)**: Are there specific visual/layout concerns you would like me to address?

### Accessibility Expert

Additional questions:

- **Target WCAG Level**: Are you aiming for AA or AAA compliance?
  - AA: Industry standard (recommended, default if not specified)
  - AAA: Enhanced compliance (stricter)
- **Platform**: Is this web, mobile app, or desktop application?
  - Web: Standard WCAG applies
  - Mobile: WCAG + mobile-specific considerations
  - Desktop: WCAG + platform conventions

### Microcopy & Content Design

Additional questions:

- **Desired Tone of Voice (Optional)**: What tone should the copy have?
  - Professional & formal / Professional but friendly / Technical & precise / Conversational
- **Brand Voice Guidelines (Optional)**: Are there any brand voice guidelines I should be aware of?

### User Research & Flows

Additional question:

- **Existing Personas (Optional)**: Do you already have defined personas, or should I help create them?

### Design Super-Agent

Uses standard questions only (combines all skills).

## Why Context Gathering is Non-Negotiable

### Without Context

- Generic feedback that doesn't apply
- Wrong assumptions about users
- Inappropriate recommendations
- Wasted time on irrelevant issues
- Missing critical constraints

### With Context

- Targeted, relevant feedback
- Recommendations that fit user needs
- Proper prioritization
- Actionable improvements
- Understanding of constraints

## When to Ask Questions vs. Proceed

### Ask Questions When

- Critical information is missing
- User goals are ambiguous
- Technical constraints are unclear
- Multiple interpretations possible

### May Proceed With Partial Context When

- User explicitly says "just give quick feedback"
- Design stage is clearly early/exploratory
- User provides partial answers and indicates that's sufficient

### Never Proceed Without

- Basic product understanding
- Primary user identification
- Core problem/goal clarity

## Maintenance Notes

This file is the **canonical source** for context gathering across all skills. When updating:

1. Update this file first
2. Propagate changes to all SKILL.md files that use context gathering
3. Test that context gathering works as expected

Skills using this protocol:

- ux-web-review
- ui-design-review
- accessibility-expert
- microcopy-content-design
- user-research-flows
- design-super-agent
