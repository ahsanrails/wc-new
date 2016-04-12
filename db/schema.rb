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

ActiveRecord::Schema.define(version: 20160412141401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cdns", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "p_listings", force: :cascade do |t|
    t.string   "display_type"
    t.string   "use_type"
    t.string   "property_type"
    t.string   "title"
    t.string   "street"
    t.string   "house_no"
    t.string   "city_place"
    t.string   "zip_code"
    t.string   "flat_size"
    t.string   "room"
    t.string   "bathroom"
    t.string   "total_rent"
    t.string   "date"
    t.string   "description"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "p_image_file_name"
    t.string   "p_image_content_type"
    t.integer  "p_image_file_size"
    t.datetime "p_image_updated_at"
  end

  create_table "pdetails", force: :cascade do |t|
    t.string   "ad_type"
    t.string   "property_name"
    t.string   "property_type"
    t.string   "location"
    t.string   "city"
    t.string   "area"
    t.string   "rent"
    t.string   "bathroom"
    t.string   "bedroom"
    t.string   "size"
    t.string   "price"
    t.string   "owner_name"
    t.string   "property_status"
    t.date     "add_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "propertyimage_file_name"
    t.string   "propertyimage_content_type"
    t.integer  "propertyimage_file_size"
    t.datetime "propertyimage_updated_at"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_images", force: :cascade do |t|
    t.integer  "p_listing_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_file_file_name"
    t.string   "image_file_content_type"
    t.integer  "image_file_file_size"
    t.datetime "image_file_updated_at"
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "full_name"
    t.string   "company"
    t.string   "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "card_token"
    t.string   "email"
    t.integer  "plan_id"
    t.integer  "user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "p_type"
    t.string   "bathroom"
    t.string   "bedroom"
    t.string   "rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
end
