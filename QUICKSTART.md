# Quick Start Guide - Jekyll News Theme

Get your news/blog site up and running in 5 minutes!

## Step 1: Install Dependencies

```bash
bundle install
```

## Step 2: Configure Your Site

Edit `_config.yml` and update:

```yaml
title: "My News Site"
description: "My awesome news site"
author: "Your Name"
url: "https://example.com"
```

## Step 3: Add Your Content

Create a new post in `_posts/`:

```bash
touch _posts/2026-03-12-my-first-post.md
```

Edit the file:

```markdown
---
layout: post
title: "My First Post"
author: "Your Name"
date: 2026-03-12
categories: [Technology]
tags: [news, technology]
image: "/assets/images/post.jpg"
description: "Post description"
---

Your content here...
```

## Step 4: Run Locally

```bash
bundle exec jekyll serve
```

Visit `http://localhost:4000` in your browser.

## Step 5: Deploy

### GitHub Pages

1. Create a GitHub repository named `username.github.io`
2. Push your code:
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/username/username.github.io.git
git push -u origin main
```

3. Your site will be live at `https://username.github.io`

### Other Hosting

```bash
bundle exec jekyll build
```

Upload the `_site/` folder to your hosting provider.

## Key Features to Enable

### 1. IndexNow for Bing/Yandex

Get your API key from https://www.indexnow.org/ and update:

```yaml
indexnow:
  enabled: true
  key: "YOUR_API_KEY"
  host: "yourdomain.com"
```

### 2. Google Analytics

Add your tracking ID:

```yaml
google_analytics: "G-XXXXXXXXXX"
```

### 3. Social Links

Update social media URLs:

```yaml
social:
  twitter: "https://twitter.com/yourhandle"
  facebook: "https://facebook.com/yourpage"
```

## File Organization

- **Posts**: `_posts/` - Blog articles
- **Pages**: `_pages/` - Static pages (About, Contact, etc.)
- **Authors**: `_authors/` - Author profiles
- **Images**: `assets/images/` - All images
- **Layouts**: `_layouts/` - Page templates
- **Includes**: `_includes/` - Reusable components

## Common Tasks

### Add a New Category

Categories are automatically detected from posts. Just add to your post:

```yaml
categories: [NewCategory]
```

### Add a New Author

Create `_authors/author-name.md`:

```markdown
---
layout: author
name: "Author Name"
bio: "Author biography"
image: "/assets/images/authors/author.jpg"
---
```

Then reference in posts:

```yaml
author: "Author Name"
```

### Customize Colors

Edit `_layouts/default.html`:

```css
:root {
    --primary: #0066cc;
    --accent: #ff6b35;
}
```

### Add Newsletter Subscription

The homepage already has a newsletter form. Connect it to your email service:

Edit `_layouts/home.html` and update the form action.

## SEO Checklist

- ✅ Update site title and description
- ✅ Add favicon (`assets/images/favicon.ico`)
- ✅ Add logo (`assets/images/logo.png`)
- ✅ Configure Google Analytics
- ✅ Set up IndexNow for Bing
- ✅ Add social media links
- ✅ Create quality content with images
- ✅ Use descriptive titles and descriptions
- ✅ Add relevant tags and categories

## Troubleshooting

**Site won't build?**
```bash
bundle clean
bundle install
bundle exec jekyll clean
bundle exec jekyll build
```

**Images not showing?**
- Check file paths are correct
- Use absolute paths: `/assets/images/image.jpg`

**Styles not loading?**
- Clear browser cache (Ctrl+Shift+Delete)
- Hard refresh (Ctrl+Shift+R)

## Next Steps

1. Customize the design in `_layouts/default.html`
2. Add your own content
3. Set up Google Analytics
4. Configure IndexNow
5. Deploy to your hosting
6. Monitor SEO performance

## Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Markdown Guide](https://www.markdownguide.org/)
- [SEO Best Practices](https://developers.google.com/search/docs)
- [Tailwind CSS](https://tailwindcss.com/)

---

**Happy blogging!** 🚀
