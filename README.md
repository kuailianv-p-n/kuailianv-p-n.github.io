# Kuailian VPN News Center

Official news and updates for Kuailian VPN.

This is a Jekyll-powered static website hosted on GitHub Pages.

## Local Development

```bash
# Install dependencies
bundle install

# Run local server
bundle exec jekyll serve

# Visit http://localhost:4000
```

## Adding Posts

Create new files in `_posts/` directory with the format:
```
YYYY-MM-DD-title.md
```

Example:
```markdown
---
layout: post
title: Your Post Title
author: Author Name
date: 2026-03-12
categories: news
---

Your content here...
```

## Deployment

The site is automatically deployed to GitHub Pages when you push to the main branch.

Visit: https://kuailianv-p-n.github.io/
