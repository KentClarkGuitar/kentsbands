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

ActiveRecord::Schema.define(version: 2018_07_18_181918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_favorites_on_band_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "performances", force: :cascade do |t|
    t.datetime "showtime"
    t.string "venue"
    t.bigint "band_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_performances_on_band_id"
    t.index ["user_id"], name: "index_performances_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bands", "users"
  add_foreign_key "favorites", "bands"
  add_foreign_key "favorites", "users"
  add_foreign_key "performances", "bands"
  add_foreign_key "performances", "users"
end
