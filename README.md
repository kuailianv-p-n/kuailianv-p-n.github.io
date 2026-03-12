# NewsHub Jekyll Theme

A professional, SEO-optimized Jekyll theme for news and blog websites.

## Features

- **Full SEO Optimization:** TDK, Open Graph, Twitter Card, Canonical URL, Robots Meta
- **Structured Data (JSON-LD):** NewsArticle, BreadcrumbList, Organization, WebSite SearchBox
- **Automatic Sitemap:** `/sitemap.xml` with News Sitemap extension
- **Robots.txt:** Auto-generated
- **IndexNow Push:** GitHub Actions workflow to automatically submit new posts to Bing/Yandex
- **Social Share Buttons:** Twitter, Facebook, Telegram, Reddit, WhatsApp, Copy Link
- **Article Features:** Table of Contents, Breadcrumbs, Related Posts, Author Box, Publish/Update Date, Tags & Categories
- **Performance:** Lazy loading images, preloaded fonts, deferred JS, reading progress bar
- **SEO-Friendly URLs:** `/category/post-title/`
- **News-Style Homepage:** Featured posts, latest news, category blocks
- **Pagination:** Built-in pagination for post lists
- **Responsive Design:** Mobile-first, fully responsive layout

## Quick Start

1. Clone this repository
2. Install dependencies: `bundle install`
3. Configure `_config.yml` with your site details
4. Set your `INDEXNOW_KEY` in GitHub Secrets
5. Run locally: `bundle exec jekyll serve`

## Configuration

Edit `_config.yml` to customize:

```yaml
title: "Your Site Title"
description: "Your site description"
url: "https://your-domain.com"
author: "Your Name"
indexnow:
  key: "YOUR_INDEXNOW_API_KEY"
  host: "your-domain.com"
```

## IndexNow Setup

1. Get an API key from [IndexNow](https://www.indexnow.org/)
2. Add the key as a GitHub Secret named `INDEXNOW_KEY`
3. Create a key verification file at `/{your-key}.txt` containing just your key
4. The GitHub Actions workflow will automatically submit new posts

## License

MIT License
