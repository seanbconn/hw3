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

ActiveRecord::Schema[7.1].define(version: 2022_02_10_225503) do
  create_table "entries", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "posted_on"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

#Delete Existing Data
Place.destroy_all


# Places
new_place1 = Place.new
new_place1["name"] = "Malaga, Spain"
new_place1.save

new_place2 = Place.new
new_place2["name"] = "Innsbrook, Austria"
new_place2.save

new_place3 = Place.new
new_place3["name"] = "Kauai, USA"
new_place3.save

new_place4 = Place.new
new_place4["name"] = "Chicago, USA"
new_place4.save

new_place5 = Place.new
new_place5["name"] = "Tokyo, Japan"
new_place5.save

