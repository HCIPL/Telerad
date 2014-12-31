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

ActiveRecord::Schema.define(version: 20141231093319) do

  create_table "comments", force: true do |t|
    t.integer  "study_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.integer  "user_id"
    t.string   "name",       limit: 100, default: "Guest", null: false
    t.string   "gender",     limit: 20,  default: "Guest", null: false
    t.date     "dob"
    t.text     "address"
    t.string   "pincode",    limit: 20,  default: "Guest", null: false
    t.string   "ext_uid",    limit: 20,  default: "Guest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studies", force: true do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.string   "study_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "gateway",         limit: 20,  default: "Guest", null: false
    t.string   "name",            limit: 100, default: "Guest", null: false
    t.text     "address"
    t.string   "gateway_type",    limit: 20,  default: "Guest", null: false
    t.string   "password_digest", limit: 200, default: "Guest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
