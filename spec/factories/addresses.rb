# frozen_string_literal: true

FactoryBot.define do
  factory :address, class: "JunoRuby::Address" do
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    complement { Faker::Lorem.sentence }
    neighborhood { Faker::Lorem.word }
    city { Faker::Address.city }
    state { Faker::Address.state }
    post_code { Faker::Address.postcode }
  end
end
