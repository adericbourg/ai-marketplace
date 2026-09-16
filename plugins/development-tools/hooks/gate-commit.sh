#!/usr/bin/env bash
# PreToolUse hook (matcher: Bash). Blocks `git commit` until a ponytail-review
# skill invocation has left a marker matching the current staged diff.
set -euo pipefail

input="$(cat)"
command="$(echo "$input" | python3 -c 'import json, sys; print(json.load(sys.stdin).get("tool_input", {}).get("command", ""))' 2>/dev/null || true)"

if ! echo "$command" | grep -Eq '(^|[;&|]|\s)git\s+commit(\s|$)' || echo "$command" | grep -q -- '--help'; then
  exit 0
fi

marker="$CLAUDE_PROJECT_DIR/.git/.ponytail-reviewed"
current="$(git -C "$CLAUDE_PROJECT_DIR" diff --cached | shasum -a 256)"

if [ "$(cat "$marker" 2>/dev/null)" = "$current" ]; then
  exit 0
fi

echo "Staged changes haven't been reviewed — run the ponytail:ponytail-review skill first, then retry the commit." >&2
exit 2
