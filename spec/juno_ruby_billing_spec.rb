# frozen_string_literal: true

RSpec.describe "JunoRuby Billing" do
  it "must accept only string in name" do
    billing = JunoRuby::Billing.new

    billing.name = Faker::Lorem.word

    expect { billing.name = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in document" do
    billing = JunoRuby::Billing.new

    billing.document = Faker::Lorem.word

    expect { billing.document = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in email" do
    billing = JunoRuby::Billing.new

    billing.email = Faker::Lorem.word

    expect { billing.email = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in address" do
    billing = JunoRuby::Billing.new
    address = JunoRuby::Address.new

    billing.address = address

    expect { billing.address = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in secondary_email" do
    billing = JunoRuby::Billing.new

    billing.secondary_email = Faker::Lorem.word

    expect { billing.secondary_email = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in phone" do
    billing = JunoRuby::Billing.new

    billing.phone = Faker::Lorem.word

    expect { billing.phone = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in birth_date" do
    billing = JunoRuby::Billing.new

    billing.birth_date = Faker::Lorem.word

    expect { billing.birth_date = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only boolean in notify" do
    billing = JunoRuby::Billing.new

    billing.notify = true
    billing.notify = false

    expect { billing.notify = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only boolean in delayed" do
    billing = JunoRuby::Billing.new

    billing.delayed = true
    billing.delayed = false

    expect { billing.delayed = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must convert to json" do
    billing = build(:billing)

    json = "{\"name\":\"#{billing.name}\",\"document\":\"#{billing.document}\","\
           "\"email\":\"#{billing.email}\","\
           "\"address\":{"\
             "\"street\":\"#{billing.address.street}\",\"number\":\"#{billing.address.number}\","\
             "\"complement\":\"#{billing.address.complement}\",\"neighborhood\":\"#{billing.address.neighborhood}\","\
             "\"city\":\"#{billing.address.city}\",\"state\":\"#{billing.address.state}\","\
             "\"postCode\":\"#{billing.address.post_code}\""\
           "},"\
           "\"secondaryEmail\":\"#{billing.secondary_email}\",\"phone\":\"#{billing.phone}\","\
           "\"birthDate\":\"#{billing.birth_date}\",\"notify\":#{billing.notify}}"

    expect(billing.to_json).to eq(json)
  end

  it "must convert selecteds to json" do
    billing = build(:billing).select(:name, address: [:post_code])

    json = "{\"name\":\"#{billing.name}\","\
           "\"address\":{\"postCode\":\"#{billing.address.post_code}\"}}"

    expect(billing.to_json).to eq(json)
  end
end
