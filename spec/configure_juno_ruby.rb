# frozen_string_literal: true

require "juno_ruby"

module JunoRuby
  class Test
    def self.config
      JunoRuby.configure do |configuration|
        configuration.production = false
        configuration.private_token = ENV["JUNO_PRIVATE_TOKEN"]
        configuration.client_id = ENV["JUNO_CLIENT_ID"]
        configuration.client_secret = ENV["JUNO_CLIENT_SECRET"]
        configuration.pix_key = ENV["JUNO_PIX_KEY"]
      end
    end
  end
end
