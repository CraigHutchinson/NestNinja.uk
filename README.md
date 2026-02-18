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
- Ruby 2.7+
- Bundler

### Setup

```bash
# Install dependencies
bundle install

# Run local server
bundle exec jekyll serve

# View at http://localhost:4000
```

### Building

```bash
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

Contributions are welcome! Please see the [main NestNinja repository](https://github.com/CraigHutchinson/NestNinja) for Community Edition firmware and hardware contributions.

For website improvements, please open an issue or pull request.

## License

Website content: [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)

NestNinja Community Edition and hardware: See [main repository](https://github.com/CraigHutchinson/NestNinja)
