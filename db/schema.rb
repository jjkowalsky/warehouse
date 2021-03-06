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

ActiveRecord::Schema.define(version: 20140119090010) do

  create_table "parts", force: true do |t|
    t.string   "pname"
    t.string   "color"
    t.integer  "weight"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parts", ["city"], name: "index_parts_on_city"
  add_index "parts", ["pname"], name: "index_parts_on_pname"

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "shipments", force: true do |t|
    t.integer  "snum"
    t.integer  "pnum"
    t.integer  "qty"
    t.decimal  "price",      precision: 5, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "lname"
    t.integer  "status"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
  end

  add_index "suppliers", ["city"], name: "index_suppliers_on_city"

end
