require 'net/http'
require 'json'
require 'uri'

module Jekyll
  class IndexNowPush
    def initialize(config)
      @config = config
      @indexnow_config = config['indexnow'] || {}
    end

    def push_url(url)
      return unless @indexnow_config['enabled']
      return unless @indexnow_config['key']
      return unless @indexnow_config['host']

      begin
        uri = URI('https://api.indexnow.org/indexnow')
        
        payload = {
          host: @indexnow_config['host'],
          key: @indexnow_config['key'],
          keyLocation: "https://#{@indexnow_config['host']}/#{@indexnow_config['key']}.txt",
          urlList: [url]
        }

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        
        request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })
        request.body = payload.to_json
        
        response = http.request(request)
        
        if response.code == '200'
          Jekyll.logger.info("IndexNow: Successfully pushed #{url}")
        else
          Jekyll.logger.warn("IndexNow: Failed to push #{url} - #{response.code}")
        end
      rescue => e
        Jekyll.logger.warn("IndexNow: Error pushing URL - #{e.message}")
      end
    end
  end

  class IndexNowGenerator < Generator
    safe true
    priority :low

    def generate(site)
      return unless site.config['indexnow']&.dig('enabled')

      indexnow = IndexNowPush.new(site.config)
      
      site.posts.docs.each do |post|
        url = "#{site.config['url']}#{post.url}"
        indexnow.push_url(url)
      end
    end
  end
end
