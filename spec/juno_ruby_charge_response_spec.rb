# frozen_string_literal: true

RSpec.describe "JunoRuby ChargeResponse" do
  it "must accept only string in id" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.id = Faker::Lorem.word

    expect { charge_response.id = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer in code" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.code = Random.rand(10)

    expect { charge_response.code = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in reference" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.reference = Faker::Lorem.word

    expect { charge_response.reference = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in due_date" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.due_date = Faker::Lorem.word

    expect { charge_response.due_date = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in link" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.link = Faker::Lorem.word

    expect { charge_response.link = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in checkout_url" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.checkout_url = Faker::Lorem.word

    expect { charge_response.checkout_url = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in installment_link" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.installment_link = Faker::Lorem.word

    expect { charge_response.installment_link = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in pay_number" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.pay_number = Faker::Lorem.word

    expect { charge_response.pay_number = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer or float in amount" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.amount = Random.rand(10)
    charge_response.amount = 1.1

    expect { charge_response.amount = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in status" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.status = Faker::Lorem.word

    expect { charge_response.status = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only BilletDetailsResponse in billet_details" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.billet_details = JunoRuby::BilletDetailsResponse.new

    expect { charge_response.billet_details = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only array in payments" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.payments = [JunoRuby::ChargePaymentResponse.new]

    expect { charge_response.payments = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only PixResponse in pix" do
    charge_response = JunoRuby::ChargeResponse.new

    charge_response.pix = JunoRuby::PixResponse.new

    expect { charge_response.pix = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end
end
