# frozen_string_literal: true

module JunoRuby
  class Configuration
    attr_accessor :private_token, :client_id, :client_secret, :pix_key
    attr_reader :url, :production

    URL_PRODUCTION = "https://api.juno.com.br/"
    URL_SANDBOX = "https://sandbox.boletobancario.com/api-integration/"

    def initialize
      @production = false
      @url = URL_SANDBOX
      @private_token = nil
      @client_id = nil
      @client_secret = nil
      @pix_key = nil
    end

    def production=(value)
      @production = value
      update_url
    end

    def update_url
      @url = @production ? URL_PRODUCTION : URL_SANDBOX
    end

    def reset
      @production = false
      @url = URL_SANDBOX
      @private_token = nil
      @client_id = nil
      @client_secret = nil
      @pix_key = nil
    end
  end
end
