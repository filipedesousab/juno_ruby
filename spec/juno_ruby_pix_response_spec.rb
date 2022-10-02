# frozen_string_literal: true

RSpec.describe "JunoRuby PixResponse" do
  it "must accept only string in id" do
    pix_response = JunoRuby::PixResponse.new

    pix_response.id = Faker::Lorem.word

    expect { pix_response.id = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in payload_in_base64" do
    pix_response = JunoRuby::PixResponse.new

    pix_response.payload_in_base64 = Faker::Lorem.word

    expect { pix_response.payload_in_base64 = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string or nil image_in_base64" do
    pix_response = JunoRuby::PixResponse.new

    pix_response.image_in_base64 = Faker::Lorem.word
    pix_response.image_in_base64 = nil

    expect { pix_response.image_in_base64 = 10 }.to raise_error(JunoRuby::Errors::TypeError)
  end
end
