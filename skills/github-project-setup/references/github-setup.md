# GitHub remote setup (confirm with the user before running)

0. Default branch must be `main`: confirm with `git symbolic-ref --short HEAD` before pushing; after creation confirm `gh repo view --json defaultBranchRef -q .defaultBranchRef.name` prints `main`, otherwise `gh repo edit --default-branch main`.
1. Verify auth and owner access: `gh auth status` (the active account must have the `repo` scope, add `read:org` for orgs). Use the owner the user named in Step 1; never infer it. List orgs with `gh api user/orgs -q '.[].login'`. For an org, check `gh api orgs/<org>/memberships/<login> -q .role` and, if creation fails with 403, the org may restrict repo creation to owners: report it and ask for a different owner or for the user to get permission. If the user has several `gh` accounts, switch with `gh auth switch`.
2. Create the repo with the chosen visibility (`--private` or `--public`, always asked, no default) using GitHub's own first commit, never a push to `main`: `gh repo create <owner>/<name> --<private|public> --add-readme --description "<desc>"`. Then work on `chore/project-baseline`, push that branch, and open a draft PR. Never `git push origin main`.
3. Topics: `gh repo edit --add-topic <t1>,<t2>`.
4. Advanced Security defaults (Settings > Advanced Security, and what the repository's Security tab shows). **When the repo is public, every row below is required, not optional, and must be verified before the run is reported complete.** Target state, copied from `ravidorr/eslint-plugin-no-emoji`:

   | Setting | Target | How |
   | --- | --- | --- |
   | Private vulnerability reporting | Enabled | API |
   | Dependency graph | On | default; verify via SBOM |
   | Dependabot alerts | On | API |
   | Dependabot security updates | Enabled | API |
   | Secret scanning | Enabled | API (`security_and_analysis`) |
   | Secret scanning push protection | Enabled | API (`security_and_analysis`) |
   | Secret scanning non-provider patterns | Disabled | leave default |
   | Secret scanning validity checks | Disabled | leave default |
   | Code scanning (CodeQL default setup) | Configured, query suite `default` | API |
   | Dependabot version updates | via `.github/dependabot.yml` | templated |

   The Security tab should also show: Security policy present (`SECURITY.md`), Private vulnerability reporting enabled, Dependabot alerts on, Code scanning configured, Secret scanning on. For private repos, only the items GitHub allows on the plan apply (Dependabot alerts, security updates, dependency graph); secret scanning, push protection, and code scanning need GitHub Advanced Security and are reported as unavailable.

   Apply and verify (replace `<o>/<n>`; skip items that return 403/422 on private repos without GitHub Advanced Security and report them):

   ```bash
   gh api -X PUT repos/<o>/<n>/vulnerability-alerts                  # Dependabot alerts
   gh api -X PUT repos/<o>/<n>/automated-security-fixes              # Dependabot security updates
   gh api -X PUT repos/<o>/<n>/private-vulnerability-reporting       # private vulnerability reporting
   gh api -X PATCH repos/<o>/<n> --input - <<'JSON'                  # secret scanning + push protection
   { "security_and_analysis": { "secret_scanning": { "status": "enabled" }, "secret_scanning_push_protection": { "status": "enabled" } } }
   JSON
   gh api -X PATCH repos/<o>/<n>/code-scanning/default-setup --input - <<'JSON'   # CodeQL default setup
   { "state": "configured", "query_suite": "default" }
   JSON
   ```

   Verify:

   ```bash
   gh api -i repos/<o>/<n>/vulnerability-alerts | head -1                     # HTTP 204
   gh api repos/<o>/<n>/automated-security-fixes -q .enabled                  # true
   gh api repos/<o>/<n>/private-vulnerability-reporting -q .enabled           # true
   gh api repos/<o>/<n> -q '.security_and_analysis'                           # secret_scanning and push_protection: enabled
   gh api repos/<o>/<n>/code-scanning/default-setup -q .state                 # configured
   gh api repos/<o>/<n>/dependency-graph/sbom -q .sbom.name                   # a name = dependency graph on
   ```

   If the code-scanning call asks for languages, pass `"languages": ["javascript-typescript"]` for Node/TS projects (add `"actions"` when workflows exist). Private repos on the free plan: secret scanning, push protection, and code scanning need GitHub Advanced Security and return 403/422; report them as unavailable, not failed.
   No REST endpoint exists for Malware alerts, Grouped security updates, or Automatic dependency submission. Do not pretend to set them: list them in the final report as a manual checklist with the link `https://github.com/<o>/<n>/settings/security_analysis` and ask the user to confirm (or share a screenshot).
5. Wait for the first CI run: `gh run watch`. Check job names with `gh run view --json jobs -q '.jobs[].name'`.
6. Branch protection on `main` (after CI job names exist), with required checks `quality` (and `lighthouse` for web):

```bash
gh api -X PUT repos/<owner>/<name>/branches/main/protection --input - <<'JSON'
{
  "required_status_checks": { "strict": true, "contexts": ["quality"] },
  "enforce_admins": false,
  "required_pull_request_reviews": { "required_approving_review_count": 1 },
  "restrictions": null,
  "required_linear_history": true,
  "allow_force_pushes": false,
  "allow_deletions": false
}
JSON
```

Verify: `gh api repos/<owner>/<name>/branches/main/protection -q .required_status_checks.contexts` must print `["quality"]` (plus `lighthouse` for web).

Fallback if the classic API returns 403 (private repo on a free plan) or you prefer rulesets:

```bash
gh api -X POST repos/<owner>/<name>/rulesets --input - <<'JSON'
{
  "name": "protect-main",
  "target": "branch",
  "enforcement": "active",
  "conditions": { "ref_name": { "include": ["refs/heads/main"], "exclude": [] } },
  "rules": [
    { "type": "deletion" },
    { "type": "non_fast_forward" },
    { "type": "required_linear_history" },
    { "type": "pull_request", "parameters": { "required_approving_review_count": 1, "dismiss_stale_reviews_on_push": false, "require_code_owner_review": false, "require_last_push_approval": false, "required_review_thread_resolution": false } },
    { "type": "required_status_checks", "parameters": { "strict_required_status_checks_policy": true, "required_status_checks": [ { "context": "quality" } ] } }
  ]
}
JSON
```

If both are refused, report the exact error and the manual path (Settings > Branches > Add rule). Do not silently skip.

Note: with required PR review and a solo maintainer, the owner cannot approve their own PR; either set `required_approving_review_count` to 0 for solo repos (ask the user) or leave `enforce_admins` false so the owner can merge.

PRs created later: always drafts (`gh pr create --draft`), title `<JIRA-KEY> - <ticket title>`.

Observed (2026-10-09): a private repo under a free personal account returns 403 "Upgrade to GitHub Pro or make this repository public to enable this feature." for both the classic protection API and rulesets. Do not make a repo public to work around it without the user's explicit yes.
