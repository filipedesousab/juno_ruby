# frozen_string_literal: true

FactoryBot.define do
  factory :billing, class: "JunoRuby::Billing" do
    name { Faker::Name.name }
    document { Faker::Number.leading_zero_number(11) }
    email { Faker::Internet.email }
    address { build(:address) }
    secondary_email { Faker::Internet.email }
    phone { Faker::Number.number(11) }
    birth_date { Faker::Date.birthday(18).to_s }
    notify { [true, false].sample }
  end
end
