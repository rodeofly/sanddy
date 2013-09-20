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

ActiveRecord::Schema.define(version: 20130920134712) do

  create_table "elements", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.integer  "top"
    t.integer  "left"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elements_ensembles", id: false, force: true do |t|
    t.integer "element_id",  null: false
    t.integer "ensemble_id", null: false
  end

  add_index "elements_ensembles", ["element_id", "ensemble_id"], name: "index_elements_ensembles_on_element_id_and_ensemble_id"
  add_index "elements_ensembles", ["ensemble_id", "element_id"], name: "index_elements_ensembles_on_ensemble_id_and_element_id"

  create_table "ensembles", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.integer  "top"
    t.integer  "left"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ensembles_espaces", id: false, force: true do |t|
    t.integer "ensemble_id", null: false
    t.integer "espace_id",   null: false
  end

  add_index "ensembles_espaces", ["ensemble_id", "espace_id"], name: "index_ensembles_espaces_on_ensemble_id_and_espace_id"
  add_index "ensembles_espaces", ["espace_id", "ensemble_id"], name: "index_ensembles_espaces_on_espace_id_and_ensemble_id"

  create_table "espaces", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.integer  "top"
    t.integer  "left"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

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

end
