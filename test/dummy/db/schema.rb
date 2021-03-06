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

ActiveRecord::Schema.define(version: 20170512011438) do

  create_table "review_engine_homeowner_review_attributes", force: :cascade do |t|
    t.integer  "homeowner_review_id"
    t.integer  "homeowner_review_sentiment_id"
    t.string   "value"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "review_engine_homeowner_review_sentiments", force: :cascade do |t|
    t.string   "name"
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_engine_homeowner_reviews", force: :cascade do |t|
    t.integer  "homeowner_id"
    t.integer  "rating"
    t.integer  "company_user_id"
    t.integer  "company_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
