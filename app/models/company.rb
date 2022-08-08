class Company < ApplicationRecord
  validates :annual_revenue, presence: true
  validates :enterprise_number, format: { with: /\A0.{9}/ }, presence: true
  validates :deductible_formula, inclusion: { in: %w[small medium large] }
  validates :coverage_ceiling_formula, inclusion: { in: %w[small large] }
end
