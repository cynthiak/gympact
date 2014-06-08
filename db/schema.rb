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

ActiveRecord::Schema.define(:version => 20140608155133) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "chats", :force => true do |t|
    t.text     "chat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "pact_id"
  end

  add_index "chats", ["pact_id"], :name => "index_pact_id_2"

  create_table "messages", :force => true do |t|
    t.text     "message"
    t.date     "date_sent"
    t.time     "time_sent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "chat_id"
    t.integer  "user_id"
  end

  add_index "messages", ["chat_id"], :name => "index_chat_id"
  add_index "messages", ["user_id"], :name => "index_user_id"

  create_table "pact_user_relations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "pact_id"
    t.integer  "user_id"
  end

  add_index "pact_user_relations", ["pact_id"], :name => "index_pact_id_5"
  add_index "pact_user_relations", ["user_id"], :name => "index_user_id_4"

  create_table "pacts", :force => true do |t|
    t.string   "pact_name"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "penalties", :force => true do |t|
    t.integer  "goal_days"
    t.float    "penalty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "pact_id"
  end

  add_index "penalties", ["pact_id"], :name => "index_pact_id"

  create_table "photos", :force => true do |t|
    t.string   "photo_url"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "message_id"
  end

  add_index "photos", ["message_id"], :name => "index_message_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "avatar_url"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "weeks", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "week_number"
    t.integer  "goal_days"
    t.integer  "missed_days"
    t.float    "charge"
    t.float    "paid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "pact_id"
    t.integer  "user_id"
  end

  add_index "weeks", ["pact_id"], :name => "index_pact_id_3"
  add_index "weeks", ["user_id"], :name => "index_user_id_2"

  create_table "workout_types", :force => true do |t|
    t.string   "workout_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "workout_id"
  end

  add_index "workout_types", ["workout_id"], :name => "index_workout_id"

  create_table "workouts", :force => true do |t|
    t.float    "distance"
    t.string   "pace"
    t.string   "duration"
    t.string   "video1"
    t.string   "video2"
    t.string   "workout_name"
    t.text     "workout_description"
    t.boolean  "is_makeup_workout"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "user_id"
    t.integer  "week_id"
  end

  add_index "workouts", ["user_id"], :name => "index_user_id_3"
  add_index "workouts", ["week_id"], :name => "index_week_id"

end
