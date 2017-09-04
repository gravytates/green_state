# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170904015644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "co2_estimates", force: :cascade do |t|
    t.decimal "monthly_emittance", precision: 12, scale: 2
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "nat_gas", precision: 12, scale: 2
    t.decimal "fuel_oil", precision: 12, scale: 2
    t.decimal "electricity", precision: 12, scale: 2
    t.string "mode"
    t.integer "miles"
    t.string "alum_re"
    t.string "glass_re"
    t.string "paper_re"
    t.decimal "lamb", precision: 12, scale: 2
    t.decimal "beef", precision: 12, scale: 2
    t.decimal "cheese", precision: 12, scale: 2
    t.decimal "pork", precision: 12, scale: 2
    t.decimal "turkey", precision: 12, scale: 2
    t.decimal "chicken", precision: 12, scale: 2
    t.decimal "tuna", precision: 12, scale: 2
    t.decimal "eggs", precision: 12, scale: 2
    t.decimal "potatoes", precision: 12, scale: 2
    t.decimal "rice", precision: 12, scale: 2
    t.decimal "nuts", precision: 12, scale: 2
    t.decimal "beans", precision: 12, scale: 2
    t.decimal "vegetables", precision: 12, scale: 2
    t.decimal "milk", precision: 12, scale: 2
    t.decimal "fruit", precision: 12, scale: 2
    t.decimal "lentils", precision: 12, scale: 2
    t.string "plastic_re"
  end

  create_table "invasive_species_removal", force: :cascade do |t|
    t.string "species"
    t.integer "cubic ft"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "native_species_planting", force: :cascade do |t|
    t.string "species"
    t.integer "amount"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
