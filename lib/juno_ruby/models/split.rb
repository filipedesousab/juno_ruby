# frozen_string_literal: true

module JunoRuby
  class Split < AbstractModel
    attr_reader :recipient_token, :amount, :percentage, :amount_remainder, :charge_fee

    def recipient_token=(val)
      check_type val, :recipient_token, String

      @recipient_token = val
    end

    def amount=(val)
      check_type val, :amount, [Integer, Float]

      @amount = val
    end

    def percentage=(val)
      check_type val, :percentage, [Integer, Float]

      @percentage = val
    end

    def amount_remainder=(val)
      check_type val, :amount_remainder, [TrueClass, FalseClass]

      @amount_remainder = val
    end

    def charge_fee=(val)
      check_type val, :charge_fee, [TrueClass, FalseClass]

      @charge_fee = val
    end
  end
end
