# frozen_string_literal: true

FactoryBot.define do
  factory :lead do
    email           { Faker::Internet.email }
    phone_number    { Faker::PhoneNumber.cell_phone_in_e164 }
    address         { Faker::Address.full_address }
    first_name      { Faker::Name.first_name }
    last_name       { Faker::Name.last_name }
  end
end
