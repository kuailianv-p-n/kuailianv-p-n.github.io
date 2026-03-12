module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      site.tags.each do |tag, posts|
        site.pages << TagPage.new(site, site.source, File.join("tag", tag.slugify), tag)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, "_layouts"), "tag.html") # Reuse category layout for tags
      self.data["tag"] = tag
      self.data["title"] = "Posts tagged with \"#{tag}\""
      self.data["description"] = "Articles and posts tagged with #{tag}."
    end
  end
end
