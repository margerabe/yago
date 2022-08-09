# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_09_095606) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.integer "annual_revenue", null: false
    t.string "enterprise_number", limit: 10, null: false
    t.string "legal_name", null: false
    t.boolean "natural_person", default: false
    t.string "nacebel_codes", default: [], array: true
    t.string "deductible_formula", default: "medium"
    t.string "coverage_ceiling_formula", default: "small"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string "email", null: false
    t.string "phone_number"
    t.string "address"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.boolean "available", default: true, null: false
    t.integer "coverage_ceiling", null: false
    t.integer "deductible", null: false
    t.string "quote_id", null: false
    t.json "gross_premiums", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_quotes_on_company_id"
  end

  add_foreign_key "quotes", "companies"
end
