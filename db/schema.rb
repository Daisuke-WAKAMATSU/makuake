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

ActiveRecord::Schema.define(version: 20170908114512) do

  create_table "investments", force: :cascade do |t|
    t.integer  "project_id",    limit: 4,     null: false
    t.string   "title",         limit: 255,   null: false
    t.text     "body",          limit: 65535, null: false
    t.integer  "price",         limit: 4,     null: false
    t.string   "image",         limit: 255,   null: false
    t.string   "stock",         limit: 255,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.date     "delivery_date",               null: false
  end

  add_index "investments", ["project_id"], name: "fk_rails_a503dd8531", using: :btree

  create_table "planners", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name",                   limit: 255,                null: false
    t.string   "image",                  limit: 255
    t.text     "location",               limit: 65535
    t.date     "birthday"
  end

  add_index "planners", ["email"], name: "index_planners_on_email", unique: true, using: :btree
  add_index "planners", ["reset_password_token"], name: "index_planners_on_reset_password_token", unique: true, using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "planner_id",    limit: 4,     null: false
    t.string   "main_title",    limit: 255,   null: false
    t.string   "goal_price",    limit: 255,   null: false
    t.date     "end_date",                    null: false
    t.string   "main_image",    limit: 255,   null: false
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

  create_table "supporters", force: :cascade do |t|
    t.integer  "investment_id", limit: 4,   null: false
    t.integer  "user_id",       limit: 4,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name",          limit: 255, null: false
    t.string   "gender",        limit: 255, null: false
    t.date     "birthday",                  null: false
    t.string   "mobile",        limit: 255, null: false
    t.string   "postal_code",   limit: 255, null: false
    t.string   "region",        limit: 255, null: false
    t.string   "city",          limit: 255, null: false
    t.string   "block",         limit: 255, null: false
    t.string   "building",      limit: 255
  end

  add_index "supporters", ["investment_id"], name: "fk_rails_3b7d12eb58", using: :btree
  add_index "supporters", ["user_id"], name: "fk_rails_20f2c914c7", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["context"], name: "index_taggings_on_context", using: :btree
  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy", using: :btree
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree
  add_index "taggings", ["taggable_type"], name: "index_taggings_on_taggable_type", using: :btree
  add_index "taggings", ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type", using: :btree
  add_index "taggings", ["tagger_id"], name: "index_taggings_on_tagger_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "username",               limit: 255
    t.string   "image",                  limit: 255
    t.text     "location",               limit: 65535
    t.date     "birthday"
    t.string   "gender",                 limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "investments", "projects"
  add_foreign_key "projects", "planners"
  add_foreign_key "supporters", "investments"
  add_foreign_key "supporters", "users"
end
