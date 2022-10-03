# frozen_string_literal: true

module JunoRuby
  class DefaultResponse < AbstractModel
    class Detail < AbstractModel
      attr_reader :field, :message, :error_code

      def field=(val)
        check_type val, :field, String

        @field = val
      end

      def message=(val)
        check_type val, :message, String

        @message = val
      end

      def error_code=(val)
        check_type val, :error_code, String

        @error_code = val
      end
    end

    attr_reader :timestamp, :status, :error, :details, :path

    def timestamp=(val)
      check_type val, :timestamp, String

      @timestamp = val
    end

    def status=(val)
      check_type val, :status, Integer

      @status = val
    end

    def error=(val)
      check_type val, :error, String

      @error = val
    end

    def details=(val)
      check_type val, :details, Array

      @details = val
    end

    def path=(val)
      check_type val, :path, String

      @path = val
    end
  end
end
