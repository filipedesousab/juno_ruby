# frozen_string_literal: true

require_relative "juno_ruby/configuration"
require_relative "juno_ruby/errors"
require_relative "juno_ruby/version"

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
