# Instructions for AI Assistants — NestNinja.uk

This is the **marketing and documentation website** for NestNinja, built with Jekyll and hosted on GitHub Pages at [nestninja.uk](https://nestninja.uk).

Read this document alongside the parent project guidelines at [github.com/CraigHutchinson/NestNinja](https://github.com/CraigHutchinson) — but note the hard rule below on self-containment.

---

## Critical: Repository Self-Containment

**This repository must be fully self-contained.**

- Do **not** reference the parent management repository (`NestNinja` / the monorepo root) in any source file, link, or documentation.
- Do **not** use relative paths to sibling repositories (e.g. `../NestNinja.hub/`, `../NestNinja.pro/`).
- Do **not** reference local filesystem paths (e.g. `D:\Craig\GitHub\NestNinja`).
- Cross-site links to `hub.nestninja.uk` are correct and expected. Use the `{{ site.hub_url }}` Liquid variable (not a hardcoded URL) so local dev overrides work — see Local Development below.

---

## Repository Purpose

**Audience:** End users, makers, birders, press, partners  
**Stack:** Jekyll 4.x, GitHub Pages, Minima theme (`remote_theme: jekyll/minima@master`)
**Live URL:** [nestninja.uk](https://nestninja.uk)  
**Language:** UK English throughout

---

## Content Rules

### Feature Split
Only Community Edition features may be described as open/free. Premium features belong exclusively to commercial products. See the [open-core feature table](https://github.com/CraigHutchinson/NestNinja.open) for the definitive split.

**Never on this site:** premium feature implementation details, internal firmware architecture, pro firmware source, private repository names or URLs.

### Pricing
Always qualify prices as estimates: `~£250–300 (estimated)`. Never present them as locked in.

### Tone
Warm, accessible, benefit-led. Write for a general (non-technical) audience. Avoid deep firmware specifics.

### UK English
Use throughout: *colour*, *behaviour*, *licence* (noun), *recognise*, *customise*. Use `£` for pricing.

### Product Names
- **NestNinja** — one word, capital N + capital N
- **Community Edition** — not "free version", "lite", or "open version"
- **Premium Complete System** — exact name, not "full product"
- **Smart Camera Module** — exact name

---

## Architectural Decision: Always Use `relative_url` for Internal Links and Assets

**Decision (2026-02-23):** Every internal link and asset reference must pass through Jekyll's `relative_url` filter. Never output bare absolute paths like `/assets/...` or `/features` directly into HTML attributes.

**Rationale:** The GitHub Actions workflow passes `--baseurl "${{ steps.pages.outputs.base_path }}"` at build time. Without a custom domain configured, `base_path` resolves to `/NestNinja.uk`, so bare paths resolve to the wrong host root. With `baseurl: ""` in production the filter is a no-op, so there is no downside.

**Rules:**
- In **raw HTML inside `.md` files** (e.g. `<a href="...">`, `<img src="...">`): use `{{ "/path" | relative_url }}`.
- In **`_data/` YAML** navigation/menu files: the Minima theme applies `relative_url` to `url:` entries in its own templates — verify before adding new data-driven links.
- **Do not** use `site.baseurl` string concatenation — use `| relative_url` instead.
- **og:image** uses `absolute_url` (not `relative_url`) — that is intentional and correct for social sharing meta tags.

---

## Local Development

### Running This Site Only

```bash
cd NestNinja.uk
bundle install
bundle exec jekyll serve --livereload --port 4000 \
  --config _config.yml,_config.local.yml
```

### Running Alongside NestNinja.hub

To make cross-site links (`hub.nestninja.uk` ↔ `nestninja.uk`) work locally, run both Jekyll servers simultaneously — one at port 4000, the other at port 4001:

```bash
# Terminal 1 — this repo
bundle exec jekyll serve --livereload --livereload-port 35729 --port 4000 \
  --config _config.yml,_config.local.yml

# Terminal 2 — NestNinja.hub repo (separate checkout)
bundle exec jekyll serve --livereload --livereload-port 35730 --port 4001 \
  --config _config.yml,_config.local.yml
```

The `_config.local.yml` override sets:
- `url: "http://localhost:4000"` (this site)
- `hub_url: "http://localhost:4001"` (sibling site)

### Cross-Site Links

All links to the Hub must use `{{ site.hub_url }}` — **never** hardcode `https://hub.nestninja.uk` in page content. This allows local dev to resolve correctly.

---

## File Structure

```
_config.yml          # Production Jekyll config (url, hub_url, plugins)
_config.local.yml    # Local dev overrides — NOT committed to _site
_posts/              # Blog posts (YYYY-MM-DD-title.md)
_includes/           # Reusable partials
_layouts/            # Page templates
assets/              # CSS, JS, images
index.md             # Homepage
products.md          # Product tiers
features.md          # Feature comparison
hardware.md          # Hardware overview
documentation.md     # Docs index
community.md         # Community page
about.md             # About page
```

### Diagrams
Mermaid only — no binary diagram files (PNG/SVG). This aligns with the project-wide ADR-007 documented in NestNinja.pro.

---

## What Belongs Here vs Other Repos

| Content | Here? |
|---|---|
| User-facing marketing copy | ✅ |
| Product pricing and tiers | ✅ |
| Blog posts / project updates | ✅ |
| Community Edition feature descriptions | ✅ (reference level only) |
| Deep firmware implementation details | ❌ → NestNinja.pro or NestNinja.open |
| Premium feature code or internals | ❌ → NestNinja.pro (private) |
| Hardware schematics | Link to NestNinja.open only |
| Camera feed data | ❌ → NestNinja.hub |

---

## Version

**Last Updated:** 2026-02-23
**Applies to:** NestNinja.uk repository only
**For:** Claude, GitHub Copilot, and other AI coding assistants
