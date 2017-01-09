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

ActiveRecord::Schema.define(version: 20170104220605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.boolean  "split_account"
    t.integer  "continent_id"
    t.date     "start_date"
    t.decimal  "total_due",            precision: 8, scale: 2
    t.date     "end_date"
    t.integer  "number_of_guests"
    t.integer  "country_id"
    t.integer  "city_id"
    t.string   "season"
    t.integer  "itinerary",                                    default: [],              array: true
    t.decimal  "budget",               precision: 8, scale: 2
    t.string   "keyword"
    t.integer  "status"
    t.integer  "guests",                                       default: [],              array: true
    t.string   "log_notes"
    t.string   "transportation_notes"
    t.string   "accomodation_notes"
    t.integer  "user_id"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "city_id"
    t.integer  "country_id"
    t.integer  "continent_id"
    t.date     "birthday"
    t.decimal  "amount_payed", precision: 8, scale: 2
    t.integer  "total_due"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "continent_id"
    t.integer  "country_id"
    t.integer  "city_id"
    t.decimal  "latitude",     precision: 9, scale: 6
    t.decimal  "longitude",    precision: 9, scale: 6
    t.string   "address"
    t.string   "phone"
    t.integer  "item_type"
    t.string   "image_url"
    t.string   "budget"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer  "item_id"
    t.date     "date"
    t.time     "time_start"
    t.time     "time_end"
    t.decimal  "price",            precision: 8, scale: 2
    t.string   "image_url"
    t.string   "reservation_code"
    t.string   "description"
    t.boolean  "payment_status"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "trip_templates", force: :cascade do |t|
    t.integer  "items",      default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_type"
    t.integer  "country_id"
    t.integer  "city_id"
    t.integer  "continent_id"
    t.string   "phone"
    t.date     "date_of_birth"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
