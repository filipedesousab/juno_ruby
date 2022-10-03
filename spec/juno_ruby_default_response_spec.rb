# frozen_string_literal: true

RSpec.describe "JunoRuby DefaultResponse" do
  it "must accept only string in timestamp" do
    default_response = JunoRuby::DefaultResponse.new

    default_response.timestamp = Faker::Lorem.word

    expect { default_response.timestamp = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer in status" do
    default_response = JunoRuby::DefaultResponse.new

    default_response.status = Random.rand(10)

    expect { default_response.status = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in error" do
    default_response = JunoRuby::DefaultResponse.new

    default_response.error = Faker::Lorem.word

    expect { default_response.error = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in details" do
    default_response = JunoRuby::DefaultResponse.new

    default_response.details = []

    expect { default_response.details = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in path" do
    default_response = JunoRuby::DefaultResponse.new

    default_response.path = Faker::Lorem.word

    expect { default_response.path = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in detail field" do
    default_response_detail = JunoRuby::DefaultResponse::Detail.new

    default_response_detail.field = Faker::Lorem.word

    expect { default_response_detail.field = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in detail message" do
    default_response_detail = JunoRuby::DefaultResponse::Detail.new

    default_response_detail.message = Faker::Lorem.word

    expect { default_response_detail.message = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in detail error_code" do
    default_response_detail = JunoRuby::DefaultResponse::Detail.new

    default_response_detail.error_code = Faker::Lorem.word

    expect { default_response_detail.error_code = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end
end
