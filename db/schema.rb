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


ActiveRecord::Schema.define(version: 2018_11_05_141904) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "booking_statuses", force: :cascade do |t|
    t.date "date"
    t.string "status"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_statuses_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.text "description"
    t.bigint "booking_status_id"
    t.integer "price"
    t.integer "hours"

  create_table "bookings", force: :cascade do |t|
    t.text "description"
    t.string "status"
    t.integer "price"
    t.integer "hours"
    t.date "date"
    t.string "city"
    t.string "street"
    t.string "number"
    t.integer "zip_code"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_status_id"], name: "index_bookings_on_booking_status_id"
  end

  create_table "qas", force: :cascade do |t|
    t.text "question"
    t.text "answer"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_qas_on_booking_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "service_rating"
    t.integer "provider_rating"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.boolean "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_buyers_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.boolean "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end


  add_foreign_key "booking_statuses", "bookings"
  add_foreign_key "qas", "bookings"
  add_foreign_key "reviews", "bookings"

  add_foreign_key "buyers", "users"
  add_foreign_key "providers", "users"

end
