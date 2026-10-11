#!/usr/bin/env bash
# Copy this skill into a project so sandboxed agents (which cannot read ~/.claude) can use it.
# Usage: install-into-project.sh <project-dir>
# The copy is excluded from git locally (.git/info/exclude), so it is never committed or pushed.
set -euo pipefail
src="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dest="${1:?usage: install-into-project.sh <project-dir>}"
[ -d "$dest" ] || { echo "no such directory: $dest" >&2; exit 2; }
mkdir -p "$dest/.claude/skills"
rm -rf "$dest/.claude/skills/github-project-setup"
cp -R "$src" "$dest/.claude/skills/github-project-setup"
if git -C "$dest" rev-parse --git-dir >/dev/null 2>&1; then
  excl="$(git -C "$dest" rev-parse --git-path info/exclude)"
  case "$excl" in /*) ;; *) excl="$dest/$excl" ;; esac
  mkdir -p "$(dirname "$excl")"
  grep -qxF '.claude/skills/github-project-setup/' "$excl" 2>/dev/null || echo '.claude/skills/github-project-setup/' >> "$excl"
fi
echo "Installed to $dest/.claude/skills/github-project-setup (git-excluded). Re-run to refresh after skill updates."
