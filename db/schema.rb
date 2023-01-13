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

ActiveRecord::Schema[7.0].define(version: 2023_01_12_150255) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.integer "Phone"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complains", force: :cascade do |t|
    t.string "Name"
    t.string "Phone"
    t.string "Email"
    t.string "HouseType"
    t.integer "HouseNo"
    t.text "complain"

ActiveRecord::Schema[7.0].define(version: 2023_01_12_130011) do
  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "property_type"
    t.string "unit_type"
    t.string "location"
    t.string "image"
    t.integer "amount"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "Name"
    t.integer "HouseNo"
    t.integer "amount"

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.integer "house_no"
    t.integer "phone_no"
    t.string "unit_type"
    t.string "date_in"
    t.integer "balance_due"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
