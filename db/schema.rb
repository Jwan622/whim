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

ActiveRecord::Schema.define(version: 2018_07_19_191917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "hangout_id"
    t.bigint "user_id"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hangout_id"], name: "index_addresses_on_hangout_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "bars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_time"
    t.boolean "byob"
    t.boolean "byof"
    t.bigint "hangout_id"
    t.bigint "user_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_events_on_activity_id"
    t.index ["hangout_id"], name: "index_events_on_hangout_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "hangouts", force: :cascade do |t|
    t.string "hangoutable_type"
    t.bigint "hangoutable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hangoutable_type", "hangoutable_id"], name: "index_hangouts_on_hangoutable_type_and_hangoutable_id"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rank"
    t.text "details"
    t.bigint "slot_id"
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_ratings_on_event_id"
    t.index ["slot_id"], name: "index_ratings_on_slot_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slots", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_slots_on_event_id"
    t.index ["user_id"], name: "index_slots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.date "dob"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "hangouts"
  add_foreign_key "addresses", "users"
  add_foreign_key "events", "activities"
  add_foreign_key "events", "hangouts"
  add_foreign_key "events", "users"
  add_foreign_key "ratings", "events"
  add_foreign_key "ratings", "slots"
  add_foreign_key "ratings", "users"
  add_foreign_key "slots", "events"
  add_foreign_key "slots", "users"
end
