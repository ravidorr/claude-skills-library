# File map: template to destination

Placeholders: `{{PROJECT_NAME}}`, `{{PROJECT_DESCRIPTION}}`, `{{PM}}` (npm|pnpm), `{{PM_RUN}}` (`npm run`|`pnpm run`), `{{PM_EXEC}}` (`npx`|`pnpm exec`), `{{PM_INSTALL}}`, `{{PM_CI}}` (`npm ci`|`pnpm install --frozen-lockfile`), `{{PM_INSTALL_LOCKFILE_ONLY}}` (`npm install --package-lock-only`|`pnpm install --lockfile-only`), `{{LOCKFILE}}` (`package-lock.json`|`pnpm-lock.yaml`), `{{NODE_VERSION}}`, `{{JIRA_PREFIX}}`, `{{JIRA_URL}}`, `{{OWNER}}`, `{{REPO}}`, `{{SITE_URL}}`, `{{SUPPORT_QUESTIONS}}` (see below), `{{SECURITY_EMAIL}}` (from private config key `security_email`), `{{PRIVACY_DATA_USE}}` (no data collected: "No data is collected, so none is used or sold."), `{{TODAY}}`, `{{README_BADGE_BLOCK}}` (two badge rows composed per `references/readme-badges.md`), `{{NPM_PACKAGE_NAME}}`, `{{LICENSE_BADGE_LINE}}`, `{{NODE_MAJOR}}`, `{{TS_MAJOR}}`, `{{ESLINT_MAJOR}}`, `{{VITE_MAJOR}}`, `{{CHROME_WEB_STORE_BADGE}}` (empty by default), `{{TICKET_RULES}}` (see below), `{{PRIVACY_DATA_SUMMARY}}`, `{{PRIVACY_THIRD_PARTIES}}`.

`{{TICKET_RULES}}` in `AGENTS.md` (and the matching text in `CONTRIBUTING.md`, `commit-msg`, and `PULL_REQUEST_TEMPLATE.md`):

- Jira: two bullets, "Commit subjects start with the Jira key: `{{JIRA_PREFIX}}-123 - Message`." and "Open PRs as drafts. Title: `<JIRA-KEY> - <ticket title>`. Description: short intro, bullets, end with `[Jira](<url>)`."
- No Jira: one bullet, exactly "This repository uses GitHub issues for ticketing." Do not require an issue for every PR. Drop the Jira-key check from `commit-msg` and the `[Jira]` line from the PR template (add `Closes #<issue>` only when the PR resolves an issue; PRs without an issue are fine). Never write "no ticket-system conventions".
- No Jira also means: use `assets/husky/commit-msg.no-jira` instead of `commit-msg`, `assets/github/PULL_REQUEST_TEMPLATE.no-jira.md` instead of `PULL_REQUEST_TEMPLATE.md`, and edit the two Jira lines in `CONTRIBUTING.md` (commit subjects at least 15 characters; a draft PR links an issue with `Closes #<issue>` only when it resolves one).
- Private (unpublished) packages: delete the `npm publish --provenance` step and `id-token: write` from `release.yml`; keep them only when `package.json` has `private: false`.
- No-UI projects: in `AGENTS.md` replace the UI-tokens rule with "There is no UI. `/design-system` is a placeholder (see `design-system/README.md`).", the layout line with "`design-system/` - placeholder (no UI)", and in `CONTRIBUTING.md` replace the UI rule likewise.
- Privacy must not contradict itself: when no data is collected, say so in every section and state there are no third parties and no network calls.
- `{{SUPPORT_QUESTIONS}}`: detect Discussions at generation time with `gh api repos/<owner>/<name> -q .has_discussions`. If `true`: "open a [GitHub Discussion](https://github.com/<owner>/<name>/discussions)." If `false`: "open a [GitHub issue](https://github.com/<owner>/<name>/issues)." Do not enable Discussions yourself; re-check in update mode and switch the wording if the setting changed.
- `{{SECURITY_EMAIL}}`: the user's chosen fallback address, read with `bash scripts/get-config.sh security_email` (never stored in the skill). `SECURITY.md` relies on GitHub private vulnerability reporting first and lists this email only as the fallback. Do not use any other address (never the user's work email) unless the user names one.

