# Skill Schemas

This folder contains JSON schemas for validating skill files.

## skill-metadata.schema.json

Validates the YAML frontmatter in SKILL.md files.

### Required Fields

| Field | Type | Description |
|-------|------|-------------|
| `name` | string | Unique skill identifier (kebab-case) |
| `version` | string | Semantic version (X.Y.Z) |
| `description` | string | Comprehensive description (50-1000 chars) |

### Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| `dependencies` | array | Skills this skill integrates with |
| `triggers` | array | Explicit trigger phrases |
| `category` | string | Skill category for organization |
| `author` | string | Author or maintainer |
| `license` | string | License (default: MIT) |

### Example Valid Frontmatter

```yaml
---
name: ux-web-review
version: 1.0.0
description: Expert UX review and analysis of web applications with 10+ years of professional experience. Triggers include "Give me UX feedback", "Review this web app".
dependencies:
  - ui-design-review
triggers:
  - Give me UX feedback
  - Review this web app
  - Analyze the UX
category: design
---
```

## Validating Skills

### Using Node.js

```javascript
const Ajv = require('ajv');
const yaml = require('js-yaml');
const fs = require('fs');

const ajv = new Ajv();
const schema = require('./skill-metadata.schema.json');
const validate = ajv.compile(schema);

// Extract frontmatter from SKILL.md
const content = fs.readFileSync('path/to/SKILL.md', 'utf8');
const frontmatterMatch = content.match(/^---\n([\s\S]*?)\n---/);
const frontmatter = yaml.load(frontmatterMatch[1]);

// Validate
const valid = validate(frontmatter);
if (!valid) {
  console.log(validate.errors);
}
```

### Using CLI Tools

You can use tools like `ajv-cli` or custom scripts to validate all skills:

```bash
# Install ajv-cli
npm install -g ajv-cli

# Validate (requires extracting frontmatter first)
ajv validate -s schemas/skill-metadata.schema.json -d frontmatter.json
```

## Adding New Schema Fields

When adding new fields to the schema:

1. Add the field definition with type and description
2. Include examples
3. Update this README
4. Update existing skills if the field is required
