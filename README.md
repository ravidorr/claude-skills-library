# Skills Library

A curated collection of high-quality skills that extend Claude's capabilities with specialized knowledge, workflows, and tool integrations.

## What are Skills?

Skills are modular, self-contained packages that transform Claude from a general-purpose AI into a specialized agent equipped with domain-specific expertise. Think of them as "onboarding guides" that give Claude procedural knowledge for specific tasks.

### What Skills Provide

- **Specialized workflows** - Multi-step procedures for specific domains
- **Tool integrations** - Instructions for working with specific file formats or APIs
- **Domain expertise** - Industry-specific knowledge, schemas, business logic
- **Bundled resources** - Scripts, references, and assets for complex tasks

## Available Skills

| Skill | Description | Use When |
|-------|-------------|----------|
| [accessibility-expert](skills/accessibility-expert) | WCAG 2.1/2.2 accessibility audits (AA/AAA) | Accessibility reviews, WCAG compliance, making designs accessible |
| [microcopy-content-design](skills/microcopy-content-design) | Microcopy and content design specialist | Writing error messages, buttons, tooltips, empty states |
| [ui-design-review](skills/ui-design-review) | Expert UI design review for visual interfaces | Reviewing layout, grid, typography, color, visual consistency |
| [user-research-flows](skills/user-research-flows) | User research, personas, journeys, and flow design | Creating personas, mapping journeys, designing user flows |
| [ux-web-review](skills/ux-web-review) | Expert UX review and analysis of web applications | Reviewing usability, user flows, information architecture |
| [design-super-agent](skills/design-super-agent) | Comprehensive design review combining all areas | Full design reviews covering UX + UI + Content + Accessibility |

## How to Use Skills

### In Claude.ai

1. **Download a skill**: Click on a skill name above, then download the `.skill` file
2. **Install in Claude**:
   - Go to [Claude.ai](https://claude.ai) > Settings > Skills
   - Click "Upload Skill"
   - Select the downloaded `.skill` file
   - Confirm installation

Once installed, skills trigger automatically based on your requests.

### In Cursor IDE (Recommended)

Skills work excellently in Cursor as project rules or workspace context. There are several ways to use them:

#### Option 1: Clone This Repository (Best for Multiple Skills)

1. Clone this repository to your local machine
2. In Cursor, go to **Settings > Rules**
3. Add the path to the skill's `SKILL.md` file under **Agent Requestable Workspace Rules**
4. The skill will be available to Claude in your Cursor conversations

#### Option 2: Copy SKILL.md to Your Project

1. Copy the `SKILL.md` file from any skill folder to your project
2. Rename it to `.cursorrules` or place it in a `.cursor/rules/` folder
3. Claude will automatically use it as context for your project

#### Option 3: Reference Skills Directly in Chat

1. In Cursor chat, use `@` to reference the skill file directly
2. Example: `@skills/ux-web-review/SKILL.md Review this component`

#### Cursor Setup Example

Add to your `.cursor/rules/` folder or reference in settings:

```
skills/ux-web-review/SKILL.md           # UX analysis
skills/ui-design-review/SKILL.md        # UI/visual design
skills/accessibility-expert/SKILL.md    # WCAG compliance
skills/design-super-agent/SKILL.md      # Full design review
```

**Tip**: For design reviews, also include the `references/` folder contents for deeper expertise.

### In Other IDEs

The `SKILL.md` files are standard Markdown with YAML frontmatter. They can be used in any IDE or tool that supports custom prompts or system instructions:

- **VS Code + Continue/Cody**: Add SKILL.md content to custom commands or system prompts
- **JetBrains AI Assistant**: Use as custom prompt templates
- **Windsurf**: Add to workspace rules
- **API Usage**: Include SKILL.md content in your system prompt when calling Claude API

### Using Skills

Once configured, skills provide Claude with specialized expertise. For example:

- Say "Give me UX feedback on this page" - triggers `ux-web-review`
- Say "Review the accessibility" - triggers `accessibility-expert`
- Say "Full design review" - triggers `design-super-agent`

Each skill's README contains specific trigger phrases and usage examples.

## Creating Your Own Skills

### Quick Start

Skills have a simple structure:

```
your-skill-name/
├── SKILL.md          # Required: Core instructions and metadata
├── scripts/          # Optional: Executable code
├── references/       # Optional: Documentation to load as needed
└── assets/           # Optional: Files used in output
```

See the [skill-creator guide](https://github.com/anthropics/claude-skills) for detailed instructions.

## Skill Quality Standards

All skills in this library must:

- Have clear, comprehensive descriptions
- Include usage examples
- Follow the progressive disclosure pattern
- Be well-tested on real-world tasks
- Include proper documentation
- Be self-contained (all dependencies included)

## Quick Links

- [Anthropic Skills Documentation](https://docs.anthropic.com/skills)
- [Skill Creator Tool](https://github.com/anthropics/claude-skills)
- [Claude.ai](https://claude.ai)

---

*Have a skill idea? [Open an issue](../../issues) or [start a discussion](../../discussions)!*

## License

This repository is licensed under the MIT License - see [LICENSE](LICENSE) for details.
