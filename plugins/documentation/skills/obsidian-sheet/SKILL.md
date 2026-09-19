---
name: obsidian-sheet
description: Use when the user wants to save, capture, or summarize the current conversation as a note (sheet) in their Obsidian knowledge base.
argument-hint: [knowledge-base-directory]
---

# Obsidian Sheet

Distill the conversation into one note in the user's Obsidian vault. The sheet is what the reader will want in six months: commands, decisions and their reasons, source links. Not a transcript.

## Vault

Resolve the vault directory in this order: `$ARGUMENTS`, then a path recorded in memory or CLAUDE.md, then ask the user. It must contain `.obsidian/`; if not, stop and say so.

## Steps

1. **Look before writing.** List the vault: if a note already covers the topic, update it instead of creating a duplicate. Read 2–3 neighbouring notes to match their style and language (default English). Grep existing `#tags` to reuse them.
2. **Write the sheet** at the vault root as `<Human title>.md`, unless the vault already uses folders for this kind of note.
3. **Report** the path written. Commit in the vault only if asked.

## Format

- No frontmatter.
- `# Section` headings; fenced code blocks with a language; external references as plain markdown links.
- `[[wikilinks]]` only to notes that exist. Vault CI fails on broken ones.
- Last line: tags reusing existing ones, e.g. `#dev/tools #networking #python`.
