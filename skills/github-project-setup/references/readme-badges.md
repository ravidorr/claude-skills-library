# README badge block

Every generated README gets one standard badge block directly after the title. The README template contains `{{README_BADGE_BLOCK}}`; the generator composes that block from the recipes below for the project kind. Badges live only in this block.

## Layout rules

```text
# {{PROJECT_NAME}}

<row 1: CI and distribution badges, one line, space-separated>

<row 2: community, license, and stack badges, one line, space-separated>

{{PROJECT_DESCRIPTION}}
```

- Exactly one blank line after the title, between row 1 and row 2, and between row 2 and the description.
- At most 6 badges on row 1 and at most 6 on row 2. Drop the lowest priority badge instead of exceeding the cap.
- No other line in the README may start with `[![`.
- Every badge links to a real page (workflow page, npm, license text). Never add a badge for a service the baseline does not configure.
- No em dash characters in any generated prose; use a hyphen or rephrase.
- Keep Quickstart, Usage, Scripts, and documentation links below the description untouched.

## Placeholders

| Placeholder | Value |
| --- | --- |
| `{{README_BADGE_BLOCK}}` | The two rows, separated by one blank line |
| `{{OWNER}}`, `{{REPO}}` | GitHub owner and repository name |
| `{{NPM_PACKAGE_NAME}}` | `package.json` `name` (scoped names such as `@scope/name` work as-is) |
| `{{LICENSE_BADGE_LINE}}` | One license badge from the table below, or empty |
| `{{NODE_MAJOR}}` | Major of `{{NODE_VERSION}}` (for 24.21.0 it is 24) |
| `{{TS_MAJOR}}`, `{{ESLINT_MAJOR}}`, `{{VITE_MAJOR}}` | Major versions installed in the new project (`npm ls typescript eslint vite`) |
| `{{CHROME_WEB_STORE_BADGE}}` | Empty by default; fill after the first Chrome Web Store publish |

## Row 1: CI and distribution (priority order)

1. CI (always): `[![CI](https://github.com/{{OWNER}}/{{REPO}}/actions/workflows/ci.yml/badge.svg)](https://github.com/{{OWNER}}/{{REPO}}/actions/workflows/ci.yml)`
2. Release (whenever `release.yml` exists): `[![Release](https://github.com/{{OWNER}}/{{REPO}}/actions/workflows/release.yml/badge.svg)](https://github.com/{{OWNER}}/{{REPO}}/actions/workflows/release.yml)`
3. npm version (only when `package.json` is not `private: true`): `[![npm version](https://img.shields.io/npm/v/{{NPM_PACKAGE_NAME}}.svg)](https://www.npmjs.com/package/{{NPM_PACKAGE_NAME}})`
4. npm downloads (same condition): `[![npm downloads](https://img.shields.io/npm/dm/{{NPM_PACKAGE_NAME}}.svg)](https://www.npmjs.com/package/{{NPM_PACKAGE_NAME}})`
5. Install size (same condition, Package Phobia, not Bundlephobia, which rate-limits): `[![install size](https://packagephobia.com/badge?p={{NPM_PACKAGE_NAME}})](https://packagephobia.com/result?p={{NPM_PACKAGE_NAME}})`
6. Chrome Web Store (only when `{{CHROME_WEB_STORE_BADGE}}` is filled).

Deliberately omitted from the default template:

- **Lighthouse badge.** The `lighthouse` job lives inside `ci.yml` (appended from `ci.lighthouse-job.yml`), so a workflow badge for it would repeat the CI badge. GitHub workflow badges cannot target a single job.
- **CodeQL badge.** The baseline uses CodeQL default setup, which has no workflow file to badge.
- **Codecov or coverage badges.** The baseline does not upload to Codecov; coverage is enforced at 100% in CI and shown in the PR comment and job summary. To add Codecov later, add the upload step to `ci.yml`, store `CODECOV_TOKEN` as a repository secret, document it in `references/tooling.md`, then add `[![codecov](https://codecov.io/gh/{{OWNER}}/{{REPO}}/branch/main/graph/badge.svg)](https://codecov.io/gh/{{OWNER}}/{{REPO}})` as the last row 1 badge.
- **Vercel and other deploy badges.** Add by hand after the first deploy.

## Row 2: community, license, stack (priority order)

1. PRs welcome: `[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/{{OWNER}}/{{REPO}}/pulls)`
2. Maintained: `[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/{{OWNER}}/{{REPO}}/graphs/commit-activity)`
3. License (`{{LICENSE_BADGE_LINE}}`):

