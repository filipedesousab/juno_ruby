# frozen_string_literal: true

module JunoRuby
  class Billing < AbstractModel
    attr_reader :name, :document, :email, :address, :secondary_email, :phone,
                :birth_date, :notify, :delayed

    def name=(val)
      check_type val, :name, String

      @name = val
    end

    def document=(val)
      check_type val, :document, String

      @document = val
    end

    def email=(val)
      check_type val, :email, String

      @email = val
    end

    def address=(val)
      check_type val, :address, Address

      @address = val
    end

    def secondary_email=(val)
      check_type val, :secondary_email, String

      @secondary_email = val
    end

    def phone=(val)
      check_type val, :phone, String

      @phone = val
    end

    def birth_date=(val)
      check_type val, :birth_date, String

      @birth_date = val
    end

    def notify=(val)
      check_type val, :notify, [TrueClass, FalseClass]

      @notify = val
    end

    def delayed=(val)
      check_type val, :delayed, [TrueClass, FalseClass]

      @delayed = val
    end
  end
end
