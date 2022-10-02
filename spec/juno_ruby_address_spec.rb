# frozen_string_literal: true

RSpec.describe "JunoRuby Address" do
  it "must accept only string in street" do
    address = JunoRuby::Address.new

    address.street = Faker::Lorem.word

    expect { address.street = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in number" do
    address = JunoRuby::Address.new

    address.number = Faker::Lorem.word

    expect { address.number = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in complement" do
    address = JunoRuby::Address.new

    address.complement = Faker::Lorem.word

    expect { address.complement = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in neighborhood" do
    address = JunoRuby::Address.new

    address.neighborhood = Faker::Lorem.word

    expect { address.neighborhood = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in city" do
    address = JunoRuby::Address.new

    address.city = Faker::Lorem.word

    expect { address.city = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in state" do
    address = JunoRuby::Address.new

    address.state = Faker::Lorem.word

    expect { address.state = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in post_code" do
    address = JunoRuby::Address.new

    address.post_code = Faker::Lorem.word

    expect { address.post_code = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must convert to json" do
    address = build(:address)

    json = "{\"street\":\"#{address.street}\",\"number\":\"#{address.number}\","\
           "\"complement\":\"#{address.complement}\",\"neighborhood\":\"#{address.neighborhood}\","\
           "\"city\":\"#{address.city}\",\"state\":\"#{address.state}\","\
           "\"postCode\":\"#{address.post_code}\"}"

    expect(address.to_json).to eq(json)
  end

  it "must convert selecteds to json" do
    address = build(:address).select(:street, :number)

    json = "{\"street\":\"#{address.street}\",\"number\":\"#{address.number}\"}"

    expect(address.to_json).to eq(json)
  end
end
