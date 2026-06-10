---
name: web-eco-design
description: Use when designing, building, or reviewing a website or web app and you want to reduce its environmental impact, apply eco-design principles, improve sustainability, or follow green-IT / responsible digital practices.
---

# Web Eco-Design

## Overview

The primary eco-design lever is **reducing resource consumption** — RAM, CPU, data transfer — on end-user devices. Less processing per request means less energy drawn from aging hardware, which in turn slows device obsolescence: the single largest driver of digital environmental impact.

Eco-design is not a single decision; it is a discipline applied at every stage of a project, from scoping to maintenance.

For deliberately minimal, resilient, or off-grid sites — where constraint and resilience are the *requirement* rather than an optimisation — see the `low-tech-web` skill.

## How to use this skill

Find the row that matches the user's current stage or question. Apply the prescriptive takeaway directly. Follow the reference link for deeper criteria and examples when the situation is complex.

---

## Guide at a glance

| Stage | Do this | Reference |
|---|---|---|
| **1. Understanding the stakes** | Frame the environmental conversation around *user terminals first*: manufacturing and using devices accounts for the majority of digital impact — more than data centres or networks. Use this framing to justify every efficiency decision you make. Ask yourself: *have I internalised that the lightest page is the most ethical page?* | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/1-introduction) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/1-introduction) |
| **2. Defining the essential** | Before building a feature, challenge whether it is necessary. Cut any requirement that cannot be justified by a clear, real user need. Treat scope reduction as the highest-impact eco-design action available. Ask yourself: *if this feature disappeared, who would notice, and does their need outweigh the environmental cost?* | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/2-define-the-must-haves-and-eliminate-the-non-essential) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/2-definir-le-besoin) |
| **3. Assessing & measuring** | Measure your environmental footprint before and after each cycle using EcoIndex, GreenIT-Analysis, or equivalent. Set a baseline; track it. Never ship a change that degrades the score without a deliberate trade-off decision. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/3-assessing-and-measuring) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/3-evaluer-et-mesurer) |
| **4. Streamlining the user experience** | Shorten every user journey to its minimum viable steps. Remove decorative elements, unnecessary animations, and hidden complexity. A clear, direct UX reduces time-on-device, which directly reduces energy consumption. Ask yourself: *can the user accomplish this goal in fewer interactions?* | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/4-simplify-the-customer-experience) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/4-simplifier-le-parcours-et-fluidifier-l-experience) |
| **5. Mobile-first design** | Design for the most resource-constrained device first. This discipline forces every asset, interaction, and layout to justify its cost. Do not "downgrade" to mobile as an afterthought — the mobile constraint *is* the eco-design constraint. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/5-mobile-first-design) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/5-concevoir-en-mobile-first) |
| **6. Static site vs CMS** | Default to the simplest technology stack that meets the requirements. A static site generator (no per-request server processing) is almost always more efficient than a CMS. Only introduce dynamic server-side rendering when genuinely required by the content model. Ask yourself: *does this page actually need to be generated at request time?* | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/6-choose-your-solution-static-site-or-cms) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/6-choisir-sa-solution-site-statique-ou-cms) |
| **7. Designing & developing** | Apply the full technical checklist: compress and serve images in modern formats (WebP/AVIF), lazy-load off-screen assets, eliminate unused JavaScript, prefer CSS over JS for visual effects, use system fonts or subset web fonts, cache aggressively, minimise third-party scripts, and remove dead code ruthlessly. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/7-designing-and-developing) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/7-realiser-et-developper) |
| **8. Testing, assessing & maintaining** | Integrate environmental performance checks into your CI/CD pipeline (EcoIndex score, Lighthouse performance budget). Monitor for regressions after each release. Retire features actively: unused code left in production still costs CPU and maintenance energy. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/8-testing-assessing-and-maintaining) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/8-tester-evaluer-et-maintenir) |
| **9. Persuading & spreading awareness** | Translate environmental impact into business language: page weight → bounce rate, load time → conversion, server efficiency → hosting cost, accessibility → legal compliance. Use these levers to secure stakeholder buy-in before eco-design becomes a contractual requirement. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/9-persuading-and-spreading-awareness) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/9-convaincre-et-diffuser) |
| **10. Going further** | Extend eco-design beyond the codebase: include environmental criteria in supplier selection, write performance budgets into contracts, contribute to internal standards, and question whether the service as a whole still justifies its footprint. Ask yourself: *is this service solving a real need, or perpetuating one?* | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/10-going-further-with-the-eco-design-approach) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/10-aller-plus-loin-dans-la-demarche) |
| **Examples** | Browse real-world eco-designed sites for benchmarking and inspiration before committing to an architecture. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/examples-of-eco-designed-websites) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/exemples-sites-ecoconcus) |
| **Resources** | See the curated tools and frameworks section below, or the guide's full resources page. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/resources) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/ressources) |
| **Webinar Q&A** | Answers to common practitioner questions — consult when you hit an edge case not covered by the main chapters. | [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/faq) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/faq) |

---

## Tools & further resources

### Reference frameworks & checklists

| Tool | What it is | URL |
|---|---|---|
| **RGESN** (Arcep / Ademe) | Official French eco-design reference framework for digital services — the regulatory baseline | https://www.arcep.fr/mes-demarches-et-services/entreprises/fiches-pratiques/referentiel-general-ecoconception-services-numeriques.html |
| **GR491** (INR) | 491-criteria responsible design guide, covering the full service lifecycle | https://gr491.isit-europe.org/ |
| **115 Best Practices** (GreenIT) | Community-maintained, ranked checklist of 115 web eco-design best practices | https://github.com/cnumr/best-practices |
| **Opquast checklist** | Web quality checklist that integrates performance, accessibility, and sustainability | https://checklists.opquast.com/fr/assurance-qualite-web/download/ |
| **Sustainable Web Design** | Practical design guidance for environmental responsibility (Tom Greenwood) | https://sustainablewebdesign.org/category/design/ |

### Measurement & tooling

| Tool | What it is | URL |
|---|---|---|
| **GreenIT collective tools** | Browser extension (GreenIT-Analysis) and EcoIndex for measuring page-level eco-score | https://collectif.greenit.fr/outils.html |
| **MiNumEco toolkit** | French government eco-responsible digital toolkit — templates, audits, guides | https://ecoresponsable.numerique.gouv.fr/publications/boite-outils/ |
| **Négaoctet database** | Life-cycle assessment data for digital services and hardware | https://negaoctet.org/ |

### Going deeper

| Resource | What it is | URL |
|---|---|---|
| **Green I/O** (podcast, EN) | Weekly conversations with practitioners on sustainable digital engineering | https://greenio.gaelduez.com/ |
| **Environment Variables** (podcast, EN) | Green Software Foundation podcast on software carbon intensity | https://podcast.greensoftware.foundation/ |

---

## Source attribution

This skill summarises and paraphrases the **Guide d'écoconception de services numériques** published by [Designers Éthiques](https://designersethiques.org/), under their free-to-share licence. Content is original paraphrase, not a reproduction. Always consult the source guide for full criteria and authoritative detail.

Full guide: [EN](https://designersethiques.org/en/topics/eco-design/eco-design-guide-for-digital-services/1-introduction) · [FR](https://designersethiques.org/fr/thematiques/ecoconception/guide-d-ecoconception/1-introduction)
