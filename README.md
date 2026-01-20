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

| Skill | Description | Triggers |
|-------|-------------|----------|
| [ux-web-review](skills/ux-web-review) | Expert UX review and analysis of web applications | "Give me UX feedback", "Review this web app" |
| [ui-design-review](skills/ui-design-review) | Expert UI design review for visual interfaces | "Review the UI design", "Critique this layout" |
| [accessibility-expert](skills/accessibility-expert) | WCAG 2.1/2.2 accessibility audits (AA/AAA) | "Review accessibility", "Check WCAG compliance" |
| [microcopy-content-design](skills/microcopy-content-design) | Microcopy and content design specialist | "Improve this copy", "Write error message for..." |
| [user-research-flows](skills/user-research-flows) | User research, personas, journeys, and flow design | "Create a persona", "Map the user journey" |
| [design-super-agent](skills/design-super-agent) | Comprehensive design review combining all areas | "Full design review", "Analyze everything" |

## Installation

### Prerequisites for Cursor IDE

These skills can be used in other IDEs, but we wanted this README.md file to stay as simple as possible.

> **Note:** Agent Skills require **Cursor Nightly** build (Cursor > Settings... > Cursor Settings > Beta > Nightly).

### Recommended User Rules

For the best experience with skills that require context gathering or user input, add this rule to your IDE settings:

**Cursor IDE**: Cursor > Settings... > Cursor Settings > Rules, Skills, Subagents, > In the Rules section > + New > User Rule > enter:

```text
When using skills that have context-gathering questions or require user input, ALWAYS ask me those questions and wait for my response before proceeding. NEVER assume defaults or answer on my behalf.
```

Click done. This ensures Claude will pause and ask you the skill's context questions rather than making assumptions about your project, users, or requirements.

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

The wizard will guide you through installing skills.

### Updating Skills

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
- **Via @:** Reference skills with `@skill-name` in chat

## Contributing

We welcome contributions! Here's how to get involved.

### How to Contribute

1. **Fork the repository** - On GitHub click the "Fork" button and follow the wizard

2. **Clone the fork**

   ```bash
   git clone https://github.com/YOUR-USERNAME/claude-skills-library.git
   cd claude-skills-library
   npm install
   ```

3. **Create a branch** for your changes

   ```bash
   git checkout -b feature/improve-ux-review
   ```

4. **Make your changes**
   - To update a skill: edit `skills/<skill-name>/SKILL.md` and any reference files
   - To create a skill: Ask Cursor to create a skill (there is a skill for that) for this skill repository with a README.md file

5. **Build, validate, and lint**

   ```bash
   npm run build && npm run validate && npm run lint
   ```

6. **Commit and push** to your fork

   ```bash
   git add .
   git commit -m "<WRITE HERE WHAT YOU DID>"
   git push origin feature/improve-ux-review
   ```

7. **Open a Pull Request** from your fork to this repository

## Quality Standards

All skills in this library must:

- Have clear, comprehensive descriptions
- Include usage examples in README
- Follow the progressive disclosure pattern
- Be well-tested on real-world tasks
- Include documentation
- Be self-contained (all dependencies included)

## Troubleshooting

### Skills Not Showing in Cursor Settings

**Problem:** Skills don't appear in Cursor Settings > Rules, Skills, Subagents.

**Possible causes and solutions:**

1. **Not on Nightly build:** Skills require Cursor Nightly. Switch via Cursor Settings (Cmd+Shift+J) > Beta > Update Access > Nightly.

2. **Using symlinks:** Cursor does not follow symlinks. Re-install using copies:

   ```bash
   rm -rf ~/.cursor/skills/*
   for skill in ~/Documents/Cursor/claude-skills-library/skills/*/; do
     skill_name=$(basename "$skill")
     [[ "$skill_name" == _* || "$skill_name" == .* ]] && continue
     mkdir -p ~/.cursor/skills/"$skill_name"
     cp -R "$skill"/* ~/.cursor/skills/"$skill_name"/
   done
   ```

3. **Wrong directory structure:** Each skill must be in its own folder with a `SKILL.md` file:

   ```text
   ~/.cursor/skills/
   └── skill-name/
       └── SKILL.md
   ```

### Skills Not Available in Other Cursor Windows

**Problem:** Skills work when you have this repo open, but not in other Cursor windows.

**Cause:** Without global installation, skills are workspace-specific.

**Solution:** Copy skills to `~/.cursor/skills/` (see [Quick Install](#quick-install) above).

### Skills Not Triggering

1. Verify skills are installed:

   ```bash
   ls ~/.cursor/skills/
   ```

   You should see skill folders (accessibility-expert, ux-web-review, etc.).

2. Check Cursor Settings > Rules, Skills, Subagents - skills should be listed
3. Try invoking manually with `/skill-name` in Agent chat

### Permission Errors

```bash
mkdir -p ~/.cursor/skills && chmod 755 ~/.cursor/skills
```

## License

MIT License - see [LICENSE](LICENSE) for details.

---

*Have a skill idea? [Open an issue](../../issues) or [start a discussion](../../discussions)!*
