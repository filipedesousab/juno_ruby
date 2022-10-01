# frozen_string_literal: true

RSpec.describe "JunoRuby Charge Resource" do
  it "must expect a correct TypeError error message" do
    abstract_model = JunoRuby::AbstractModel.new

    msg = "In JunoRuby::AbstractModel, the attr must be of type String, "\
          "but it is coming from type Integer"

    expect { abstract_model.check_type(1, "attr", String) }.to(
      raise_error(JunoRuby::Errors::TypeError, msg)
    )
  end

  it "must expect a correct selected values" do
    abstract_model = JunoRuby::AbstractModel.new
    abstract_model.instance_variable_set('@number', Random.rand(10))
    abstract_model.define_singleton_method 'number' do
      @number
    end
    object_abstract_model = JunoRuby::AbstractModel.new
    object_abstract_model.instance_variable_set('@word', Faker::Lorem.word)
    object_abstract_model.define_singleton_method 'word' do
      @word
    end
    object_abstract_model.instance_variable_set('@ok', [true, false].sample)
    object_abstract_model.define_singleton_method 'ok' do
      @ok
    end

    abstract_model.instance_variable_set('@a_object', object_abstract_model)
    abstract_model.define_singleton_method 'a_object' do
      @a_object
    end

    selecteds = abstract_model.select(:number, a_object: %i[word])

    number = selecteds.instance_variable_get('@number')
    word = selecteds.instance_variable_get('@a_object').instance_variable_get('@word')
    ok = selecteds.instance_variable_get('@a_object').instance_variable_get('@ok')
    expect(number).to eq(abstract_model.number)
    expect(word).to eq(abstract_model.a_object.word)
    expect(ok).to eq(nil)
  end

  it "must expect a correct json" do
    abstract_model = JunoRuby::AbstractModel.new
    abstract_model.instance_variable_set('@number', Random.rand(10))
    abstract_model.define_singleton_method 'number' do
      @number
    end
    object_abstract_model = JunoRuby::AbstractModel.new
    object_abstract_model.instance_variable_set('@word', Faker::Lorem.word)
    object_abstract_model.define_singleton_method 'word' do
      @word
    end
    object_abstract_model.instance_variable_set('@ok', [true, false].sample)
    object_abstract_model.define_singleton_method 'ok' do
      @ok
    end

    abstract_model.instance_variable_set('@a_object', object_abstract_model)
    abstract_model.define_singleton_method 'a_object' do
      @a_object
    end

    json = abstract_model.to_json

    expected_json = "{\"number\":#{abstract_model.number},"\
                    "\"aObject\":{\"word\":\"#{abstract_model.a_object.word}\","\
                    "\"ok\":#{abstract_model.a_object.ok}}}"

    expect(json).to eq(expected_json)
  end
end
