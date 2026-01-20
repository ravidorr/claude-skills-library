# Skills Library

A collection of skills that extend Cursor's capabilities with specialized knowledge, workflows, and tool integrations.

## What are Skills?

Skills are modular, self-contained packages that transform Cursor from a general-purpose AI into a specialized agent equipped with domain-specific expertise. Think of them as "onboarding guides" that give Cursor procedural knowledge for specific tasks.

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

### Prerequisites

- Git is installed (open Pendo Self Service and install Git. You can also install GitHub Desktop).

- Cursor is installed (open Pendo Self Service and install Cursor).

- Agent Skills require **Cursor Nightly** build (Cursor > Settings... > Cursor Settings > Beta > Nightly).

Skills can work with other IDEs, but we want to keep this README.md simple.

### Recommended User Rules

Some skills require context or input from the user. Add this rule to help Cursor to ask these questions:

In Cursor > Settings... > Cursor Settings > Rules, Skills, Subagents, > Rules section > + New > User Rule > paste:

```text
When using skills that have context-gathering questions or require user input, ALWAYS ask me those questions and wait for my response before proceeding. NEVER assume defaults or answer on my behalf.
```

Click done.

### Quick Install

1. **Clone the repository** into your project folder:

   ```bash
   git clone https://github.com/ravidorr/claude-skills-library.git ~/Documents/Cursor/claude-skills-library
   ```

2. **Go into the project folder:**

   ```bash
   cd ~/Documents/Cursor/claude-skills-library
   ```

3. **Install skills** on Cursor IDE:

   ```bash
   bash scripts/install.sh
   ```

The wizard will help you installing the skills.

### Updating Skills that were changed in the repository

1. **Pull the latest changes:**

   ```bash
   cd ~/Documents/Cursor/claude-skills-library && git pull
   ```

2. **Run the wizard:**

   ```bash
   bash scripts/install.sh
   ```

### Using the Skills

Once installed, skills are available in any Cursor window:

- **Automatic:** Just ask naturally - "Review the UX of this page", "Check accessibility"
- **Manual:** Type `/` in Agent chat and search for the skill name

## Troubleshooting

### Skills Not Showing in Cursor Settings

**Problem:** Skills don't appear in Cursor Settings > Rules, Skills, Subagents.

**Cause:** The Cursor IDE is not a nightly build.

**Solution:** Change the Cursor IDE settings (Cursor > Settings... > Cursor Settings > Beta > Nightly).

## Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT License - see [LICENSE](LICENSE) for details.

---

*Have a skill idea? [Open an issue](../../issues) or [start a discussion](../../discussions)!*
