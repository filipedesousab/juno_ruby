# frozen_string_literal: true

FactoryBot.define do
  factory :charge, class: "JunoRuby::Charge" do
    pix_key { Faker::Lorem.word }
    pix_include_image { [true, false].sample }
    description { Faker::Lorem.word }
    references { [Faker::Lorem.word] }
    total_amount { Random.rand(100.0).round(2) }
    amount { Random.rand(100.0).round(2) }
    due_date { Faker::Lorem.word }
    installments { Random.rand(100) }
    max_overdue_days { Random.rand(100) }
    fine { Random.rand(100.0).round(2) }
    interest { Random.rand(100.0).round(2) }
    discount_amount { Random.rand(100.0).round(2) }
    discount_days { Random.rand(100) }
    payment_types { [Faker::Lorem.word] }
    payment_advance { [true, false].sample }
    fee_schema_token { Faker::Lorem.word }
    split { build_list(:split, 1) }
  end
end
