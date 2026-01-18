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

| Skill | Description | Use When |
|-------|-------------|----------|
| [ux-web-review](skills/ux-web-review) | Expert UX review and analysis of web applications with 10+ years of professional experience | Reviewing web apps, analyzing interfaces, providing UX feedback |

## How to Use Skills

### Installation

1. **Download a skill**: Click on a skill name above, then download the `.skill` file from the releases
2. **Install in Claude**: 
   - Go to [Claude.ai](https://claude.ai) > Settings > Skills
   - Click "Upload Skill"
   - Select the downloaded `.skill` file
   - Confirm installation

### Using Skills

Once installed, skills trigger automatically based on your requests. For example:
- Say "Give me UX feedback on this page" - triggers `ux-web-review`
- Say "Create a presentation about Q3 results" - would trigger a `pptx` skill (if installed)

Each skill's README contains specific trigger phrases and usage examples.

## Skill Catalog

### UX & Design
- **[ux-web-review](skills/ux-web-review)** - Professional UX analysis for web applications

### Development
*Coming soon*

### Business & Productivity
*Coming soon*

### Data & Analytics
*Coming soon*

## Creating Your Own Skills

Want to create a skill? Check out our [Contributing Guide](CONTRIBUTING.md) for:
- Skill creation workflow
- Best practices and design patterns
- Quality guidelines
- Submission process

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

## Contributing

We welcome contributions! Here's how:

1. **Fork this repository**
2. **Create a new skill** following the structure above
3. **Test your skill** thoroughly
4. **Submit a pull request** with:
   - Your skill in `skills/your-skill-name/`
   - Updated `README.md` catalog
   - Clear description of what your skill does

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

## Skill Quality Standards

All skills in this library must:
- Have clear, comprehensive descriptions
- Include usage examples
- Follow the progressive disclosure pattern
- Be well-tested on real-world tasks
- Include proper documentation
- Be self-contained (all dependencies included)

## Skill Categories

Skills are organized into categories for easy discovery:

- **UX & Design** - Interface design, user research, accessibility
- **Development** - Programming, debugging, code review
- **Business** - Project management, analysis, documentation
- **Data** - Analytics, visualization, processing
- **Creative** - Content creation, design, media
- **Productivity** - Automation, workflows, organization

## License

This repository is licensed under the MIT License - see [LICENSE](LICENSE) for details.

Individual skills may have their own licenses - check each skill's directory for details.

## Featured Skills

### UX Web Review
Expert-level UX analysis with 10+ years of professional experience. Provides systematic reviews covering usability, accessibility, information architecture, and interaction design.

[View skill](skills/ux-web-review) | [Download](skills/ux-web-review/ux-web-review.skill)

## Finding Skills

Browse by category or search for specific capabilities:
- **Need UX feedback?** - ux-web-review
- **Creating presentations?** - Check Business & Productivity
- **Data analysis?** - Check Data & Analytics

## Community

- **Discussions**: Share use cases, ask questions, provide feedback
- **Issues**: Report bugs or request new skills
- **Pull Requests**: Contribute new skills or improvements

## Roadmap

Upcoming skill categories:
- [ ] Frontend development workflows
- [ ] API integration patterns
- [ ] Document automation
- [ ] Data analysis pipelines
- [ ] Testing & QA workflows
- [ ] DevOps & deployment

## Quick Links

- [Anthropic Skills Documentation](https://docs.anthropic.com/skills)
- [Skill Creator Tool](https://github.com/anthropics/claude-skills)
- [Claude.ai](https://claude.ai)

---

**Built by the Claude community**

*Have a skill idea? [Open an issue](../../issues) or [start a discussion](../../discussions)!*
