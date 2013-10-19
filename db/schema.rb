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

ActiveRecord::Schema.define(version: 20131019215034) do

  create_table "categories", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_images", force: true do |t|
    t.integer  "item_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_images", ["item_id"], name: "index_item_images_on_item_id", using: :btree

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price_cents",    default: 0,     null: false
    t.string   "price_currency", default: "USD", null: false
    t.integer  "owner_id"
    t.integer  "borrower_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["borrower_id"], name: "index_items_on_borrower_id", using: :btree
  add_index "items", ["owner_id"], name: "index_items_on_owner_id", using: :btree

  create_table "items_categories", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "category_id"
  end

  add_index "items_categories", ["category_id", "item_id"], name: "index_items_categories_on_category_id_and_item_id", using: :btree
  add_index "items_categories", ["category_id"], name: "index_items_categories_on_category_id", using: :btree
  add_index "items_categories", ["item_id"], name: "index_items_categories_on_item_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

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
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
