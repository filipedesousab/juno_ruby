# frozen_string_literal: true

require "securerandom"

RSpec.describe "JunoRuby Configuration" do
  it "must have sandbox URL by default" do
    JunoRuby.configuration.reset

    url_is_sandbox = JunoRuby.configuration.url.match?(JunoRuby::Configuration::URL_SANDBOX)
    expect(url_is_sandbox).to eq(true)
  end

  it "has a production" do
    expect(JunoRuby.configuration.production).not_to be nil
  end

  it "must change the production" do
    JunoRuby.configure do |config|
      config.production = true
    end

    expect(JunoRuby.configuration.production).to eq(true)
  end

  it "must change the URL for production when production is true" do
    url_is_production = JunoRuby.configuration.url.match?(JunoRuby::Configuration::URL_PRODUCTION)
    expect(url_is_production).to eq(true)
  end

  it "has a private_token" do
    expect(JunoRuby.configuration.respond_to?(:private_token)).to eq(true)
  end

  it "must change the private_token" do
    random_hash = SecureRandom.hex

    JunoRuby.configure do |config|
      config.private_token = random_hash
    end

    expect(JunoRuby.configuration.private_token).to eq(random_hash)
  end

  it "has a client_id" do
    expect(JunoRuby.configuration.respond_to?(:client_id)).to eq(true)
  end

  it "must change the client_id" do
    random_hash = SecureRandom.hex

    JunoRuby.configure do |config|
      config.client_id = random_hash
    end

    expect(JunoRuby.configuration.client_id).to eq(random_hash)
  end

  it "has a client_secret" do
    expect(JunoRuby.configuration.respond_to?(:client_secret)).to eq(true)
  end

  it "must change the client_secret" do
    random_hash = SecureRandom.hex

    JunoRuby.configure do |config|
      config.client_secret = random_hash
    end

    expect(JunoRuby.configuration.client_secret).to eq(random_hash)
  end

  it "must reset the configuration" do
    JunoRuby.configuration.reset

    reseted = !JunoRuby.configuration.production &&
              JunoRuby.configuration.url.match?(JunoRuby::Configuration::URL_SANDBOX) &&
              JunoRuby.configuration.private_token.nil? &&
              JunoRuby.configuration.client_id.nil? &&
              JunoRuby.configuration.client_secret.nil?

    expect(reseted).to eq(true)
  end
end
