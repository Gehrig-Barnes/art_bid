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

ActiveRecord::Schema[7.0].define(version: 2022_10_29_165057) do
  create_table "artists", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.boolean "purchase"
    t.integer "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_arts_on_artist_id"
  end

  create_table "bids", force: :cascade do |t|
    t.integer "price"
    t.integer "user_id", null: false
    t.integer "art_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_bids_on_art_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.integer "art_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_reviews_on_art_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "arts", "artists"
  add_foreign_key "bids", "arts"
  add_foreign_key "bids", "users"
  add_foreign_key "reviews", "arts"
  add_foreign_key "reviews", "users"
end
