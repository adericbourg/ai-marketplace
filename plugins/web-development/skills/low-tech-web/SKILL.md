---
name: low-tech-web
description: Use when deliberately building a minimal, resilient, or long-lived website — for poor or intermittent connectivity, old or low-power devices, off-grid / solar power, hard page-weight budgets, no-build / no-JS / progressive-enhancement constraints, or a low-tech / digital-sufficiency philosophy.
---

# Low-Tech Web

## Overview

Eco-design reduces the footprint of a *conventional* website. Low-tech goes further: it makes
**constraint, resilience, and longevity the design goal itself**. The brief is not "make this
lighter" but "this must work on a 2G connection, on an eight-year-old phone, possibly on a server
that loses power at night — and still be maintainable in ten years."

Core principle: **design for the worst device, network, and power conditions you will plausibly
face, and to outlive framework churn.** Sufficiency over efficiency — the cheapest request is the
one you never make.

## When to use this skill

Use this skill when minimalism and resilience are the *requirement*, not a nice-to-have:

- Audiences on slow, metered, or intermittent networks; old or low-power hardware.
- Off-grid, solar, or otherwise power-constrained hosting.
- Hard page-weight or request budgets written into the brief.
- A deliberate no-build / no-JS / progressive-enhancement / digital-sufficiency stance.

**When NOT to use:** for the general sustainability of a conventional site — reducing footprint
across a normal project lifecycle, measurement tooling, stakeholder buy-in — use the
`web-eco-design` skill instead. Reach for this skill only when constraint is the goal.

## The decision lens

Challenge every feature against its **material and energy cost**, not just its UX value:
*does this feature justify the bandwidth, processing, and hardware wear it demands?* Default to the
cheap representation; offer the expensive one only on demand.

> **Cheap-by-default, expensive-on-demand** is the single most useful low-tech reflex.

## Hard budgets

Set these as checkable limits, not aspirations. Fail the build / review if they regress.

| Budget | Target | Why |
|---|---|---|
| **Page weight** | ≤ ~150 KB per page; aim far lower for core pages | Anchored on real low-tech sites (Low-tech Lab averages ~150 KB, ~10× below the web average). Most pages need no images at all. |
| **HTTP requests** | As few as possible; well below the ~70-request web average | Each request costs round-trips, energy, and battery — worst on poor networks. |
| **JavaScript** | None render-blocking; site fully usable with JS disabled | JS is the heaviest, least resilient layer. Treat it as progressive enhancement only. |
| **Fonts** | System fonts only | Web fonts are pure transferred weight for a cosmetic gain. |
| **Third-party scripts** | Zero trackers; no external CDNs you don't control | Each one is uncontrolled weight, a privacy cost, and a longevity risk. |
| **DOM size** | Minimal node count | A heavy DOM costs CPU and memory on exactly the weak devices you're targeting. |

## Architecture for resilience & longevity

| Do this | Why |
|---|---|
| **HTML-first, progressive enhancement.** Build the working site in semantic HTML + CSS; layer JS on top only where it adds value. It must function with JS disabled. | Resilience: works on any browser, any network, with broken or blocked scripts. Also the accessibility baseline. |
| **Prefer static / flat-file + aggressive caching.** Serve pre-rendered HTML; cache generated pages so a request rarely triggers server work. | No per-request processing = less energy, faster on weak networks, fewer moving parts to fail. |
| **Minimise dependencies and build steps.** Favour a no-build or low-build stack; every dependency is future breakage and weight. | Longevity: a site with no build pipeline still deploys in ten years. |
| **Choose boring, durable technology.** Pick stacks and formats with long support horizons over the newest framework. | The environmental and maintenance cost of a rewrite dwarfs any runtime saving. |
| **Make content outlive the framework.** Keep content in portable formats (Markdown, flat files) decoupled from the rendering layer. | You can re-platform without re-authoring; content is the asset, the framework is disposable. |
| **Self-host privacy-respecting analytics.** Prefer self-hosted Matomo over Google Analytics; anonymise IPs, honour Do-Not-Track. | Removes third-party weight and a privacy liability while keeping the data you actually need. |

## Low-tech patterns

Reusable techniques, with the Low-tech Lab redesign as the worked example:

- **Reverse the journey.** Serve the cheap representation by default and the expensive one only
  after the user commits. *Example:* show a text directory first; load an interactive OpenStreetMap
  map only after the user picks a destination — turning thousands of map loads into a handful.
- **Render data with text, not graphics.** Represent quantities with repeated system-font glyphs
  instead of vectors or per-item requests. *Example:* a 3,000-project visualisation drawn from font
  characters eliminated 3,000 requests and a massive DOM; cached per country, repeat views dropped
  to ~10 KB.
- **Load media on request; expire stale media.** Images load only when the user asks, and drop off
  older content (e.g. blog images past a few months) where they no longer earn their weight.
- **Use indexed, few-colour images.** A 4-colour PNG over a full-colour image where the content
  allows it — most informational graphics do.

## Measure

Verify against the budgets, not your intuition:

- Score pages with **EcoIndex** and check raw **page weight** and **request count**.
- Test on a **throttled connection** (2G/3G) and a genuinely **old / low-power device** — not just
  your workstation on fibre.

For the full sustainability lifecycle (scoping, CI eco-budgets, stakeholder buy-in, reference
frameworks and measurement tooling), use the `web-eco-design` skill.

## Sources & further reading

| Resource | What it is | URL |
|---|---|---|
| **Low-tech Lab — "Faire un site low-tech"** | Case study this skill draws its patterns from | https://lowtechlab.org/fr/actualites-blog/faire-un-site-low-tech |
| **Low-Tech Magazine** | Reference solar-powered, self-hosted low-tech website | https://solar.lowtechmagazine.com/ |
| **Sustainable Web Design** | "Digital sufficiency" design guidance (Tom Greenwood) | https://sustainablewebdesign.org/ |
| **principles.green** | Principles of green software engineering | https://principles.green/ |
| **Wholegrain Digital** | Practical lightweight-web guidance and the Website Carbon calculator | https://www.wholegraindigital.com/ |

## Source attribution

The concrete patterns in this skill are paraphrased from the Low-tech Lab article *"Faire un site
low-tech"* and the broader low-tech web community (Low-Tech Magazine, Sustainable Web Design).
Content is original paraphrase, not reproduction. Consult the sources for full detail and the
authoritative reasoning behind each choice.
