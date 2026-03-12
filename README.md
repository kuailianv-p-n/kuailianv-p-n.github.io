# Kuailian VPN - Jekyll 官方网站

这是快连VPN的官方Jekyll网站，使用现代化的紫色渐变设计。

## 功能特性

- ✅ 响应式设计（移动、平板、桌面）
- ✅ 紫色渐变主题
- ✅ Hero部分（3个关键指标）
- ✅ 特性介绍卡片
- ✅ 平台下载部分
- ✅ 新闻/文章系统
- ✅ SEO优化
- ✅ 快速加载

## 本地开发

```bash
# 安装依赖
bundle install

# 运行本地服务器
bundle exec jekyll serve

# 访问 http://localhost:4000
```

## 文件结构

```
├── _layouts/          # 页面布局
│   ├── default.html   # 默认布局
│   ├── home.html      # 首页布局
│   └── post.html      # 文章布局
├── _posts/            # 新闻文章
├── assets/
│   └── css/
│       └── style.css  # 主样式文件
├── index.md           # 首页
├── news.md            # 新闻列表
└── _config.yml        # Jekyll配置
```

## 添加新文章

在 `_posts/` 目录中创建新文件，格式为 `YYYY-MM-DD-title.md`：

```markdown
---
layout: post
title: 文章标题
author: 作者名称
date: 2026-03-12
categories: news
excerpt: 文章摘要
---

文章内容...
```

## 自定义设计

编辑 `assets/css/style.css` 中的颜色变量：

```css
background: linear-gradient(135deg, #7c3aed 0%, #ec4899 100%);
```

## 部署

网站自动部署到 GitHub Pages：
https://kuailianv-p-n.github.io/

## 许可证

MIT License
