# frozen_string_literal: true

module JunoRuby
  class BilletDetailsResponse < AbstractModel
    attr_reader :bank_account, :our_number, :barcode_number, :portfolio

    def bank_account=(val)
      check_type val, :bank_account, String

      @bank_account = val
    end

    def our_number=(val)
      check_type val, :our_number, String

      @our_number = val
    end

    def barcode_number=(val)
      check_type val, :barcode_number, String

      @barcode_number = val
    end

    def portfolio=(val)
      check_type val, :portfolio, String

      @portfolio = val
    end
  end
end
