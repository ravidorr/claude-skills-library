# GitHub Project Setup Skill

Creates a new GitHub project, or audits and updates an existing one, so it carries one consistent baseline: configuration files, Git hooks, strict linters, CI, release checks, security settings, documentation, and a design system.

## What This Skill Does

- Scaffolds a new project (web app, static site, Chrome extension, Node library, CLI or backend service) from bundled templates
- Audits an existing project and proposes per-file changes, never overwriting without a diff and a yes
- Generates the standard files: `.editorconfig`, `.npmrc`, `.nvmrc`, `llms.txt`, `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, policy docs, and a README with a standard badge block
- Wires Husky hooks (`pre-commit`, `pre-push`, `commit-msg`, `post-commit`) and GitHub Actions (CI with a 100% coverage gate and a release gate, plus a release workflow) and a Dependabot configuration
- Applies GitHub settings: branch protection where GitHub allows it, Dependabot, secret scanning, and code scanning for public repositories
- Never pushes to `main`: work goes on a branch and reaches `main` through a draft pull request

## Who It's For

- Developers starting a repository who want the same quality bar every time
- Teams bringing older repositories up to a common standard

## Structure

| Path | Purpose |
| --- | --- |
| `SKILL.md` | Workflow, rules, and decisions |
| `references/` | Rules per area (tooling, Husky, GitHub setup, badges, design system) |
| `assets/` | File templates copied into new projects |
| `scripts/` | `verify-baseline.sh`, `readme-badges.py`, `install-into-project.sh` |

## Installation

Install it like the other skills in this library (see the Installation section of the top-level README). The skill ships templates and scripts, so use the built `github-project-setup.skill` archive or copy the whole folder. For agents that cannot read `~/.claude`, run this from the skill folder; it copies the skill into `<project-dir>/.claude/skills/` and excludes the copy from git:

```bash
bash scripts/install-into-project.sh <project-dir>
```

## When To Use

Trigger phrases:

- "Create a new GitHub project for a Node library called tab-tidy"
- "Update my project to the standard"
- "Audit project setup"

## Verification

After a run, the skill executes `scripts/verify-baseline.sh <project-dir> <web|nonweb>` and fixes every reported failure before reporting the work complete.

## License

MIT. See [LICENSE](../../LICENSE).
