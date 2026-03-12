module Jekyll
  module SEOTags
    def generate_seo_tags(page)
      tags = []
      
      # Title tag
      title = page.data['title'] || page.title || site.config['title']
      tags << "<title>#{title} | #{site.config['title']}</title>"
      
      # Meta description
      description = page.data['description'] || page.data['excerpt'] || site.config['description']
      description = strip_html(description)[0...160]
      tags << "<meta name=\"description\" content=\"#{description}\">"
      
      # Meta keywords
      keywords = page.data['keywords'] || site.config['keywords']
      tags << "<meta name=\"keywords\" content=\"#{keywords}\">" if keywords
      
      # Canonical URL
      url = "#{site.config['url']}#{page.url}"
      tags << "<link rel=\"canonical\" href=\"#{url}\">"
      
      # Robots meta
      robots = page.data['robots'] || 'index, follow'
      tags << "<meta name=\"robots\" content=\"#{robots}\">"
      
      # Open Graph tags
      tags << "<meta property=\"og:title\" content=\"#{title}\">"
      tags << "<meta property=\"og:description\" content=\"#{description}\">"
      tags << "<meta property=\"og:url\" content=\"#{url}\">"
      tags << "<meta property=\"og:type\" content=\"#{page.data['og_type'] || 'article'}\">"
      
      if page.data['image']
        image_url = page.data['image'].start_with?('http') ? page.data['image'] : "#{site.config['url']}#{page.data['image']}"
        tags << "<meta property=\"og:image\" content=\"#{image_url}\">"
        tags << "<meta property=\"og:image:width\" content=\"1200\">"
        tags << "<meta property=\"og:image:height\" content=\"630\">"
      end
      
      # Twitter Card tags
      tags << "<meta name=\"twitter:card\" content=\"summary_large_image\">"
      tags << "<meta name=\"twitter:title\" content=\"#{title}\">"
      tags << "<meta name=\"twitter:description\" content=\"#{description}\">"
      if page.data['image']
        image_url = page.data['image'].start_with?('http') ? page.data['image'] : "#{site.config['url']}#{page.data['image']}"
        tags << "<meta name=\"twitter:image\" content=\"#{image_url}\">"
      end
      
      if site.config['social']&.dig('twitter')
        twitter_handle = site.config['social']['twitter'].split('/').last
        tags << "<meta name=\"twitter:creator\" content=\"@#{twitter_handle}\">"
      end
      
      tags.join("\n")
    end
    
    def strip_html(html)
      html.gsub(/<[^>]*>/, '')
    end
  end
end

Liquid::Template.register_filter(Jekyll::SEOTags)
