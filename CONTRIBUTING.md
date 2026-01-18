# Contributing to Claude Skills Library

Thank you for your interest in contributing! This guide will help you create and submit high-quality skills.

## 📋 Table of Contents

- [Before You Start](#before-you-start)
- [Skill Creation Process](#skill-creation-process)
- [Skill Structure](#skill-structure)
- [Quality Standards](#quality-standards)
- [Submission Process](#submission-process)
- [Review Criteria](#review-criteria)

## Before You Start

### Check Existing Skills

Before creating a new skill, check if something similar already exists:
1. Browse the [skills catalog](README.md#-available-skills)
2. Search open [pull requests](../../pulls)
3. Check [discussions](../../discussions) for planned skills

If similar skills exist, consider:
- Contributing to improve an existing skill
- Creating a specialized variant
- Combining efforts with other contributors

### Validate Your Idea

Good skills solve real, recurring problems. Ask yourself:
- **Repetition**: Am I doing this task repeatedly?
- **Complexity**: Does this require specialized knowledge?
- **Reusability**: Would others benefit from this?
- **Uniqueness**: Does Claude already do this well without a skill?

## Skill Creation Process

### Step 1: Define Concrete Use Cases

Start with 3-5 specific examples of how your skill will be used:

```
Example: PDF Editor Skill
- "Rotate this PDF 90 degrees"
- "Merge these three PDFs into one"
- "Extract text from page 5"
- "Fill out this PDF form"
```

### Step 2: Plan Your Skill Contents

Analyze each use case to identify reusable resources:

- **Scripts** (`scripts/`) - Repeatedly rewritten code
- **References** (`references/`) - Documentation to load as needed
- **Assets** (`assets/`) - Files used in output (templates, images)

### Step 3: Create the Skill Structure

```bash
skills/
└── your-skill-name/
    ├── SKILL.md              # Required
    ├── README.md             # Recommended
    ├── scripts/              # Optional
    │   └── example.py
    ├── references/           # Optional
    │   └── documentation.md
    └── assets/               # Optional
        └── template.txt
```

### Step 4: Write SKILL.md

Every `SKILL.md` must have:

#### Frontmatter (YAML)
```yaml
---
name: your-skill-name
description: Clear explanation of what the skill does and when to use it. Include specific triggers, file types, or scenarios that activate this skill.
---
```

#### Body (Markdown)
- **Overview**: What the skill enables (1-2 sentences)
- **Instructions**: How to use the skill
- **Examples**: Concrete usage examples
- **Resources**: References to bundled files

**Writing Guidelines**:
- Use imperative/infinitive form ("Use X to do Y", not "You should use X")
- Be concise (under 500 lines preferred)
- Provide examples over explanations
- Reference bundled resources clearly

### Step 5: Create README.md

Each skill should have a README explaining:
- What the skill does
- Who it's for
- How to install it
- Usage examples
- What's included (scripts, references, assets)

### Step 6: Add Bundled Resources

#### Scripts (`scripts/`)
Executable code for deterministic tasks:
- Test all scripts before submission
- Include comments explaining purpose
- Handle errors gracefully
- Document dependencies

#### References (`references/`)
Documentation loaded into context as needed:
- Keep files under 10k words each
- Use clear, scannable formatting
- Provide search patterns for large files
- Avoid duplicating SKILL.md content

#### Assets (`assets/`)
Files used in output:
- Include only necessary files
- Optimize file sizes
- Document asset usage in SKILL.md

### Step 7: Test Thoroughly

Before submitting:
- ✅ Test on at least 5 real-world use cases
- ✅ Verify all scripts execute successfully
- ✅ Check that skill triggers appropriately
- ✅ Confirm bundled resources are referenced correctly
- ✅ Test with different user request phrasings
- ✅ Verify no broken links or missing files

### Step 8: Package Your Skill

If you have access to packaging tools:
```bash
python scripts/package_skill.py skills/your-skill-name/
```

This creates `your-skill-name.skill` for distribution.

## Skill Structure

### Required Files

**SKILL.md**
- YAML frontmatter with `name` and `description`
- Markdown body with instructions
- Under 500 lines preferred

### Optional Files

**README.md** (Recommended)
- User-facing documentation
- Installation instructions
- Usage examples

**scripts/** (Optional)
- Python, Bash, or other executable code
- Each script should be documented
- Include requirements.txt if needed

**references/** (Optional)
- Detailed documentation
- API references
- Domain knowledge
- Large files should include grep patterns

**assets/** (Optional)
- Templates
- Images
- Boilerplate code
- Sample files

### File Naming

- Use lowercase with hyphens: `my-skill-name`
- Scripts: descriptive names like `rotate_pdf.py`, not `script1.py`
- References: topic-based like `api_reference.md`
- Assets: descriptive like `slide_template.pptx`

## Quality Standards

### Description Quality

Your `description` field is critical - it determines when the skill triggers.

**Good Description**:
```yaml
description: Expert UX review and analysis of web applications with 10+ years of professional experience. Use when user requests UX feedback, web app review, or interface analysis. Triggers include "Give me UX feedback on this page", "Review this web app", "Analyze the UX of [URL]".
```

**Poor Description**:
```yaml
description: UX reviews
```

**Requirements**:
- Explain what the skill does
- List specific trigger phrases
- Mention file types or contexts
- Include who would use it
- Be comprehensive (100-200 words)

### Instruction Quality

**Good Instructions**:
- Concrete, actionable steps
- Real examples with realistic requests
- Clear decision points
- Appropriate level of freedom

**Poor Instructions**:
- Vague generalities
- Theoretical explanations
- Missing examples
- Over-specification or under-specification

### Code Quality

For scripts:
- ✅ Python 3.8+ compatible
- ✅ Include docstrings
- ✅ Handle errors gracefully
- ✅ No hardcoded paths
- ✅ Clear variable names
- ✅ Comments for complex logic

### Documentation Quality

For references:
- ✅ Clear structure with headings
- ✅ Scannable formatting
- ✅ Concrete examples
- ✅ No redundancy with SKILL.md
- ✅ Under 10k words per file

## Submission Process

### 1. Fork the Repository

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/claude-skills-library.git
cd claude-skills-library
```

### 2. Create a Branch

```bash
git checkout -b add-skill-your-skill-name
```

### 3. Add Your Skill

```bash
# Create skill directory
mkdir -p skills/your-skill-name

# Add your files
# skills/your-skill-name/SKILL.md
# skills/your-skill-name/README.md
# etc.
```

### 4. Update Main README

Add your skill to the catalog in `README.md`:

```markdown
| [your-skill-name](skills/your-skill-name) | Brief description | Use when doing X |
```

### 5. Commit and Push

```bash
git add skills/your-skill-name/
git add README.md
git commit -m "Add your-skill-name skill"
git push origin add-skill-your-skill-name
```

### 6. Open Pull Request

Open a PR with:
- **Title**: "Add [skill-name] skill"
- **Description**:
  - What the skill does
  - Why it's useful
  - Example use cases
  - Testing you've done
  - Any dependencies or requirements

## Review Criteria

Pull requests are evaluated on:

### Functionality
- ✅ Skill works as described
- ✅ Triggers appropriately
- ✅ Handles edge cases
- ✅ Scripts execute successfully

### Quality
- ✅ Clear, comprehensive description
- ✅ Well-structured instructions
- ✅ Concrete examples provided
- ✅ Appropriate level of detail

### Documentation
- ✅ README explains skill clearly
- ✅ Usage examples are realistic
- ✅ Installation instructions present
- ✅ All resources documented

### Code (if applicable)
- ✅ Clean, readable code
- ✅ Proper error handling
- ✅ Documented functions
- ✅ No security issues

### Testing
- ✅ Tested on multiple use cases
- ✅ Edge cases considered
- ✅ No broken references
- ✅ Resources load correctly

## Review Timeline

- Initial review: Within 7 days
- Feedback provided for improvements
- Approved PRs merged within 14 days

## Need Help?

- **Questions?** Open a [discussion](../../discussions)
- **Issues?** File an [issue](../../issues)
- **Examples?** Check existing skills in `/skills`

## License

By contributing, you agree to license your skill under the MIT License (or specify another license in your skill's directory).

---

**Thank you for contributing to the Claude Skills Library!**

Together we're building a comprehensive toolkit for the Claude community.
