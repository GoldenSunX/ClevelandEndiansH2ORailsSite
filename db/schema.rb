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

ActiveRecord::Schema.define(version: 20161128000832) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.boolean  "email_list",    default: false
    t.boolean  "teams",         default: false
    t.boolean  "family",        default: false
    t.boolean  "international", default: false
    t.boolean  "well",          default: false
    t.boolean  "mission",       default: false
    t.boolean  "leadership",    default: false
    t.boolean  "community",     default: false
    t.boolean  "baptisms",      default: false
    t.string   "other"
    t.boolean  "journey",       default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "contact_id"
  end

  create_table "personalities", force: :cascade do |t|
    t.string   "gender"
    t.string   "year"
    t.boolean  "greek",         default: false
    t.boolean  "international", default: false
    t.string   "member"
    t.string   "source"
    t.string   "groups"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "contact_id"
  end

  create_table "prayers", force: :cascade do |t|
    t.string   "prayer"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "contact_id"
  end

  create_table "services", force: :cascade do |t|
    t.boolean  "refreshments",   default: false
    t.boolean  "sound",          default: false
    t.boolean  "roadies",        default: false
    t.boolean  "lights",         default: false
    t.boolean  "website",        default: false
    t.boolean  "service_events", default: false
    t.boolean  "usher",          default: false
    t.boolean  "kids",           default: false
    t.boolean  "slides",         default: false
    t.boolean  "service_slices", default: false
    t.string   "music"
    t.string   "other"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "contact_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
