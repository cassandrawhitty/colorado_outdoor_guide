# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_10_222107) do

  create_table "areas", force: :cascade do |t|
    t.integer "sport_id"
    t.string "area_name"
    t.string "difficulty_level"
    t.float "popularity_rating"
    t.text "description"
    t.index ["sport_id"], name: "index_areas_on_sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "equipment"
    t.index ["user_id"], name: "index_sports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "given_name"
    t.string "family_name"
    t.string "email"
  end

  add_foreign_key "areas", "sports"
  add_foreign_key "sports", "users"
end
