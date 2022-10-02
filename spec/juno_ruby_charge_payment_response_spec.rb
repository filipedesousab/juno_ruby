# frozen_string_literal: true

RSpec.describe "JunoRuby ChargePaymentResponse" do
  it "must accept only string in id" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.id = Faker::Lorem.word

    expect { payment_response.id = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in charge_id" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.charge_id = Faker::Lorem.word

    expect { payment_response.charge_id = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in date" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.date = Faker::Lorem.word

    expect { payment_response.date = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in release_date" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.release_date = Faker::Lorem.word
    payment_response.release_date = nil

    expect { payment_response.release_date = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer or float in amount" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.amount = Random.rand(10)
    payment_response.amount = 1.1

    expect { payment_response.amount = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer or float in fee" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.fee = Random.rand(10)
    payment_response.fee = 1.1

    expect { payment_response.fee = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in type" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.type = Faker::Lorem.word

    expect { payment_response.type = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in status" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.status = Faker::Lorem.word

    expect { payment_response.status = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in transaction_id" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.transaction_id = Faker::Lorem.word

    expect { payment_response.transaction_id = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string or nil fail_reason" do
    payment_response = JunoRuby::ChargePaymentResponse.new

    payment_response.fail_reason = Faker::Lorem.word
    payment_response.fail_reason = nil

    expect { payment_response.fail_reason = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end
end
