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

ActiveRecord::Schema.define(version: 2023_02_04_104656) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "status"
    t.datetime "date_from"
    t.datetime "date_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "from_id"
    t.integer "to_id"
    t.integer "book_id"
    t.index ["book_id"], name: "index_transactions_on_book_id"
    t.index ["from_id"], name: "index_transactions_on_from_id"
    t.index ["to_id"], name: "index_transactions_on_to_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_id"
    t.string "mobile_number"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "books", "users"
  add_foreign_key "transactions", "books"
  add_foreign_key "transactions", "users", column: "from_id"
  add_foreign_key "transactions", "users", column: "to_id"
end
