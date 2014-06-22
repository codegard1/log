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

ActiveRecord::Schema.define(version: 20140622202057) do

  create_table "asset_types", force: true do |t|
    t.string   "title"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", force: true do |t|
    t.integer  "asset_type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset_tag"
  end

  add_index "assets", ["asset_tag"], name: "index_assets_on_asset_tag"
  add_index "assets", ["asset_type_id"], name: "index_assets_on_asset_type_id"
  add_index "assets", ["user_id"], name: "index_assets_on_user_id"

  create_table "move_types", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.integer  "move_type_id"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moves", ["asset_id"], name: "index_moves_on_asset_id"
  add_index "moves", ["move_type_id"], name: "index_moves_on_move_type_id"
  add_index "moves", ["user_id"], name: "index_moves_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
