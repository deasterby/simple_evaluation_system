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

ActiveRecord::Schema.define(version: 20150312062908) do

  create_table "domains", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_comment_definitions", force: :cascade do |t|
    t.string   "prompt"
    t.boolean  "required"
    t.boolean  "start_of_section"
    t.integer  "order_index"
    t.integer  "max_len"
    t.integer  "evaluation_section_definition_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "evaluation_comments", force: :cascade do |t|
    t.integer  "evaluation_section_id"
    t.integer  "evaluation_comment_definition_id"
    t.text     "comment"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "evaluation_comments", ["evaluation_comment_definition_id"], name: "index_evaluation_comments_on_evaluation_comment_definition_id", using: :btree
  add_index "evaluation_comments", ["evaluation_section_id"], name: "index_evaluation_comments_on_evaluation_section_id", using: :btree

  create_table "evaluation_definitions", force: :cascade do |t|
    t.string   "definition_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "evaluation_indicators", force: :cascade do |t|
    t.integer  "evaluative_indicator_id"
    t.integer  "evaluation_section_id"
    t.text     "comment"
    t.decimal  "score",                   precision: 4, scale: 1
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "evaluation_indicators", ["evaluation_section_id"], name: "index_evaluation_indicators_on_evaluation_section_id", using: :btree
  add_index "evaluation_indicators", ["evaluative_indicator_id"], name: "index_evaluation_indicators_on_evaluative_indicator_id", using: :btree

  create_table "evaluation_section_definitions", force: :cascade do |t|
    t.integer  "order_index"
    t.string   "prompt"
    t.integer  "evaluation_definition_id"
    t.integer  "sub_domain_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "evaluation_sections", force: :cascade do |t|
    t.integer  "evaluation_id"
    t.integer  "evaluation_section_definition_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "evaluation_sections", ["evaluation_id"], name: "index_evaluation_sections_on_evaluation_id", using: :btree
  add_index "evaluation_sections", ["evaluation_section_definition_id"], name: "index_evaluation_sections_on_evaluation_section_definition_id", using: :btree

  create_table "evaluations", force: :cascade do |t|
    t.datetime "evaluation_date"
    t.integer  "evaluation_definition_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "evaluations", ["evaluation_definition_id"], name: "index_evaluations_on_evaluation_definition_id", using: :btree

  create_table "evaluative_indicators", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sub_domain_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "order_index"
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

  add_foreign_key "evaluation_comments", "evaluation_comment_definitions"
  add_foreign_key "evaluation_comments", "evaluation_sections"
  add_foreign_key "evaluation_indicators", "evaluation_sections"
  add_foreign_key "evaluation_indicators", "evaluative_indicators"
  add_foreign_key "evaluation_sections", "evaluation_section_definitions"
  add_foreign_key "evaluation_sections", "evaluations"
  add_foreign_key "evaluations", "evaluation_definitions"
  add_foreign_key "sub_domains", "domains"
  add_foreign_key "sub_domains", "indicator_average_definitions"
  add_foreign_key "sub_domains", "indicator_score_definitions"
end
