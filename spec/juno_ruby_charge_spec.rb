# frozen_string_literal: true

RSpec.describe "JunoRuby Charge" do
  it "must accept only string in pix_key" do
    split = JunoRuby::Charge.new

    split.pix_key = Faker::Lorem.word

    expect { split.pix_key = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only boolean in pix_include_image" do
    split = JunoRuby::Charge.new

    split.pix_include_image = true
    split.pix_include_image = false

    expect { split.pix_include_image = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in description" do
    split = JunoRuby::Charge.new

    split.description = Faker::Lorem.word

    expect { split.description = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only array in references" do
    split = JunoRuby::Charge.new

    split.references = [Faker::Lorem.word]

    expect { split.references = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in total_amount" do
    split = JunoRuby::Charge.new

    split.total_amount = Random.rand(10)
    split.total_amount = Random.rand(10.0)

    expect { split.total_amount = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in amount" do
    split = JunoRuby::Charge.new

    split.amount = Random.rand(10)
    split.amount = Random.rand(10.0)

    expect { split.amount = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in due_date" do
    split = JunoRuby::Charge.new

    split.due_date = Faker::Lorem.word

    expect { split.due_date = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer in installments" do
    split = JunoRuby::Charge.new

    split.installments = Random.rand(10)

    expect { split.installments = Random.rand(10.0) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer in max_overdue_days" do
    split = JunoRuby::Charge.new

    split.max_overdue_days = Random.rand(10)

    expect { split.max_overdue_days = Random.rand(10.0) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in fine" do
    split = JunoRuby::Charge.new

    split.fine = Random.rand(10)
    split.fine = Random.rand(10.0)

    expect { split.fine = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in interest" do
    split = JunoRuby::Charge.new

    split.interest = Random.rand(10)
    split.interest = Random.rand(10.0)

    expect { split.interest = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer and float in discount_amount" do
    split = JunoRuby::Charge.new

    split.discount_amount = Random.rand(10)
    split.discount_amount = Random.rand(10.0)

    expect { split.discount_amount = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only integer in discount_days" do
    split = JunoRuby::Charge.new

    split.discount_days = Random.rand(10)

    expect { split.discount_days = Random.rand(10.0) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only array in payment_types" do
    split = JunoRuby::Charge.new

    split.payment_types = [Faker::Lorem.word]

    expect { split.payment_types = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only boolean in payment_advance" do
    split = JunoRuby::Charge.new

    split.payment_advance = true
    split.payment_advance = false

    expect { split.payment_advance = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only string in fee_schema_token" do
    split = JunoRuby::Charge.new

    split.fee_schema_token = Faker::Lorem.word

    expect { split.fee_schema_token = Random.rand(10) }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must accept only array in split" do
    split = JunoRuby::Charge.new

    split.split = [Faker::Lorem.word]

    expect { split.split = Faker::Lorem.word }.to raise_error(JunoRuby::Errors::TypeError)
  end

  it "must convert to json" do
    charge = build(:charge)

    json = "{\"pixKey\":\"#{charge.pix_key}\",\"pixIncludeImage\":#{charge.pix_include_image},"\
           "\"description\":\"#{charge.description}\",\"references\":#{charge.references},"\
           "\"totalAmount\":#{charge.total_amount},\"amount\":#{charge.amount},"\
           "\"dueDate\":\"#{charge.due_date}\",\"installments\":#{charge.installments},"\
           "\"maxOverdueDays\":#{charge.max_overdue_days},\"fine\":#{charge.fine},"\
           "\"interest\":#{charge.interest},\"discountAmount\":#{charge.discount_amount},"\
           "\"discountDays\":#{charge.discount_days},\"paymentTypes\":#{charge.payment_types},"\
           "\"paymentAdvance\":#{charge.payment_advance},\"feeSchemaToken\":\"#{charge.fee_schema_token}\","\
           "\"split\":["\
             "{\"recipientToken\":\"#{charge.split[0].recipient_token}\",\"amount\":#{charge.split[0].amount},"\
             "\"percentage\":#{charge.split[0].percentage},\"amountRemainder\":#{charge.split[0].amount_remainder},"\
             "\"chargeFee\":#{charge.split[0].charge_fee}}"\
           "]}"

    expect(charge.to_json).to eq(json)
  end

  it "must convert selecteds to json" do
    charge = build(:charge)
    charge = charge.select(:pix_key, :references, split: %i[recipient_token amount])
    json = "{\"pixKey\":\"#{charge.pix_key}\",\"references\":#{charge.references},"\
           "\"split\":["\
             "{\"recipientToken\":\"#{charge.split[0].recipient_token}\",\"amount\":#{charge.split[0].amount}}"\
           "]}"

    expect(charge.to_json).to eq(json)
  end
end
