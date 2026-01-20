# Contributing

We welcome contributions! Here's how to get involved.

## How to Contribute

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
