class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :annual_revenue, null: false
      t.string :enterprise_number, null: false, limit: 10, unique: true
      t.string :legal_name, null: false
      t.boolean :natural_person, default: false
      t.string :nacebel_codes, default: [], array: true
      t.string :deductible_formula, default: 'medium'
      t.string :coverage_ceiling_formula, default: 'small'

      t.timestamps
    end
  end
end
