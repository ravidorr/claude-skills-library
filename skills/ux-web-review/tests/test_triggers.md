# Trigger Tests - UX Web Review

These tests verify that various phrasings correctly activate the ux-web-review skill.

## Test Case: Exact Trigger - "Give me UX feedback"

### Input

**Trigger**: "Give me UX feedback on this page"
**Attachments**: Screenshot of a web application

### Expected Behavior

1. Skill activates (not generic Claude response)
2. Claude acknowledges this is a UX review request
3. Proceeds to context gathering (Option 1 or 2)

### Pass Criteria

- [ ] Skill-specific workflow initiated
- [ ] Context questions asked before analysis

---

## Test Case: Exact Trigger - "Review this web app"

### Input

**Trigger**: "Review this web app"
**Attachments**: URL or screenshot

### Expected Behavior

1. Skill activates
2. Context gathering initiated

### Pass Criteria

- [ ] UX review workflow starts
- [ ] Not confused with UI review or other skills

---

## Test Case: Variation - "Analyze the UX"

### Input

**Trigger**: "Analyze the UX of this interface"
**Attachments**: Screenshot

### Expected Behavior

1. Skill activates
2. UX-focused analysis (not UI or accessibility)

### Pass Criteria

- [ ] Correctly identifies as UX request
- [ ] Context gathering occurs

---

## Test Case: Variation - "Usability review"

### Input

**Trigger**: "Do a usability review of this dashboard"
**Attachments**: Screenshot

### Expected Behavior

1. Skill activates (usability is core UX)
2. Context gathering initiated

### Pass Criteria

- [ ] Skill recognizes usability as UX domain
- [ ] Proceeds with UX workflow

---

## Test Case: Ambiguous - "Review this design"

### Input

**Trigger**: "Review this design"
**Attachments**: Screenshot

### Expected Behavior

1. May ask for clarification (UX vs UI vs comprehensive)
2. Or proceeds with UX if context suggests it

### Pass Criteria

- [ ] Does not assume wrong skill
- [ ] Asks clarifying question OR proceeds appropriately

---

## Test Case: Non-Trigger - "Check the colors"

### Input

**Trigger**: "Check if the colors are accessible"
**Attachments**: Screenshot

### Expected Behavior

1. Should NOT activate ux-web-review
2. This is an accessibility-expert trigger

### Pass Criteria

- [ ] Does not start UX workflow
- [ ] Recognizes as accessibility request
