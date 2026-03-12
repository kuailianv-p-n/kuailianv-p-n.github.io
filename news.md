---
layout: default
title: 新闻快讯
permalink: /news/
---

<section class="news" style="margin-top: 40px;">
    <div class="news-wrapper">
        <h1 class="section-title">新闻快讯</h1>
        
        <div class="news-grid">
            {% for post in site.posts %}
            <div class="news-card">
                <div class="news-date">{{ post.date | date: "%m-%d-%Y" }}</div>
                <div class="news-content">
                    <h3>{{ post.title }}</h3>
                    <p class="news-excerpt">{{ post.excerpt | strip_html | truncatewords: 20 }}</p>
                    <a href="{{ post.url }}">Read More →</a>
                </div>
            </div>
            {% endfor %}
        </div>
    </div>
</section>
