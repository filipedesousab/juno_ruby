# frozen_string_literal: true

require_relative "juno_ruby/version"
require_relative "juno_ruby/configuration"

module JunoRuby
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end

  class Error < StandardError; end
end