`{{README_BADGE_BLOCK}}` is composed, not copied: pick the recipe for the project kind in `references/readme-badges.md` (two rows, at most 6 badges each, one blank line between rows and around the block). All badge placeholders must be gone from the final README.

Note: `ci.yml` and `release.yml` use GitHub `${{ ... }}` expressions. Replace only the `{{UPPER_SNAKE}}` and `{{PM*}}` placeholders; leave `${{ github.* }}` untouched.

| Template (under `assets/`) | Destination |
|---|---|
| `.editorconfig` | `.editorconfig` |
| `.npmrc` | `.npmrc` |
| `.nvmrc` | `.nvmrc` |
| `llms.txt` | `llms.txt` |
| `robots.txt`, `sitemap.xml` | same names (public web only; serve from the site root, e.g. `public/`) |
| `lighthouserc.app.json` / `lighthouserc.static.json` | `lighthouserc.json` (pick one; web only) |
| `husky/*` | `.husky/*` (`chmod +x`) |
| `scripts/check-release.mjs` | `scripts/check-release.mjs` |
| `test/check-release.test.mjs`, `test/check-release-cli.test.mjs` | same paths (tests for the release script; `semver` devDependency required) |
| `scripts/coverage-summary.mjs` | `scripts/coverage-summary.mjs` (PR coverage comment) |
| `vitest.config.ts` | `vitest.config.ts` (100% coverage thresholds) |
| `github/workflows/ci.yml`, `release.yml` | `.github/workflows/*` (never include a Lighthouse job for non-web projects) |
| `github/workflows/ci.lighthouse-job.yml` | web apps and static sites only: append its `lighthouse` job to `ci.yml` |
| `github/dependabot.yml` | `.github/dependabot.yml` |
| `github/PULL_REQUEST_TEMPLATE.md` | `.github/PULL_REQUEST_TEMPLATE.md` |
| `github/ISSUE_TEMPLATE/*` | `.github/ISSUE_TEMPLATE/*` |
| `lint/eslint.config.mjs` | `eslint.config.mjs` |
| `lint/.stylelintrc.json` | `.stylelintrc.json` |
| `lint/.htmlvalidate.json` | `.htmlvalidate.json` |
| `lint/.markdownlint-cli2.jsonc` | `.markdownlint-cli2.jsonc` |
| `lint/.lintstagedrc.json` | `.lintstagedrc.json` |
| `scripts/lint-html.mjs` | `scripts/lint-html.mjs` (`lint:html` script; passes when the project has no HTML) |
| `ts-library/*` (Node/TS library, Jest) | repo root: `tsconfig.json` (src, test, jest config; used by ESLint, typecheck, ts-jest), `tsconfig.build.json` (src only, emits `dist`), `jest.config.ts`, a starter `src/index.ts` with 100% coverage and `test/index.test.ts` |
| `docs/*.md` | repo root (same names) |
| `design-system/*` | `design-system/*` (projects with UI) |
| `design-system-no-ui/README.md` | `design-system/README.md` (projects with no UI; never skip the directory) |

`LICENSE`: generate from `references/licenses.md`.
`.gitignore`: `node_modules/`, `dist/`, `coverage/`, `.lighthouseci/`, `.env*` (except `.env.example`), `.DS_Store`.
`tsconfig.json`: `strict: true`, `noUncheckedIndexedAccess: true`, `exactOptionalPropertyTypes: true`, `noImplicitOverride: true`, `moduleResolution: "bundler"` (or `nodenext` for Node libs/CLIs).
