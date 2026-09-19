# ai-marketplace

A personal Claude Code plugin marketplace.

## Installation

```bash
# 1. Register this marketplace (run once, from any directory)
/plugin marketplace add https://github.com/adericbourg/ai-marketplace

# 2. Install a plugin
/plugin install web-development@ai-marketplace
```

## Plugins

### `web-development`

Web development helpers.

| Skill | When to use |
|---|---|
| `web-eco-design` | When designing, building, or reviewing a web service and you want to apply eco-design / sustainability / green-IT best practices. Covers all 10 stages of the Designers Éthiques eco-design guide, plus curated tools and reference frameworks. |
| `low-tech-web` | When deliberately building a minimal, resilient or long-lived site under hard constraints (poor/intermittent network, old or low-power devices, off-grid power, no-build/no-JS, strict page-weight budgets). |

### `development-tools`

Development tools.

Depends on the `ponytail` marketplace. Register it before installing:

```bash
/plugin marketplace add DietrichGebert/ponytail
```

| Skill | When to use |
|---|---|
| `commit` | When creating a git commit — whether explicitly requested, part of finishing a task, or automatic — to get the message language, format, signing, and attribution right. |
| `pull-request` | When creating a pull-request (or merge-request) — whether explicitly requested or as the final step of finishing a task — to get the title language, format, and description content right. |

### `documentation`

Documentation helpers.

| Skill | When to use |
|---|---|
| `obsidian-sheet` | When you want to save, capture, or summarize the current conversation as a note (sheet) in an Obsidian knowledge base. Takes the vault directory as argument, or reads it from memory / CLAUDE.md. Without vault access (e.g. Claude Chat), it outputs the note for you to paste. |
