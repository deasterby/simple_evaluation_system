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

ActiveRecord::Schema.define(version: 20150206174933) do

  create_table "domains", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluative_indicators", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sub_domain_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "evaluative_indicators", ["sub_domain_id"], name: "index_evaluative_indicators_on_sub_domain_id", using: :btree

  create_table "indicator_average_definitions", force: :cascade do |t|
    t.string   "name"
    t.text     "calculation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "indicator_ratings", force: :cascade do |t|
    t.integer "evaluative_indicator_id"
    t.string  "title"
    t.decimal "value",                   precision: 4, scale: 1
    t.text    "description"
  end

  add_index "indicator_ratings", ["evaluative_indicator_id"], name: "index_indicator_ratings_on_evaluative_indicator_id", using: :btree

  create_table "indicator_score_definitions", force: :cascade do |t|
    t.string   "name"
    t.integer  "min"
    t.integer  "max"
    t.integer  "fractional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_domains", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "domain_id"
    t.integer  "indicator_average_definition_id"
    t.integer  "indicator_score_definition_id"
  end

  add_index "sub_domains", ["indicator_average_definition_id"], name: "index_sub_domains_on_indicator_average_definition_id", using: :btree
  add_index "sub_domains", ["indicator_score_definition_id"], name: "index_sub_domains_on_indicator_score_definition_id", using: :btree

  add_foreign_key "sub_domains", "domains"
  add_foreign_key "sub_domains", "indicator_average_definitions"
  add_foreign_key "sub_domains", "indicator_score_definitions"
end
