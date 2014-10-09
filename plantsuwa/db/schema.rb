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

ActiveRecord::Schema.define(version: 20141009120338) do

  create_table "climates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_linking_climates", force: true do |t|
    t.integer  "current_plant_id"
    t.integer  "climate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_linking_flower_colours", force: true do |t|
    t.integer  "current_plant_id"
    t.integer  "flower_colour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_linking_leaf_colours", force: true do |t|
    t.integer  "current_plant_id"
    t.integer  "leaf_colour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_linking_origins", force: true do |t|
    t.integer  "current_plant_id"
    t.integer  "origin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_linking_sizes", force: true do |t|
    t.integer  "current_plant_id"
    t.integer  "size_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_linking_soil_types", force: true do |t|
    t.integer  "current_plant_id"
    t.integer  "soil_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_photos", force: true do |t|
    t.integer  "current_plant_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "current_plants", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "genus"
    t.string   "species"
    t.string   "subspecies"
    t.string   "family"
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "synonym"
    t.string   "description"
    t.string   "location_1"
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
    t.integer  "version",                    default: 1
    t.integer  "plant_id"
    t.integer  "submitted_by"
    t.integer  "edited_by"
    t.string   "display_photo_file_name"
    t.string   "display_photo_content_type"
    t.integer  "display_photo_file_size"
    t.datetime "display_photo_updated_at"
    t.string   "display_photo_description"
    t.integer  "type_id"
    t.string   "name"
    t.float    "lat1"
    t.float    "lng1"
    t.float    "lat2"
    t.float    "lng2"
    t.float    "lat3"
    t.float    "lng3"
    t.float    "lat4"
    t.float    "lng4"
    t.float    "lat5"
    t.float    "lng5"
    t.float    "lat6"
    t.float    "lng6"
    t.string   "location_2"
    t.string   "location_3"
    t.string   "location_4"
    t.string   "location_5"
    t.string   "location_6"
  end

  create_table "favourites", force: true do |t|
    t.integer  "user_id"
    t.integer  "current_plant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favourites", ["current_plant_id"], name: "index_favourites_on_current_plant_id"
  add_index "favourites", ["user_id", "current_plant_id"], name: "index_favourites_on_user_id_and_current_plant_id", unique: true
  add_index "favourites", ["user_id"], name: "index_favourites_on_user_id"

  create_table "flower_colours", force: true do |t|
    t.string   "name"
    t.string   "alt_colour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaf_colours", force: true do |t|
    t.string   "name"
    t.string   "alt_colour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.integer  "user_id"
    t.integer  "current_plant_id"
    t.string   "action"
    t.string   "changes_made"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origins", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "soil_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "trusted",         default: false
    t.boolean  "admin",           default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
