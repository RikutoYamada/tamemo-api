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

ActiveRecord::Schema[7.0].define(version: 2023_07_24_135423) do
  create_table "expenses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "detail"
    t.integer "amount"
    t.date "expended_at"
    t.bigint "user_id"
    t.bigint "sub_expense_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_expense_category_id"], name: "index_expenses_on_sub_expense_category_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "sub_expense_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "main_expense_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sub_expense_categories_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expenses", "sub_expense_categories"
  add_foreign_key "expenses", "users"
  add_foreign_key "sub_expense_categories", "users"
end
