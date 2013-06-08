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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130530094312) do

  create_table "body_stats", :force => true do |t|
    t.integer  "user_id"
    t.integer  "Height"
    t.integer  "Weight"
    t.integer  "Biceps"
    t.integer  "Waist"
    t.date     "Date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "excercises", :force => true do |t|
    t.string   "name"
    t.integer  "muscle_id"
    t.string   "complexity"
    t.string   "description"
    t.string   "gif_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "muscles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.text     "mesage"
    t.datetime "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "program_to_excersices", :force => true do |t|
    t.integer  "program_id"
    t.integer  "excersice_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "excersice_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "user_programs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.date     "start_date"
    t.datetime "shift"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
