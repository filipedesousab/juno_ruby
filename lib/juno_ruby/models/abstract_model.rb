# frozen_string_literal: true

require "json"

module JunoRuby
  class AbstractModel
    def check_type(val, attr, clazz)
      types = clazz.is_a?(Array) ? clazz : [clazz]
      msg = "In #{self.class}, the #{attr} must be of type #{types.join(" | ")}, "\
            "but it is coming from type #{val.class}"

      raise JunoRuby::Errors::TypeError, msg unless types.include?(val.class)
    end

    # rubocop:disable Metrics/AbcSize, Metrics/MethodLength, Metrics/PerceivedComplexity
    def select(*req_attrs)
      hash_attrs = {}
      selected_attributes = []

      req_attrs.each do |attr|
        if attr.is_a? Hash
          key = attr.keys[0]
          hash_attrs[key] = attr[key]
          selected_attributes << key
        else
          selected_attributes << attr
        end
      end

      model = self.class.new

      selected_attributes.each do |attr|
        instance_var = instance_variable_get(:"@#{attr}")
        value = if hash_attrs.include?(attr)
                  if instance_var.is_a?(Array)
                    instance_var.map { |item| item.select(*hash_attrs[attr]) }
                  else
                    instance_var.select(*hash_attrs[attr])
                  end
                else
                  instance_var
                end

        model.instance_variable_set(:"@#{attr}", value)
      end

      model
    end
    # rubocop:enable Metrics/AbcSize, Metrics/MethodLength, Metrics/PerceivedComplexity

    def to_json(*_args)
      attrs = instance_variables.map { |var| var[1..-1].to_sym }

      hash = attrs.each_with_object({}) do |attr, acc|
        value = send(attr)
        json_attr = convert_attr_to_json attr

        acc[json_attr] = value unless value.nil?

        acc
      end

      hash.to_json
    end

    private

    def convert_attr_to_json(attr)
      attr.to_s.split("_").map.with_index { |x, i| i.positive? ? x.capitalize : x }.join.to_sym
    end
  end
end