| License (`references/licenses.md`) | Badge line |
| --- | --- |
| MIT | `[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)` |
| Apache-2.0 | `[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)` |
| ISC | `[![License: ISC](https://img.shields.io/badge/License-ISC-blue.svg)](https://opensource.org/licenses/ISC)` |
| CC0-1.0 | `[![License: CC0-1.0](https://img.shields.io/badge/License-CC0--1.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)` |
| UNLICENSED or proprietary | omit the badge, unless the user explicitly chose proprietary and asks for `[![License: Proprietary](https://img.shields.io/badge/License-Proprietary-lightgrey.svg)](./LICENSE)` |

After the license, add stack badges (1 to 3, fill from the project kind):

- Node.js: `[![Node.js](https://img.shields.io/badge/Node.js-{{NODE_MAJOR}}-339933?logo=node.js&logoColor=white)](https://nodejs.org/)`
- TypeScript: `[![TypeScript](https://img.shields.io/badge/TypeScript-{{TS_MAJOR}}-3178C6?logo=typescript&logoColor=white)](https://www.typescriptlang.org/)`
- ESLint: `[![ESLint](https://img.shields.io/badge/ESLint-{{ESLINT_MAJOR}}-4B32C3?logo=eslint&logoColor=white)](https://eslint.org/)`
- Chrome MV3: `[![Chrome Extension](https://img.shields.io/badge/Chrome-MV3-4285F4?logo=googlechrome&logoColor=white)](https://developer.chrome.com/docs/extensions/)`
- Vite (web apps that use it): `[![Vite](https://img.shields.io/badge/Vite-{{VITE_MAJOR}}-646CFF?logo=vite&logoColor=white)](https://vite.dev/)`
- Docker (only if a Dockerfile exists): `[![Docker](https://img.shields.io/badge/Docker-ready-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)`

## Per-kind recipes

| Project kind | Row 1 | Row 2 (after PRs, Maintained, License) |
| --- | --- | --- |
| Web app or static site | CI, Release | Node.js, TypeScript, Vite (if used) |
| Chrome extension (MV3) | CI, Release, Chrome Web Store (when filled) | Chrome MV3, Node.js, ESLint |
| Node library, published | CI, Release, npm version, npm downloads, install size | Node.js, TypeScript, ESLint |
| Node library, private | CI, Release | Node.js, TypeScript, ESLint |
| CLI or backend service | CI, Release, plus the three npm badges if published | Node.js, TypeScript, Docker (if a Dockerfile exists) |
| No-UI library | same as the two library rows | Node.js, TypeScript, ESLint (no Chrome or PWA badges) |

If a recipe produces more than 6 badges on a row, drop from the end of the priority order.

### Example: published Node library, MIT

```markdown
[![CI](https://github.com/o/r/actions/workflows/ci.yml/badge.svg)](https://github.com/o/r/actions/workflows/ci.yml) [![Release](https://github.com/o/r/actions/workflows/release.yml/badge.svg)](https://github.com/o/r/actions/workflows/release.yml) [![npm version](https://img.shields.io/npm/v/pkg.svg)](https://www.npmjs.com/package/pkg) [![npm downloads](https://img.shields.io/npm/dm/pkg.svg)](https://www.npmjs.com/package/pkg) [![install size](https://packagephobia.com/badge?p=pkg)](https://packagephobia.com/result?p=pkg)

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/o/r/pulls) [![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/o/r/graphs/commit-activity) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Node.js](https://img.shields.io/badge/Node.js-24-339933?logo=node.js&logoColor=white)](https://nodejs.org/) [![TypeScript](https://img.shields.io/badge/TypeScript-6-3178C6?logo=typescript&logoColor=white)](https://www.typescriptlang.org/) [![ESLint](https://img.shields.io/badge/ESLint-10-4B32C3?logo=eslint&logoColor=white)](https://eslint.org/)
```

## Applying and auditing

New projects: replace `{{README_BADGE_BLOCK}}` with the composed block.

Update mode ("drifted README" includes missing, duplicate, malformed, or over-cap badge rows): run

```bash
python3 scripts/readme-badges.py check README.md          # report problems
python3 scripts/readme-badges.py apply README.md block.md # rewrite after showing the diff and getting a yes
```

`apply` keeps line 1 (the title), removes every line that starts with `[![` after it, drops leading blank lines from the rest, then writes title, one blank line, the block, one blank line, and the remaining body. The block file holds the two rows separated by one blank line.
