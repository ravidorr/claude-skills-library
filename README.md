# Claude Skills Library

A curated collection of high-quality skills that extend Claude's capabilities with specialized knowledge, workflows, and tool integrations.

## What are Skills?

Skills are modular, self-contained packages that transform Claude from a general-purpose AI into a specialized agent equipped with domain-specific expertise. Think of them as "onboarding guides" that give Claude procedural knowledge for specific tasks.

### What Skills Provide

- **Specialized workflows** - Multi-step procedures for specific domains
- **Tool integrations** - Instructions for working with specific file formats or APIs
- **Domain expertise** - Industry-specific knowledge, schemas, business logic
- **Bundled resources** - Scripts, references, and assets for complex tasks

## Available Skills

| Skill | Description | Triggers |
|-------|-------------|----------|
| [ux-web-review](skills/ux-web-review) | Expert UX review and analysis of web applications | "Give me UX feedback", "Review this web app" |
| [ui-design-review](skills/ui-design-review) | Expert UI design review for visual interfaces | "Review the UI design", "Critique this layout" |
| [accessibility-expert](skills/accessibility-expert) | WCAG 2.1/2.2 accessibility audits (AA/AAA) | "Review accessibility", "Check WCAG compliance" |
| [microcopy-content-design](skills/microcopy-content-design) | Microcopy and content design specialist | "Improve this copy", "Write error message for..." |
| [user-research-flows](skills/user-research-flows) | User research, personas, journeys, and flow design | "Create a persona", "Map the user journey" |
| [design-super-agent](skills/design-super-agent) | Comprehensive design review combining all areas | "Full design review", "Analyze everything" |

## Installation

### Claude.ai

1. Download the `.skill` file from any skill folder
2. Go to [Claude.ai](https://claude.ai) > Settings > Skills
3. Click "Upload Skill" and select the file
4. Confirm installation

### Cursor IDE

1. Clone the library:

   ```bash
   git clone https://github.com/ravidorr/claude-skills-library.git
   ```

2. Add skills to **Cursor Settings > Rules and Commands > Agent Requestable Workspace Rules**

3. Done. Just ask naturally:
   - "Review the UX of this page"
   - "Check accessibility"
   - "Improve this microcopy"

### Other IDEs

The `SKILL.md` files are standard Markdown with YAML frontmatter. They work in any tool that supports custom prompts:

- **VS Code + Continue/Cody**: Add to custom commands or system prompts
- **JetBrains AI Assistant**: Use as custom prompt templates
- **Windsurf**: Add to workspace rules
- **API Usage**: Include in system prompt when calling Claude API

## Skill Structure

Each skill follows this structure:

```text
skill-name/
├── SKILL.md              # Required: Core instructions and metadata
├── README.md             # Required: Documentation for users
├── skill-name.skill      # Generated: Packaged skill for Claude.ai
└── references/           # Optional: Supporting documentation
    ├── topic1.md
    └── topic2.md
```

### Progressive Disclosure

Skills use a three-level loading system:

1. **Metadata** - Always in context (name + description in frontmatter)
2. **SKILL.md** - Loaded when skill triggers
3. **References** - Loaded only when Claude needs specific guidance

This keeps context usage efficient while providing deep expertise when needed.

## Development

### Building Skills

Generate `.skill` files from source:

```bash
npm install
npm run build          # Build all skills
npm run build ux-web-review  # Build single skill
```

### Linting

Check Markdown formatting:

```bash
npm run lint           # Check for issues
npm run lint:fix       # Auto-fix issues
```

## Quality Standards

All skills in this library must:

- Have clear, comprehensive descriptions
- Include usage examples in README
- Follow the progressive disclosure pattern
- Be well-tested on real-world tasks
- Include proper documentation
- Be self-contained (all dependencies included)

## Troubleshooting

### Skills Not Triggering

1. Verify the skill is installed: `ls ~/.codex/skills/`
2. Restart Cursor/your IDE
3. Try referencing the skill directly with `@`

### Permission Errors

```bash
mkdir -p ~/.codex/skills
chmod 755 ~/.codex/skills
```

## Recommended User Rules

For the best experience with skills that require context gathering or user input, add this rule to your IDE settings:

**Cursor IDE**: Settings > Rules for AI > User Rules

```text
When using skills that have context-gathering questions or require user input, ALWAYS ask me those questions and wait for my response before proceeding. NEVER assume defaults or answer on my behalf.
```

This ensures Claude will pause and ask you the skill's context questions rather than making assumptions about your project, users, or requirements.

## Resources

- [Anthropic Skills Documentation](https://docs.anthropic.com)
- [Cursor IDE](https://cursor.sh)
- [Claude.ai](https://claude.ai)

## License

MIT License - see [LICENSE](LICENSE) for details.

---

*Have a skill idea? [Open an issue](../../issues) or [start a discussion](../../discussions)!*
