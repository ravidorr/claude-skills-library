# UX Web Review - Test Cases

This folder contains test cases for verifying the ux-web-review skill behavior.

## Test Files

- `test_triggers.md` - Verify trigger phrases activate the skill
- `test_context.md` - Verify context gathering workflow
- `test_analysis.md` - Verify analysis quality and format

## Quick Test

To quickly verify the skill is working:

1. Load the skill in Claude or Cursor
2. Say: "Give me UX feedback on this dashboard" (with a screenshot)
3. Verify: Claude asks context questions before analyzing
4. Verify: Analysis covers usability, information architecture, navigation
5. Verify: Recommendations are specific and actionable

## Running Full Tests

See `skills/_shared/testing_framework.md` for the full testing methodology.
