# frozen_string_literal: true

FactoryBot.define do
  factory :quote do
    association :company
    available           { [true, false].sample }
    coverage_ceiling    { rand(0..10_000) }
    deductible          { rand(0..10_000) }

    gross_premiums do
      {
        afterDelivery: 53.00,
        publicLiability: 150.00,
        professionalIndemnity: 270.00,
        entrustedObjects: 12.92,
        legalExpenses: 20.87
      }
    end
  end
end
