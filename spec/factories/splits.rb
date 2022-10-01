# frozen_string_literal: true

FactoryBot.define do
  factory :split, class: "JunoRuby::Split" do
    recipient_token { Faker::Lorem.word }
    amount { Random.rand(100.0).round(2) }
    percentage { Random.rand(100.0).round(2) }
    amount_remainder { [true, false].sample }
    charge_fee { [true, false].sample }
  end
end
