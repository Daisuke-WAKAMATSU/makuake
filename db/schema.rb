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

ActiveRecord::Schema.define(version: 20170817112252) do

  create_table "planners", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "planners", ["email"], name: "index_planners_on_email", unique: true, using: :btree
  add_index "planners", ["reset_password_token"], name: "index_planners_on_reset_password_token", unique: true, using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "planner_id",    limit: 4,     null: false
    t.string   "main_title",    limit: 255,   null: false
    t.integer  "goal_price",    limit: 4,     null: false
    t.date     "end_date",                    null: false
    t.string   "main_image",    limit: 255,   null: false
    t.text     "main_body",     limit: 65535, null: false
    t.text     "introduction",  limit: 65535, null: false
    t.text     "intro_body",    limit: 65535, null: false
    t.string   "intro_image",   limit: 255,   null: false
    t.text     "desc_title",    limit: 65535, null: false
    t.text     "desc_body",     limit: 65535, null: false
    t.string   "desc_image",    limit: 255,   null: false
    t.text     "content_title", limit: 65535, null: false
    t.text     "content_body",  limit: 65535, null: false
    t.string   "content_image", limit: 255,   null: false
    t.text     "feature_title", limit: 65535, null: false
    t.text     "feature_body",  limit: 65535, null: false
    t.string   "feature_image", limit: 255,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "projects", ["planner_id"], name: "fk_rails_757b2fc52b", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "projects", "planners"
end
