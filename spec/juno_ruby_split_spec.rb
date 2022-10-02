# frozen_string_literal: true

RSpec.describe "JunoRuby Split" do
  it "must accept only string in recipient_token" do
    split = JunoRuby::Split.new

    split.recipient_token = Faker::Lorem.word

    expect { split.recipient_token = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in amount" do
    split = JunoRuby::Split.new

    split.amount = 10
    split.amount = 0.01

    expect { split.amount = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in percentage" do
    split = JunoRuby::Split.new

    split.percentage = 10
    split.percentage = 0.01

    expect { split.percentage = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only boolean in amount_remainder" do
    split = JunoRuby::Split.new

    split.amount_remainder = true
    split.amount_remainder = false

    expect { split.amount_remainder = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only boolean in charge_fee" do
    split = JunoRuby::Split.new

    split.charge_fee = true
    split.charge_fee = false

    expect { split.charge_fee = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must convert to json" do
    split = build(:split)

    json = "{\"recipientToken\":\"#{split.recipient_token}\","\
           "\"amount\":#{split.amount},"\
           "\"percentage\":#{split.percentage},"\
           "\"amountRemainder\":#{split.amount_remainder},"\
           "\"chargeFee\":#{split.charge_fee}}"

    expect(split.to_json).to eq(json)
  end

  it "must convert selecteds to json" do
    split = build(:split).select(:recipient_token, :amount, :percentage)

    json = "{\"recipientToken\":\"#{split.recipient_token}\","\
           "\"amount\":#{split.amount},"\
           "\"percentage\":#{split.percentage}}"

    expect(split.to_json).to eq(json)
  end
end
