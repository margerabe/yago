FactoryBot.define do
  factory :company do
    annual_revenue            { rand(0..1000) }
    enterprise_number         { '0' + Faker::Number.number(digits: 9).to_s }
    legal_name                { Faker::Company.name }
    natural_person            { [true, false].sample }
    nacebel_codes             { Constants::Nacebel::CODES.sample }
    deductible_formula        { %w[small medium large].sample }
    coverage_ceiling_formula  { %w[small large].sample }
  end
end