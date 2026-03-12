module Jekyll
  module TOCGenerator
    def generate_toc(content)
      return "" if content.nil? || content.empty?
      
      headings = []
      content.scan(/<h([2-3])[^>]*id="([^"]*)"[^>]*>([^<]*)<\/h\1>/) do |level, id, title|
        headings << {
          level: level.to_i,
          id: id,
          title: title
        }
      end
      
      return "" if headings.empty?
      
      toc = "<nav class=\"toc\">\n<h2>Table of Contents</h2>\n<ul>\n"
      
      current_level = 2
      headings.each do |heading|
        if heading[:level] > current_level
          (current_level...heading[:level]).each do
            toc += "<ul>\n"
            current_level += 1
          end
        elsif heading[:level] < current_level
          (heading[:level]...current_level).each do
            toc += "</ul>\n"
            current_level -= 1
          end
        end
        
        toc += "<li><a href=\"##{heading[:id]}\">#{heading[:title]}</a></li>\n"
      end
      
      (2...current_level).each do
        toc += "</ul>\n"
      end
      
      toc += "</ul>\n</nav>"
      toc
    end
  end
end

Liquid::Template.register_filter(Jekyll::TOCGenerator)
