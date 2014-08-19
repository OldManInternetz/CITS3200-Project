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

ActiveRecord::Schema.define(version: 20140819092419) do

  create_table "current_plants", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "species"
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "synonym"
    t.string   "subspecies"
    t.string   "description"
    t.string   "location_name"
    t.string   "characteristics"
    t.string   "additional_info"
    t.string   "identification"
    t.string   "physical"
    t.string   "general_info"
    t.string   "environment"
    t.string   "horticulture"
    t.string   "architectural_uses"
    t.string   "culture"
    t.string   "conservation"
    t.string   "wildlife"
    t.string   "architectural_info"
    t.string   "discovered_by"
    t.string   "named_by"
    t.boolean  "approved"
    t.integer  "version"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
