# Analysis Tests - UX Web Review

These tests verify the quality and format of UX analysis output.

## Test Case: Complete Dashboard Review

### Input

**Trigger**: "Review the UX of this monitoring dashboard"
**Context Provided**:

- Product: Infrastructure monitoring dashboard
- User: DevOps engineer, senior level
- Problem: Monitor system health, respond to incidents
- System: SaaS operational dashboard
- Context: Real-time/critical operations
- Stage: High-fidelity mockup

**Attachments**: Screenshot of dashboard with metrics, alerts, navigation

### Expected Behavior

1. Context gathered and confirmed
2. Visual analysis performed
3. Systematic UX review covering:
   - Information Architecture
   - Navigation & Wayfinding
   - Task Flows
   - Cognitive Load
   - Error Handling
   - Feedback & Status

### Expected Output Structure

- [ ] **Summary** of what was reviewed
- [ ] **Strengths** identified (2-4 items)
- [ ] **Issues** identified with severity
- [ ] **Recommendations** that are specific and actionable
- [ ] References user context (DevOps, critical operations)

### Pass Criteria

- [ ] All UX dimensions covered
- [ ] Recommendations include specific changes (not "improve navigation")
- [ ] Prioritization of issues (critical vs nice-to-have)
- [ ] Appropriate for stated user and context

---

## Test Case: Specific Concern Focus

### Input

**Trigger**: "Review the UX, specifically the onboarding flow"
**Context**: SaaS product, new users, signup flow

### Expected Behavior

1. Focuses analysis on onboarding
2. Still notes other major issues if critical
3. Deeper analysis of onboarding than general review

### Expected Output

- [ ] Detailed onboarding flow analysis
- [ ] Step-by-step breakdown
- [ ] Friction points identified
- [ ] Specific improvements for each step

### Pass Criteria

- [ ] Respects user's focus request
- [ ] Provides depth on requested area
- [ ] Notes if other issues are critical

---

## Test Case: Early Stage Design

### Input

**Trigger**: "UX feedback on this wireframe"
**Context**: Early concept, exploring ideas

### Expected Behavior

1. Adjusts feedback for wireframe stage
2. Focuses on structure, flow, IA
3. Does NOT critique visual polish
4. Suggests what to validate in testing

### Pass Criteria

- [ ] Appropriate for wireframe (not pixel-level)
- [ ] Focuses on structure and flow
- [ ] Suggests next steps for validation

---

## Test Case: Mobile Responsiveness

### Input

**Trigger**: "Review this for mobile UX"
**Attachments**: Mobile screenshot or responsive design

### Expected Behavior

1. Applies mobile-specific UX patterns
2. Considers touch targets, thumb zones
3. Reviews navigation for mobile context

### Pass Criteria

- [ ] Mobile-specific patterns applied
- [ ] Touch interaction considered
- [ ] Not just "desktop shrunk down"

---

## Test Case: Recommendation Specificity

### Input

Any complete UX review

### Expected Output

Recommendations should be specific:

**Good**:

- "Move the 'Save' button from bottom-left to bottom-right to match user expectations and scanning patterns"
- "Add breadcrumb navigation showing: Dashboard > Alerts > Alert Details"
- "Reduce the alert list from 50 visible items to 10 with pagination to decrease cognitive load"

**Bad**:

- "Improve the navigation"
- "Make it more user-friendly"
- "Consider the user flow"

### Pass Criteria

- [ ] Every recommendation has specific action
- [ ] Location/element identified
- [ ] Rationale provided
- [ ] No vague suggestions

---

## Test Case: Cross-Skill Handoff

### Input

During UX review, major accessibility issue discovered

### Expected Behavior

1. Notes the accessibility issue briefly
2. Recommends using accessibility-expert skill for deep dive
3. Does NOT attempt full WCAG audit
4. Stays focused on UX

### Pass Criteria

- [ ] Recognizes accessibility as separate domain
- [ ] Suggests appropriate skill
- [ ] Does not overreach into other skills
