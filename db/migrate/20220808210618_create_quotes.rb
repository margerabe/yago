class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.boolean :available, null: false, default: true
      t.integer :coverage_ceiling, null: false
      t.integer :deductible, null: false
      t.string :quote_id, null: false, unique: true
      t.jsonb :gross_premiums, null: false

      t.timestamps
    end

    add_reference :quotes, :company, foreign_key: true
  end
end
