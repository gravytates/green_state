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

ActiveRecord::Schema.define(version: 20170903220342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "co2_estimates", force: :cascade do |t|
    t.integer "monthly_emittance"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nat_gas"
    t.integer "fuel_oil"
    t.integer "electricity"
    t.string "mode"
    t.integer "miles"
    t.boolean "alum_re"
    t.boolean "glass_re"
    t.boolean "paper_re"
    t.integer "lamb"
    t.integer "beef"
    t.integer "cheese"
    t.integer "pork"
    t.integer "turkey"
    t.integer "chicken"
    t.integer "tuna"
    t.integer "eggs"
    t.integer "potatoes"
    t.integer "rice"
    t.integer "nuts"
    t.integer "beans"
    t.integer "vegetables"
    t.integer "milk"
    t.integer "fruit"
    t.integer "lentils"
    t.boolean "plastic_re"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
