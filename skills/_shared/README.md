# Shared Skill Resources

This folder contains shared resources used across multiple skills. These files serve as the **canonical source of truth** for common patterns and content.

## Files

### context_gathering.md

The standard context gathering protocol used by all design skills. Contains:

- The mandatory context gathering workflow
- Option 1 (Self-Assessment) and Option 2 (Designer Questions)
- Skill-specific additional questions
- Guidelines for when to ask vs. proceed

**Used by**: All 6 design skills

### analysis_standards.md

Common analysis principles, tone guidelines, and quality standards. Contains:

- Tone and approach guidelines
- Quality standards for recommendations
- Severity level definitions
- Cross-skill handoff guidelines
- Skill-specific standards summary

**Used by**: All 6 design skills

### testing_framework.md

The testing methodology for validating skill behavior. Contains:

- Test case structure and format
- Test categories (triggers, context, analysis, edge cases)
- How to run tests
- Results template

**Used by**: Any skill that needs testing

### mcp_browser_integration.md

Examples of using cursor-ide-browser MCP tools for design reviews. Contains:

- Available browser tools overview
- Common workflows (page review, responsive testing, flow testing)
- Skill-specific usage examples
- Best practices and troubleshooting

**Used by**: Skills that review live web applications

## Maintenance Guidelines

### When Updating Shared Content

1. **Edit the shared file first** - Make changes here as the source of truth
2. **Review all dependent skills** - Check which skills use this content
3. **Propagate changes** - Update each SKILL.md file to match
4. **Test the skills** - Verify context gathering works correctly

### Why Content is Duplicated in SKILL.md Files

Skills must be self-contained because:

- They may be loaded independently (without access to _shared folder)
- Claude.ai skill upload packages each skill separately
- Some environments don't support cross-skill references

The _shared folder exists to:

- Document the canonical version of shared content
- Make maintenance easier (one place to update logic)
- Ensure consistency across skills
- Provide a reference for creating new skills

### Adding New Shared Content

If you identify content duplicated across multiple skills:

1. Create a new `.md` file in this folder
2. Document what it contains and which skills use it
3. Add maintenance notes to the file
4. Update this README

## Current Shared Patterns

| Pattern | File | Used By |
|---------|------|---------|
| Context Gathering | `context_gathering.md` | All 6 skills |

## Future Considerations

Additional content that could be shared:

- **Analysis Principles** - Tone and quality standards (similar across skills)
- **Professional Standards** - Review approach and communication style
- **Output Formatting** - Structured deliverable formats

These are not yet extracted because the differences between skills are significant enough that sharing might reduce clarity.
