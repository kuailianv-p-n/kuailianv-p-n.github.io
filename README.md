# TechNews Hub - Professional Jekyll News Theme

A modern, SEO-optimized Jekyll theme for news and blog websites with comprehensive features for content creators and publishers.

## Features

### SEO Optimization
- ✅ Complete TDK support (Title, Description, Keywords)
- ✅ Open Graph tags for social sharing
- ✅ Twitter Card support
- ✅ Canonical URLs
- ✅ Robots meta tags
- ✅ JSON-LD structured data (NewsArticle, BreadcrumbList, Organization, WebSite)
- ✅ Automatic sitemap generation
- ✅ Robots.txt configuration
- ✅ IndexNow push support for Bing and Yandex

### Content Features
- ✅ Article pages with metadata
- ✅ Table of contents generation
- ✅ Breadcrumb navigation
- ✅ Related posts suggestions
- ✅ Author boxes with social links
- ✅ Publish and update dates
- ✅ Tags and categories system
- ✅ Social share buttons (Twitter, Facebook, LinkedIn, Telegram, Copy Link)
- ✅ Featured articles support

### Performance
- ✅ Lazy loading for images
- ✅ Minified CSS and JavaScript
- ✅ Font preloading
- ✅ Optimized for Lighthouse SEO > 95
- ✅ Responsive design (mobile-first)
- ✅ Fast loading times

### User Experience
- ✅ Modern, clean design inspired by TechCrunch, The Verge, Google News
- ✅ Tailwind CSS for styling
- ✅ Responsive navigation
- ✅ Search functionality
- ✅ Newsletter subscription form
- ✅ Category browsing
- ✅ Pagination support
- ✅ Dark mode ready

### Technical
- ✅ Jekyll 4.3+
- ✅ Semantic HTML5
- ✅ Kramdown with GFM support
- ✅ Rouge syntax highlighting
- ✅ Google Analytics integration
- ✅ Disqus comments support

## Installation

### Prerequisites
- Ruby 2.7 or higher
- Jekyll 4.3+
- Bundler

### Setup

1. Clone or download this theme
2. Navigate to the theme directory
3. Install dependencies:

```bash
bundle install
```

4. Update `_config.yml` with your site information
5. Run the development server:

```bash
bundle exec jekyll serve
```

6. Visit `http://localhost:4000` in your browser

## Configuration

### Basic Settings

Edit `_config.yml`:

```yaml
title: "Your Site Title"
tagline: "Your tagline"
description: "Your site description"
author: "Your Name"
email: "your@email.com"
url: "https://yourdomain.com"
logo: "/assets/images/logo.png"
favicon: "/assets/images/favicon.ico"
```

### Social Links

```yaml
social:
  twitter: "https://twitter.com/yourhandle"
  facebook: "https://facebook.com/yourpage"
  linkedin: "https://linkedin.com/company/yourcompany"
  github: "https://github.com/yourprofile"
  telegram: "https://t.me/yourhandle"
```

### IndexNow Configuration

To enable IndexNow push for Bing and Yandex:

1. Get your IndexNow API key from https://www.indexnow.org/
2. Update `_config.yml`:

```yaml
indexnow:
  enabled: true
  key: "YOUR_API_KEY"
  host: "yourdomain.com"
```

3. Create a file named `YOUR_API_KEY.txt` in the root directory with your API key

### Google Analytics

Add your Google Analytics ID:

```yaml
google_analytics: "YOUR_GOOGLE_ANALYTICS_ID"
```

## Creating Content

### Blog Posts

Create files in `_posts/` with the naming convention: `YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: "Your Article Title"
author: "Author Name"
date: 2026-03-12
categories: [Category1, Category2]
tags: [tag1, tag2, tag3]
image: "/assets/images/post-image.jpg"
image_caption: "Image caption"
description: "Meta description"
keywords: "keyword1, keyword2"
featured: true
reading_time: 5
---

Your content here...
```

