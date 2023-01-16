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

ActiveRecord::Schema[7.0].define(version: 2023_01_16_085812) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.bigint "Phone"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complains", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.string "Email"
    t.string "HouseType"
    t.text "complain"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.bigint "phone"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "housecomplains", force: :cascade do |t|
    t.string "Name"
    t.bigint "Phone"
    t.string "Email"
    t.string "HouseType"
    t.text "complain"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "Name"
    t.integer "amount"
    t.bigint "PhoneNumber"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "propertyName"
    t.string "property_type"
    t.string "unit_type"
    t.string "location"
    t.string "image"
    t.integer "amount"
    t.boolean "wifi"
    t.boolean "shower"
    t.boolean "balcony"
    t.boolean "parking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "HouseType"
    t.bigint "phone_no"
    t.string "unit_type"
    t.string "date_in"
    t.integer "rent_payable"
    t.text "password_digest"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
