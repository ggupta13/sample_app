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

ActiveRecord::Schema.define(version: 20131030162805) do

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user2_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user2_id", "user_id", "created_at"], name: "index_microposts_on_user2_id_and_user_id_and_created_at"

  create_table "teams", force: true do |t|
    t.integer  "team_id"
    t.integer  "user2_id"
    t.string   "team_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["team_id", "user2_id"], name: "index_teams_on_team_id_and_user2_id"

  create_table "teams_user2s", id: false, force: true do |t|
    t.integer "team_id"
    t.integer "user2_id"
  end

  add_index "teams_user2s", ["team_id", "user2_id"], name: "index_teams_user2s_on_team_id_and_user2_id"

  create_table "user2s", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "user2s", ["email"], name: "index_user2s_on_email", unique: true
  add_index "user2s", ["remember_token"], name: "index_user2s_on_remember_token"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
