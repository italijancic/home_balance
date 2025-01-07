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

ActiveRecord::Schema[8.0].define(version: 2025_01_07_022329) do
  create_table "balance_items", force: :cascade do |t|
    t.integer "balance_id", null: false
    t.integer "category_id", null: false
    t.integer "creator_id", null: false
    t.integer "payer_id", null: false
    t.integer "participant_id", null: false
    t.decimal "amount"
    t.integer "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["balance_id"], name: "index_balance_items_on_balance_id"
    t.index ["category_id"], name: "index_balance_items_on_category_id"
    t.index ["creator_id"], name: "index_balance_items_on_creator_id"
    t.index ["currency_id"], name: "index_balance_items_on_currency_id"
    t.index ["participant_id"], name: "index_balance_items_on_participant_id"
    t.index ["payer_id"], name: "index_balance_items_on_payer_id"
  end

  create_table "balances", force: :cascade do |t|
    t.integer "creator_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "creation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_balances_on_creator_id"
  end

  create_table "balances_users", id: false, force: :cascade do |t|
    t.integer "balance_id", null: false
    t.integer "user_id", null: false
    t.index ["balance_id", "user_id"], name: "index_balances_users_on_balance_id_and_user_id"
    t.index ["user_id", "balance_id"], name: "index_balances_users_on_user_id_and_balance_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.decimal "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "balance_items", "balances"
  add_foreign_key "balance_items", "categories"
  add_foreign_key "balance_items", "currencies"
  add_foreign_key "balance_items", "users", column: "creator_id"
  add_foreign_key "balance_items", "users", column: "participant_id"
  add_foreign_key "balance_items", "users", column: "payer_id"
  add_foreign_key "balances", "users", column: "creator_id"
end
