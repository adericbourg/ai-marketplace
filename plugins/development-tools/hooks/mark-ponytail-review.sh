#!/usr/bin/env bash
# PostToolUse hook (matcher: Skill). Records that ponytail-review ran against
# the current staged diff, so gate-commit.sh can require a fresh review.
set -euo pipefail

input="$(cat)"

if echo "$input" | grep -q 'ponytail-review'; then
  git -C "$CLAUDE_PROJECT_DIR" diff --cached | shasum -a 256 > "$CLAUDE_PROJECT_DIR/.git/.ponytail-reviewed"
fi
