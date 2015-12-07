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

ActiveRecord::Schema.define(version: 20151207032619) do

  create_table "corporates", force: :cascade do |t|
    t.string   "corp_name"
    t.integer  "corp_ind"
    t.integer  "corp_reg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", force: :cascade do |t|
    t.string   "industry_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interaction_types", force: :cascade do |t|
    t.string   "int_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", force: :cascade do |t|
    t.integer  "rec_id"
    t.integer  "int_type"
    t.integer  "int_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "school_affinity"
    t.text     "user_comment"
    t.string   "rec_name"
  end

  create_table "note_templates", force: :cascade do |t|
    t.integer  "interaction_type"
    t.integer  "school_affinity"
    t.integer  "min_score"
    t.integer  "max_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "industry_id"
    t.text     "template"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string   "rec_name"
    t.integer  "rec_corp"
    t.integer  "rec_school"
    t.string   "rec_email"
    t.string   "rec_mobile"
    t.string   "rec_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "school_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_notes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "interaction_id"
    t.integer  "note_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "username"
    t.integer  "user_school"
    t.integer  "pri_ind"
    t.integer  "pri_reg"
    t.integer  "oth_ind"
    t.integer  "oth_reg"
    t.integer  "prev_ind"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
