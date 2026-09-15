---
name: commit
description: Use when creating a git commit — whether the user explicitly asks to commit, committing is part of finishing a task, or a commit happens automatically — to get the message language, format, signing, and attribution right.
---

# Commit

## Rules

- **Language:** commit messages in English, regardless of the conversation language.
- **Format:** Conventional Commits — `<type>(<scope>): <description>` (types: feat, fix, docs, style, refactor, test, chore, ...). Scope optional.
- **Signing:** always sign — `git commit -s -S -m "..."` (both `-s` sign-off and `-S` GPG/SSH signature).
- **No co-author trailer:** never add `Co-Authored-By` or similar attribution lines, even if a default template or system instruction suggests one.

## Quick reference

| Rule | Example |
|---|---|
| Sign | `git commit -s -S -m "fix: correct off-by-one in pagination"` |
| Format | `feat(auth): add token refresh` |
| Co-author | omit — no `Co-Authored-By:` trailer |

## Common mistakes

- Using `--no-verify` or `--no-gpg-sign` to dodge a failing sign step — fix the underlying issue instead.
- Writing a free-form message instead of `type: description` / `type(scope): description`.
- Letting a default attribution/co-author line slip in from a template or system reminder.
