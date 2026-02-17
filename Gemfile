source "https://rubygems.org"

# GitHub Pages
gem "github-pages", group: :jekyll_plugins

# Jekyll plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-remote-theme"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
  gem "webrick"
  gem "csv"
end

# Windows and JRuby compatibility
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance booster for Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# HTTP parser
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

# Open external links in new tab
gem "jekyll-target-blank"

# Emoji support
gem "jemoji"
