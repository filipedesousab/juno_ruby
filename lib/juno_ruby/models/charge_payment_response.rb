# frozen_string_literal: true

module JunoRuby
  class ChargePaymentResponse < AbstractModel
    attr_reader :id, :charge_id, :date, :release_date, :amount, :fee, :type,
                     :status, :transaction_id, :fail_reason

    def id=(val)
      check_type val, :id, String

      @id = val
    end

    def charge_id=(val)
      check_type val, :charge_id, String

      @charge_id = val
    end

    def date=(val)
      check_type val, :date, String

      @date = val
    end

    def release_date=(val)
      check_type val, :release_date, [String, NilClass]

      @release_date = val
    end

    def amount=(val)
      check_type val, :amount, [Integer, Float]

      @amount = val
    end

    def fee=(val)
      check_type val, :fee, [Integer, Float]

      @fee = val
    end

    def type=(val)
      check_type val, :type, String

      @type = val
    end

    def status=(val)
      check_type val, :status, String

      @status = val
    end

    def transaction_id=(val)
      check_type val, :transaction_id, String

      @transaction_id = val
    end

    def fail_reason=(val)
      check_type val, :fail_reason, [String, NilClass]

      @fail_reason = val
    end
  end
end
