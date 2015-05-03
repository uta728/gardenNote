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

ActiveRecord::Schema.define(version: 20150503112213) do

  create_table "announcements", force: true do |t|
    t.integer  "user_id"
    t.string   "subject",    limit: 50
    t.string   "category",   limit: 1
    t.text     "detail",     limit: 1000
    t.boolean  "unread"
    t.time     "term_s"
    t.time     "term_e"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calendars", force: true do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "plant_id"
    t.integer  "work_id"
    t.integer  "layout_id"
    t.string   "title",      limit: 20
    t.string   "icon"
    t.string   "color"
    t.text     "detail",     limit: 1000
    t.boolean  "is_plan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diarys", force: true do |t|
    t.integer  "user_id"
    t.date     "write_date"
    t.string   "title"
    t.text     "contents",   limit: 4000
    t.boolean  "fixed"
    t.text     "tags",       limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layouts", force: true do |t|
    t.integer  "user_id"
    t.integer  "section_id"
    t.string   "group"
    t.string   "name"
    t.string   "class"
    t.string   "background"
    t.string   "border"
    t.string   "z_index"
    t.integer  "size"
    t.string   "point"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.string   "name"
    t.string   "name_en"
    t.string   "order"
    t.string   "family"
    t.string   "genus"
    t.string   "species"
    t.string   "category1"
    t.string   "category2"
    t.string   "icon"
    t.string   "seeds_s_c"
    t.string   "seeds_e_c"
    t.string   "seeds_s_m"
    t.string   "seeds_e_m"
    t.string   "seeds_s_w"
    t.string   "seeds_e_w"
    t.string   "planting_s_c"
    t.string   "planting_e_c"
    t.string   "planting_s_m"
    t.string   "planting_e_m"
    t.string   "planting_s_w"
    t.string   "planting_e_w"
    t.string   "harvest_s_c"
    t.string   "harvest_e_c"
    t.string   "harvest_s_m"
    t.string   "harvest_e_m"
    t.string   "harvest_s_w"
    t.string   "harvest_e_w"
    t.boolean  "replant_failure"
    t.string   "replant_failure_term"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_settings", force: true do |t|
    t.integer  "user_id"
    t.string   "func"
    t.boolean  "is_public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.integer  "user_id"
    t.string   "name",               limit: 30
    t.string   "around_coordinates"
    t.float    "scale"
    t.float    "area"
    t.text     "note",               limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_auths", force: true do |t|
    t.integer  "user_id"
    t.integer  "auth_level", limit: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_infos", force: true do |t|
    t.integer  "user_id"
    t.string   "name",          limit: 20
    t.string   "sex",           limit: 1
    t.date     "birthday"
    t.string   "area"
    t.string   "area_category", limit: 1
    t.date     "begin_date"
    t.text     "profile",       limit: 1000
    t.text     "weblog_url",    limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "works", force: true do |t|
    t.integer  "plant_id"
    t.string   "name",       limit: 50
    t.string   "timing"
    t.text     "detail",     limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
