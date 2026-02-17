# NestNinja.uk Website - Setup Instructions

## Quick Start

1. **Navigate to the directory:**
   ```powershell
   cd d:\Github\NestNinja.uk
   ```

2. **Install dependencies:**
   ```powershell
   bundle install
   ```

3. **Run the local development server:**
   ```powershell
   bundle exec jekyll serve
   ```

4. **Open your browser:**
   Navigate to `http://localhost:4000`

## Deployment to GitHub Pages

### Initial Setup

1. **Create GitHub repository:**
   - Create a new repository called `NestNinja.uk` on GitHub
   - Do NOT initialize with README (we already have files)

2. **Initialize git and push:**
   ```powershell
   git init
   git add .
   git commit -m "Initial NestNinja.uk website"
   git branch -M main
   git remote add origin https://github.com/CraigHutchinson/NestNinja.uk.git
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: "GitHub Actions"
   - The site will automatically build and deploy via the workflow

4. **Configure DNS (when ready for nestninja.uk domain):**
   - Add A records to your DNS:
     ```
     185.199.108.153
     185.199.109.153
     185.199.110.153
     185.199.111.153
     ```
   - Add CNAME record: `www` → `craighutchinson.github.io`
   - GitHub will automatically use the CNAME file we created

### Subsequent Updates

After making changes to the website:

```powershell
git add .
git commit -m "Description of changes"
git push
```

The GitHub Actions workflow will automatically rebuild and deploy the site.

## Project Structure

```
NestNinja.uk/
├── _config.yml              # Jekyll configuration
├── _layouts/                # Custom page layouts
│   └── home.html           # Homepage layout
├── _includes/              # Reusable components
│   └── custom-head.html    # Custom HTML head content
├── _posts/                 # Blog posts (YYYY-MM-DD-title.md)
├── assets/                 # Static assets
│   └── css/
│       └── style.scss      # Custom CSS
├── *.md                    # Main pages (index, features, etc.)
├── Gemfile                 # Ruby dependencies
├── CNAME                   # Custom domain configuration
└── .github/
    └── workflows/
        └── jekyll.yml      # GitHub Actions deployment
```

## Writing Blog Posts

Create a new file in `_posts/` with the format: `YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: "Your Post Title"
date: 2026-02-17 12:00:00 +0000
categories: technical hardware
author: Your Name
---

Your content here...
```

## Customization Tips

1. **Change colors:** Edit variables in `assets/css/style.scss`
2. **Add favicon:** Place images in `assets/` and update paths in `_includes/custom-head.html`
3. **Modify navigation:** Edit `header_pages` in `_config.yml`
4. **Change theme:** Modify `remote_theme` in `_config.yml`

## Local Preview Before Push

Always preview changes locally before pushing:

```powershell
bundle exec jekyll serve --livereload
```

The `--livereload` flag automatically refreshes your browser when files change.

## Troubleshooting

**Bundle install fails:**
```powershell
gem install bundler
bundle install
```

**Port 4000 already in use:**
```powershell
bundle exec jekyll serve --port 4001
```

**Changes not showing:**
- Hard refresh browser (Ctrl+F5)
- Clear Jekyll cache: `bundle exec jekyll clean`
- Restart server

## Need Help?

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Minima Theme](https://github.com/jekyll/minima)
