# Context Gathering Tests - UX Web Review

These tests verify the mandatory context gathering workflow.

## Test Case: Self-Assessment (Option 1)

### Input

**Trigger**: "Give me UX feedback on this dashboard"
**Attachments**: Screenshot of an analytics dashboard

### Expected Behavior

1. Claude analyzes the screenshot
2. Provides self-assessment:
   - "Based on what I see, this appears to be [analytics dashboard]"
   - "The primary user seems to be [data analyst/manager]"
   - "This product appears designed to help users [monitor metrics]"
3. Asks user to confirm or correct
4. WAITS for user response before proceeding

### Pass Criteria

- [ ] Self-assessment is reasonable based on visual
- [ ] Asks for confirmation explicitly
- [ ] Does NOT proceed to analysis without user response
- [ ] Questions cover: product, user, problem, system type, context

---

## Test Case: Designer Questions (Option 2)

### Input

**Trigger**: "Review the UX of my product"
**Attachments**: None (or ambiguous screenshot)

### Expected Behavior

1. Claude asks direct questions:
   - Product/Feature name and purpose?
   - Primary user?
   - Problem being solved?
   - System type?
   - Use context?
   - Design stage?
2. WAITS for user responses

### Pass Criteria

- [ ] All 6 standard questions asked
- [ ] Optional UX-specific question included
- [ ] Does NOT proceed without answers

---

## Test Case: Context Confirmation

### Input

**Setup**: After self-assessment, user confirms "Yes, that's correct"

### Expected Behavior

1. Claude acknowledges confirmation
2. Proceeds to visual analysis (Step 2)
3. Does NOT ask more context questions

### Pass Criteria

- [ ] Smooth transition to analysis
- [ ] No redundant questions
- [ ] Analysis references the confirmed context

---

## Test Case: Context Correction

### Input

**Setup**: After self-assessment, user corrects "No, this is for DevOps engineers, not managers"

### Expected Behavior

1. Claude acknowledges correction
2. Updates understanding
3. May ask follow-up questions if needed
4. Proceeds with corrected context

### Pass Criteria

- [ ] Correction is incorporated
- [ ] Analysis reflects corrected user type
- [ ] Recommendations appropriate for DevOps engineers

---

## Test Case: Partial Context

### Input

**Setup**: User only answers 3 of 6 questions, says "that's enough info"

### Expected Behavior

1. Claude proceeds with available context
2. May note assumptions being made
3. Provides analysis with caveats if needed

### Pass Criteria

- [ ] Does not refuse to proceed
- [ ] Acknowledges limited context
- [ ] Analysis still useful

---

## Test Case: Skip Context Attempt

### Input

**Trigger**: "Just quickly review this, no questions"
**Attachments**: Screenshot

### Expected Behavior

1. Claude may do brief self-assessment
2. Notes that full context would improve feedback
3. Provides analysis but may be more general

### Pass Criteria

- [ ] Respects user's request for speed
- [ ] Still provides useful feedback
- [ ] Notes limitations of quick review
