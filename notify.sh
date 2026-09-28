#!/usr/bin/env bash
# Notification hook: ping the desktop when Claude needs attention.
# JSON in on stdin; JSON out on stdout. There is no decision to make here.
set -euo pipefail

# Read JSON from stdin
input=$(cat)

mymessage=$(printf '%s' "$input" | jq -r '.message // "Claude needs your attention"')

# Output the JSON unchanged
echo "$mymessage"