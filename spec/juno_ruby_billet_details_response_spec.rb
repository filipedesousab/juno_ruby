# frozen_string_literal: true

RSpec.describe "JunoRuby BilletDetailsResponse" do
  it "must accept only string in bank_account" do
    billet_details_response = JunoRuby::BilletDetailsResponse.new

    billet_details_response.bank_account = Faker::Lorem.word

    expect { billet_details_response.bank_account = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in our_number" do
    billet_details_response = JunoRuby::BilletDetailsResponse.new

    billet_details_response.our_number = Faker::Lorem.word

    expect { billet_details_response.our_number = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in barcode_number" do
    billet_details_response = JunoRuby::BilletDetailsResponse.new

    billet_details_response.barcode_number = Faker::Lorem.word

    expect { billet_details_response.barcode_number = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in portfolio" do
    billet_details_response = JunoRuby::BilletDetailsResponse.new

    billet_details_response.portfolio = Faker::Lorem.word

    expect { billet_details_response.portfolio = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end
end
