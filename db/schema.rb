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

ActiveRecord::Schema.define(version: 20150814085031) do

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "referendum_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "questions", ["referendum_id"], name: "index_questions_on_referendum_id"

  create_table "referendums", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voter_referendums", force: :cascade do |t|
    t.integer  "voter_id"
    t.integer  "referendum_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "voter_referendums", ["referendum_id"], name: "index_voter_referendums_on_referendum_id"
  add_index "voter_referendums", ["voter_id"], name: "index_voter_referendums_on_voter_id"

  create_table "voters", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.boolean  "upvote"
    t.integer  "question_id"
    t.integer  "voter_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "votes", ["question_id"], name: "index_votes_on_question_id"
  add_index "votes", ["voter_id"], name: "index_votes_on_voter_id"

end
