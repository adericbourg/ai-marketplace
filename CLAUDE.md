# ai-marketplace

## Commit types
Files under `plugins/<plugin>/` (SKILL.md, hooks, plugin.json...) are the shipped product, even when they are Markdown.
release-please only releases a plugin on `feat`, `fix` or a breaking change.

- New skill, or new behavior in a skill/hook → `feat(<skill or plugin>)`
- Correction of an existing skill/hook behavior → `fix(<skill or plugin>)`
- `docs` only for files that are not shipped in a plugin (root `README.md`, this file)
