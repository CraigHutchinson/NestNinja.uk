# NestNinja.uk Website

Official website for NestNinja - Smart Bird Box with integrated camera system.

## About

This is the marketing and documentation website for the NestNinja project, built with Jekyll and hosted on GitHub Pages.

NestNinja offers:
- **Premium complete bird box systems** - Ready-to-install solutions with full support and premium features
- **Smart camera modules** - For users with existing bird boxes
- **Community Edition firmware** - Full open-source firmware for DIY builders (releasing late 2026)

## Local Development

### Prerequisites

| Requirement | Version | Install |
|---|---|---|
| [Ruby](https://www.ruby-lang.org/en/downloads/) | 3.1+ | Windows: [RubyInstaller](https://rubyinstaller.org/downloads/) · macOS/Linux: [rbenv](https://github.com/rbenv/rbenv) or [RVM](https://rvm.io/) |
| [Bundler](https://bundler.io/) | 2.x | `gem install bundler` |
| [Jekyll](https://jekyllrb.com/docs/installation/) | 4.x | Installed automatically via `bundle install` |
| [Git](https://git-scm.com/downloads) | any | Required to clone the repository |

> **Windows note:** Use [RubyInstaller with DevKit](https://rubyinstaller.org/downloads/) (x64, recommended) and select the MSYS2 toolchain when prompted.

> **GitHub Pages:** This site uses the [`github-pages`](https://pages.github.com/) gem to keep dependency versions in sync with the live hosting environment. See the [GitHub Pages dependency versions](https://pages.github.com/versions/) for the exact Jekyll version used.

### Setup

```bash
# Clone the repository
git clone https://github.com/CraigHutchinson/NestNinja.uk.git
cd NestNinja.uk

# Install all dependencies (Jekyll, plugins, etc.)
bundle install

# Run a local development server with live reload
bundle exec jekyll serve --livereload

# View the site at:
#   http://localhost:4000
```

### Building

```bash
# Build the static site for production
bundle exec jekyll build
```

The site will be generated in the `_site/` directory.

## Project Structure

```
├── _config.yml           # Jekyll configuration
├── _posts/               # Blog posts
├── _docs/                # Documentation pages
├── _hardware/            # Hardware documentation
├── _includes/            # Reusable components
├── _layouts/             # Page templates
├── assets/               # CSS, JS, images
├── index.md              # Homepage
├── features.md           # Features page
├── hardware.md           # Hardware overview
├── documentation.md      # Docs index
└── community.md          # Community page
```

## Contributing

Contributions are welcome! Please see the [main NestNinja repository](https://github.com/CraigHutchinson/NestNinja.open) for Community Edition firmware and hardware contributions.

For website improvements, please open an issue or pull request.

## License

Website content: [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)

NestNinja Community Edition and hardware: See [main repository](https://github.com/CraigHutchinson/NestNinja.open)