### Pages

Create files in `_pages/` with the `.md` extension:

```markdown
---
layout: page
title: "Page Title"
permalink: /page-url/
description: "Page description"
---

Your content here...
```

### Authors

Create author profiles in `_authors/`:

```markdown
---
layout: author
name: "Author Name"
title: "Author Title"
bio: "Author biography"
image: "/assets/images/authors/author.jpg"
website: "https://author.example.com"
social:
  twitter: "https://twitter.com/author"
  linkedin: "https://linkedin.com/in/author"
---
```

## Directory Structure

```
jekyll-news-theme/
├── _config.yml              # Site configuration
├── _layouts/                # Page layouts
│   ├── default.html        # Base layout
│   ├── home.html           # Homepage
│   ├── post.html           # Blog post
│   ├── page.html           # Static page
│   ├── archive.html        # Category/tag archive
│   └── author.html         # Author page
├── _includes/              # Reusable components
│   ├── header.html         # Navigation header
│   ├── footer.html         # Footer
│   ├── seo.html            # SEO meta tags
│   └── article-card.html   # Article card component
├── _posts/                 # Blog posts
├── _pages/                 # Static pages
├── _authors/               # Author profiles
├── _plugins/               # Custom Jekyll plugins
├── assets/                 # Images, CSS, JS
├── index.md                # Homepage
├── robots.txt              # Robots configuration
├── sitemap.xml             # Sitemap
├── Gemfile                 # Ruby dependencies
└── README.md               # This file
```

## Customization

### Colors and Styling

Edit the CSS variables in `_layouts/default.html`:

```css
:root {
    --primary: #0066cc;
    --primary-dark: #0052a3;
    --accent: #ff6b35;
    --text-primary: #1a1a1a;
    --text-secondary: #666666;
    --bg-light: #f8f9fa;
    --border-color: #e0e0e0;
}
```

### Typography

The theme uses:
- **Headlines**: Merriweather (serif)
- **Body**: Inter (sans-serif)

Change fonts in `_layouts/default.html` by updating the Google Fonts link.

## Plugins Used

- `jekyll-seo-tag` - SEO meta tags
- `jekyll-sitemap` - Automatic sitemap generation
- `jekyll-feed` - RSS feed generation
- `jekyll-paginate` - Pagination support
- `jekyll-last-modified-at` - Track last modified dates
- `jekyll-archives` - Category and tag archives

## Deployment

### GitHub Pages

1. Push your repository to GitHub
2. Go to Settings > Pages
3. Select your branch and save
4. Your site will be published at `https://username.github.io/repo-name`

### Other Hosting

1. Build the site:
```bash
bundle exec jekyll build
```

2. Upload the `_site/` directory to your hosting provider

## Performance Optimization

- Images are lazy-loaded
- CSS and JavaScript are minified
- Fonts are preloaded
- No render-blocking resources
- Optimized for Core Web Vitals

## SEO Best Practices

- Each post should have a unique, descriptive title
- Include a meta description (160 characters or less)
- Use relevant keywords and tags
- Add high-quality featured images
- Write descriptive alt text for images
- Use proper heading hierarchy (H1, H2, H3)
- Include internal links to related posts
- Ensure mobile responsiveness

## Troubleshooting

### Build Errors

If you encounter build errors, try:
```bash
bundle clean
bundle install
bundle exec jekyll clean
bundle exec jekyll build
```

### Plugins Not Loading

Ensure all plugins are listed in `_config.yml` under the `plugins:` section.

### Images Not Showing

Check that image paths are correct and use absolute paths from the site root (e.g., `/assets/images/image.jpg`).

## License

This theme is available under the MIT License.

## Support

For issues, questions, or suggestions, please open an issue on GitHub or contact us at contact@technewshub.com.

## Credits

Built with Jekyll, Tailwind CSS, and love for quality content.

---

**Happy blogging!** 📝
