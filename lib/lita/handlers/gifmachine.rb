module Lita
  module Handlers
    class Gifmachine < Handler
      config :base_url, type: String, required: true
      config :seekrit, type: String, required: true

      route(/^gifmachine (.+?)(?:\|(.+?))?(?:\|(.+?))?$/, :gifmachine, help: {
        "gifmachine <img> [| <top text> [| <bottom text>]]" => "Posts gif to gifmachine"})

      def gifmachine(response)
        r = http.post(
          "#{config.base_url}/gif",
          url: response.match_data[1],
          who: response.user.name,
          meme_top: response.match_data[2],
          meme_bottom: response.match_data[3],
          seekrit: config.seekrit
        )
        
        response.reply "#{config.base_url} responded with #{r.status.to_s}"
      end
    end

    Lita.register_handler(Gifmachine)
  end
end
