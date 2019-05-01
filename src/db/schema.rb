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

ActiveRecord::Schema.define(version: 2019_05_01_011859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendees", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_attendees_on_listing_id"
    t.index ["profile_id"], name: "index_attendees_on_profile_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_hobbies", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "hobby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hobby_id"], name: "index_current_hobbies_on_hobby_id"
    t.index ["profile_id"], name: "index_current_hobbies_on_profile_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_favorites_on_listing_id"
    t.index ["profile_id"], name: "index_favorites_on_profile_id"
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_hobbies_on_category_id"
  end

  create_table "interests", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "hobby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hobby_id"], name: "index_interests_on_hobby_id"
    t.index ["profile_id"], name: "index_interests_on_profile_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "hobby_id"
    t.text "description"
    t.string "location"
    t.date "date"
    t.string "city"
    t.integer "equipment"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hobby_id"], name: "index_listings_on_hobby_id"
    t.index ["profile_id"], name: "index_listings_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.string "age_bracket"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendees", "listings"
  add_foreign_key "attendees", "profiles"
  add_foreign_key "current_hobbies", "hobbies"
  add_foreign_key "current_hobbies", "profiles"
  add_foreign_key "favorites", "listings"
  add_foreign_key "favorites", "profiles"
  add_foreign_key "hobbies", "categories"
  add_foreign_key "interests", "hobbies"
  add_foreign_key "interests", "profiles"
  add_foreign_key "listings", "hobbies"
  add_foreign_key "listings", "profiles"
end
