# frozen_string_literal: true

class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :email, null: false, unique: true
      t.string :phone_number
      t.string :address
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
