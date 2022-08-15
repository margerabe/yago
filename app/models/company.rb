# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :lead
  has_many :quotes

  validates :annual_revenue, presence: true
  validates :enterprise_number, format: { with: /\A0.{9}/ }, presence: true
  validates :nacebel_codes, inclusion: { in: Constants::Nacebel::CODES }
  validates :deductible_formula, inclusion: { in: %w[small medium large] }
  validates :coverage_ceiling_formula, inclusion: { in: %w[small large] }
end
