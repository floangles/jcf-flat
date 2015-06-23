# encoding: UTF-8
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




ActiveRecord::Schema.define(version: 20150623141746) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "guests"
    t.boolean  "approved"
    t.integer  "guest_rating"
    t.text     "guest_comment"
    t.integer  "host_rating"
    t.text     "host_comment"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false

    t.datetime "checkin"
    t.datetime "checkout"
    t.string   "status"

    t.date     "checkin"
    t.date     "checkout"

  end

  add_index "bookings", ["place_id"], name: "index_bookings_on_place_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "zipcode"
    t.string   "city"
    t.text     "description"
    t.integer  "capacity"
    t.integer  "rooms"
    t.integer  "beds"
    t.string   "type"
    t.integer  "rate"
    t.boolean  "available"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "places", ["user_id"], name: "index_places_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "address"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "user_name"
    t.string   "sex"
    t.text     "description"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "profile_picture"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "places"
  add_foreign_key "bookings", "users"
  add_foreign_key "places", "users"
end
