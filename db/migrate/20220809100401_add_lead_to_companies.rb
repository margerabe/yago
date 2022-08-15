# frozen_string_literal: true

class AddLeadToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_reference :companies, :lead, foreign_key: true
  end
end
