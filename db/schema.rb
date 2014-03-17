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

ActiveRecord::Schema.define(version: 20140307134525) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
    t.string   "reference"
  end

  create_table "photos", force: true do |t|
    t.string   "name"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preparations", force: true do |t|
    t.string   "name"
    t.string   "manufacturer"
    t.string   "agent"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "store_id"
    t.integer  "preparation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["preparation_id"], name: "index_relationships_on_preparation_id"
  add_index "relationships", ["store_id", "preparation_id"], name: "index_relationships_on_store_id_and_preparation_id", unique: true
  add_index "relationships", ["store_id"], name: "index_relationships_on_store_id"

  create_table "shares", force: true do |t|
    t.string   "name"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_time"
    t.string   "end_time"
    t.text     "body"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "telephone"
    t.string   "operation_hours"
  end

  create_table "vacancies", force: true do |t|
    t.string   "name"
    t.string   "education"
    t.string   "experience"
    t.string   "employment"
    t.string   "time_schedule"
    t.string   "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
