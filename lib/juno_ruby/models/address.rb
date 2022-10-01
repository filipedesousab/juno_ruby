# frozen_string_literal: true

module JunoRuby
  class Address < AbstractModel
    attr_reader :street, :number, :complement, :neighborhood, :city, :state, :post_code

    def street=(val)
      check_type val, :street, String

      @street = val
    end

    def number=(val)
      check_type val, :number, String

      @number = val
    end

    def complement=(val)
      check_type val, :complement, String

      @complement = val
    end

    def neighborhood=(val)
      check_type val, :neighborhood, String

      @neighborhood = val
    end

    def city=(val)
      check_type val, :city, String

      @city = val
    end

    def state=(val)
      check_type val, :state, String

      @state = val
    end

    def post_code=(val)
      check_type val, :post_code, String

      @post_code = val
    end
  end
end
