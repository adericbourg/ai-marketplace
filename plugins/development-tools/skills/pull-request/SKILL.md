---
name: pull-request
description: Use when creating a pull-request (or merge-request) — whether the user explicitly asks to open one, or it's the final step of finishing a task — to get the title language, format, and description content right.
---

# Pull Request

## Rules

- **Language:** pull-request messages in English, regardless of the conversation language.
- **Format:** Conventional Commits — `<type>(<scope>): <description>` (types: feat, fix, docs, style, refactor, test, chore, ...). Scope optional. Same convention as the `commit` skill's title format.
- **Length:**
  * Context should be a few sentences: most often 1 or 2 max. Cap to 5 for complex cases. Prefer bullet-points over long sentences.
  * Content should have only very short sentences. Each bullet point is a summary of an atomic change.

## Quick reference

### Example 1

```markdown
---
title: fix(order): never create an order without an order line
---

# Context

Creating an order without order lines is caught as invalid by third-party OtherSystem, which prevents our customers to place such an order.
Yet, In our system, this is allowed because _that-business-process_ uses empty orders for _something_.

# Content

* Create stubbed (and watermarked) order line for _something_ when in _that-business-process_ 
```

### Example 2

```markdown
---
title: fix(menu): highlight hovered menu entries in blue
---

# Context

Users often complain to "lose" their mouse pointer when navigating on the website, and especially in the menu.

# Content

* Hovered menu entries get a blue background
* Add mouse tracker to identify hot/cold zones of the UI
```

## Common mistakes

None yet.
