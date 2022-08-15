# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Company, type: :model do
  subject(:company) { build(:company) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(company).to be_valid
    end

    it 'is not valid without annual revenue' do
      company.annual_revenue = nil
      expect(company).not_to be_valid
    end

    it 'is not valid with incorrect enterprise number' do
      company.enterprise_number = '1234567890'
      expect(company).not_to be_valid
    end

    it 'is not valid with incorrect NACEBEL codes' do
      company.nacebel_codes = %w[1264360 11213270 1280]
      expect(company).not_to be_valid
    end

    it 'is not valid with incorrect deductible formula' do
      company.deductible_formula = 'failure'
      expect(company).not_to be_valid
    end

    it 'is not valid with incorrect coverage ceiling formula' do
      company.coverage_ceiling_formula = 'failure'
      expect(company).not_to be_valid
    end
  end
end
