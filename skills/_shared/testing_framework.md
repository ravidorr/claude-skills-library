# Skill Testing Framework

This document defines the testing approach for skills in the Claude Skills Library.

## Purpose

Skills should be tested to ensure:

- Trigger phrases activate the skill correctly
- Context gathering asks appropriate questions
- Analysis follows the documented workflow
- Output matches expected format and quality
- Edge cases are handled gracefully

## Test Case Structure

Each skill can have a `tests/` folder containing test case files:

```text
skill-name/
├── SKILL.md
├── README.md
├── references/
└── tests/
    ├── README.md              # Test overview and instructions
    ├── test_triggers.md       # Trigger phrase tests
    ├── test_context.md        # Context gathering tests
    ├── test_analysis.md       # Analysis workflow tests
    └── expected_outputs/      # Reference outputs for comparison
        └── dashboard_review.md
```

## Test Case Format

Each test case should include:

```markdown
## Test Case: [Name]

### Input

**Trigger**: [The phrase or request that triggers the skill]

**Context Provided**:
- Product: [description]
- User: [description]
- Stage: [description]

**Attachments**: [screenshot/URL/none]

### Expected Behavior

1. [Step 1 expected behavior]
2. [Step 2 expected behavior]
3. [etc.]

### Expected Output Structure

- [ ] Contains [required section 1]
- [ ] Contains [required section 2]
- [ ] Recommendations are specific and actionable
- [ ] Follows skill tone and format

### Pass Criteria

- [ ] All expected behaviors observed
- [ ] Output structure complete
- [ ] No hallucinated features or incorrect assumptions
```

## Test Categories

### 1. Trigger Tests

Verify that various phrasings activate the skill:

- Exact trigger phrases from description
- Variations and synonyms
- Partial matches
- Combined requests

### 2. Context Gathering Tests

Verify context gathering workflow:

- Questions are asked before analysis
- Self-assessment option works correctly
- Designer questions option works correctly
- Proceeds only after user confirmation

### 3. Analysis Tests

Verify analysis quality:

- Covers all documented dimensions
- Recommendations are specific (not vague)
- Follows documented workflow order
- Adapts to provided context

### 4. Edge Case Tests

Verify graceful handling of:

- Missing context (user refuses to answer)
- Ambiguous requests
- Multiple skills applicable
- Very simple or complex inputs

### 5. Output Format Tests

Verify output structure:

- Sections match documented format
- Headings and organization correct
- Appropriate length and detail level
- Consistent tone

## Running Tests

Tests are manual and document-based. To test a skill:

1. Start a fresh conversation with Claude
2. Load the skill (via Claude.ai upload or Cursor rules)
3. Execute each test case
4. Compare behavior and output against expected results
5. Document any failures or deviations

## Test Results Template

```markdown
# Test Results: [Skill Name]

**Date**: YYYY-MM-DD
**Tester**: [Name]
**Skill Version**: [version]

## Summary

- Total Tests: X
- Passed: X
- Failed: X
- Skipped: X

## Results

### Test Case: [Name]
- **Status**: Pass/Fail/Skip
- **Notes**: [Any observations]
- **Issues**: [Any problems found]

[Repeat for each test case]

## Recommendations

[Any suggested improvements based on testing]
```

## When to Test

- Before releasing a new skill
- After significant changes to SKILL.md
- After updating reference materials
- When bugs are reported
- Periodically for regression testing
