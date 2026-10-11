# Design System

Single source of truth for UI consistency. Code is canonical; Claude Design is an optional mirror.

## Structure

- `tokens.css` - color, spacing, type, radius, shadow tokens (CSS custom properties, light and dark)
- `components/` - reusable plain HTML/CSS components, each with a usage example
- `index.html` - static showcase of tokens and components

## Rules

- No hard-coded colors, spacing, or font sizes outside `tokens.css` (Stylelint enforces colors).
- New component: add its HTML and CSS under `components/` (one folder per component with a usage example), show it on `index.html`, and use tokens only.
- Must meet WCAG 2.1 AA contrast in light and dark.
- Changing a token is a visible change: update `CHANGELOG.md`.

## Viewing

Open `index.html` in a browser, or serve the folder statically (`npx serve design-system`). There is no Storybook or other component-workshop tool.
