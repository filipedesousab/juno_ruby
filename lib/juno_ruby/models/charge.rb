# frozen_string_literal: true

module JunoRuby
  class Charge < AbstractModel
    attr_reader :pix_key, :pix_include_image, :description, :references, :total_amount,
                :amount, :due_date, :installments, :max_overdue_days, :fine, :interest,
                :discount_amount, :discount_days, :payment_types, :payment_advance,
                :fee_schema_token, :split

    def pix_key=(val)
      check_type val, :pix_key, String

      @pix_key = val
    end

    def pix_include_image=(val)
      check_type val, :pix_include_image, [TrueClass, FalseClass]

      @pix_include_image = val
    end

    def description=(val)
      check_type val, :description, String

      @description = val
    end

    def references=(val)
      check_type val, :references, Array

      @references = val
    end

    def total_amount=(val)
      check_type val, :total_amount, [Integer, Float]

      @total_amount = val
    end

    def amount=(val)
      check_type val, :amount, [Integer, Float]

      @amount = val
    end

    def due_date=(val)
      check_type val, :due_date, String

      @due_date = val
    end

    def installments=(val)
      check_type val, :installments, Integer

      @installments = val
    end

    def max_overdue_days=(val)
      check_type val, :max_overdue_days, Integer

      @max_overdue_days = val
    end

    def fine=(val)
      check_type val, :fine, [Integer, Float]

      @fine = val
    end

    def interest=(val)
      check_type val, :interest, [Integer, Float]

      @interest = val
    end

    def discount_amount=(val)
      check_type val, :discount_amount, [Integer, Float]

      @discount_amount = val
    end

    def discount_days=(val)
      check_type val, :discount_days, Integer

      @discount_days = val
    end

    def payment_types=(val)
      check_type val, :payment_types, Array

      @payment_types = val
    end

    def payment_advance=(val)
      check_type val, :payment_advance, [TrueClass, FalseClass]

      @payment_advance = val
    end

    def fee_schema_token=(val)
      check_type val, :fee_schema_token, String

      @fee_schema_token = val
    end

    def split=(val)
      check_type val, :split, Array

      @split = val
    end
  end
end
