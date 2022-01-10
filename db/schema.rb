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

ActiveRecord::Schema.define(version: 2022_01_05_231513) do

  create_table "article_categories", force: :cascade do |t|
    t.text "title"
    t.text "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.integer "category_id"
    t.text "short_text"
    t.text "slug"
    t.text "full_text", default: "Full content of article"
    t.integer "public", limit: 2, default: 1
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "article_categories_id"
    t.integer "users_id"
    t.index ["article_categories_id"], name: "index_articles_on_article_categories_id"
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["users_id"], name: "index_articles_on_users_id"
  end

  create_table "items", force: :cascade do |t|
    t.float "price"
    t.string "name"
    t.boolean "real"
    t.float "weight"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_items_on_name"
    t.index ["price"], name: "index_items_on_price"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "permissions_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.text "title"
    t.integer "user_id"
    t.integer "users_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_roles_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email", null: false
    t.text "password_digest", null: false
    t.text "first_name", null: false
    t.text "second_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "articles", "article_categories", column: "article_categories_id"
  add_foreign_key "articles", "users", column: "users_id"
  add_foreign_key "roles", "users", column: "users_id"
end
