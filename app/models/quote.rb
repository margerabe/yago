class Quote < ApplicationRecord
  belongs_to :company

  def generate_advice
    {
      deductible_formula: deductible_c,
      coverage_ceiling_formula: coverage_ceiling_c,
      covers: ['legal_expenses']
    }
  end

  private

  def deductible_c
    case deductible
    when 0..4999
      'large'
    when 5000..9999
      'medium'
    when 9999..10_000
      'small'
    end
  end

  def coverage_ceiling_c
    case coverage_ceiling
    when 0..500_000
      'small'
    when 500_000.1000_000
      'large'
    end
  end
end
