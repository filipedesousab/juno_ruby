# frozen_string_literal: true

module JunoRuby
  class ChargeResponse < AbstractModel
    attr_reader :id, :code, :reference, :due_date, :link, :checkout_url,
                     :installment_link, :pay_number, :amount, :status, :billet_details,
                     :payments, :pix

    def id=(val)
      check_type val, :id, String

      @id = val
    end

    def code=(val)
      check_type val, :code, Integer

      @code = val
    end

    def reference=(val)
      check_type val, :reference, String

      @reference = val
    end

    def due_date=(val)
      check_type val, :due_date, String

      @due_date = val
    end

    def link=(val)
      check_type val, :link, String

      @link = val
    end

    def checkout_url=(val)
      check_type val, :checkout_url, String

      @checkout_url = val
    end

    def installment_link=(val)
      check_type val, :installment_link, String

      @installment_link = val
    end

    def pay_number=(val)
      check_type val, :pay_number, String

      @pay_number = val
    end

    def amount=(val)
      check_type val, :amount, [Integer, Float]

      @amount = val
    end

    def status=(val)
      check_type val, :status, String

      @status = val
    end

    def billet_details=(val)
      check_type val, :billet_details, BilletDetailsResponse

      @billet_details = val
    end

    def payments=(val)
      check_type val, :payments, Array

      @payments = val
    end

    def pix=(val)
      check_type val, :pix, PixResponse

      @pix = val
    end
  end
end
