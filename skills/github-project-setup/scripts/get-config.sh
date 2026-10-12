#!/usr/bin/env bash
# Print a personal default from the environment or ~/.config/github-project-setup/config.json.
# Usage: get-config.sh <license_holder|security_email>
# Exits 1 (printing nothing) when the value is missing, so callers can ask the user.
set -euo pipefail
key="${1:?usage: get-config.sh <license_holder|security_email>}"
env_name="GPS_$(printf '%s' "$key" | tr '[:lower:]' '[:upper:]')"
if [ -n "${!env_name:-}" ]; then printf '%s\n' "${!env_name}"; exit 0; fi
cfg="${GPS_CONFIG:-$HOME/.config/github-project-setup/config.json}"
[ -f "$cfg" ] || exit 1
python3 - "$cfg" "$key" <<'PY'
import json, sys
value = json.load(open(sys.argv[1])).get(sys.argv[2], "")
if not value:
    sys.exit(1)
print(value)
PY
