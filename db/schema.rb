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

ActiveRecord::Schema.define(version: 20150205001227) do

  create_table "domains", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "indicator_average_definitions", force: :cascade do |t|
    t.string   "name",        limit: 4000
    t.text     "calculation", limit: 2147483647
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "indicator_score_definitions", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.integer  "min",        limit: 4
    t.integer  "max",        limit: 4
    t.integer  "fractional", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sub_domains", force: :cascade do |t|
    t.string   "name",                            limit: 4000
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "domain_id",                       limit: 4
    t.integer  "indicator_average_definition_id", limit: 4
    t.integer  "indicator_score_definition_id",   limit: 4
  end

  add_index "sub_domains", ["indicator_average_definition_id"], name: "index_sub_domains_on_indicator_average_definition_id"
  add_index "sub_domains", ["indicator_score_definition_id"], name: "index_sub_domains_on_indicator_score_definition_id"

  add_foreign_key "sub_domains", "domains"
  add_foreign_key "sub_domains", "indicator_average_definitions"
  add_foreign_key "sub_domains", "indicator_score_definitions"
end
