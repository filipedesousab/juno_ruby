# frozen_string_literal: true

module JunoRuby
  class PixResponse < AbstractModel
    attr_reader :id, :payload_in_base64, :image_in_base64

    def id=(val)
      check_type val, :id, String

      @id = val
    end

    def payload_in_base64=(val)
      check_type val, :payload_in_base64, String

      @payload_in_base64 = val
    end

    def image_in_base64=(val)
      check_type val, :image_in_base64, [String, NilClass]

      @image_in_base64 = val
    end
  end
end
