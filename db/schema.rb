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

ActiveRecord::Schema.define(:version => 20140627231206) do

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

  create_table "goals", :force => true do |t|
    t.integer  "goal"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "pact_id"
    t.integer  "week_id"
  end

  add_index "goals", ["pact_id", "user_id", "week_id"], :name => "index_goals_on_pact_id_and_user_id_and_week_id", :unique => true
  add_index "goals", ["pact_id"], :name => "index_pact_id_6"
  add_index "goals", ["user_id"], :name => "index_user_id_5"
  add_index "goals", ["week_id"], :name => "index_week_id_2"

  create_table "messages", :force => true do |t|
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "pact_id"
    t.datetime "date_sent"
    t.string   "photo_url"
  end

  add_index "messages", ["pact_id"], :name => "index_pact_id_4"
  add_index "messages", ["user_id"], :name => "index_user_id"

  create_table "pact_user_relations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "pact_id"
    t.integer  "user_id"
  end

  add_index "pact_user_relations", ["pact_id", "user_id"], :name => "index_pact_user_relations_on_pact_id_and_user_id", :unique => true
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

  add_index "pacts", ["pact_name"], :name => "index_pacts_on_pact_name", :unique => true

  create_table "penalties", :force => true do |t|
    t.integer  "goal",       :default => 0,   :null => false
    t.float    "penalty",    :default => 0.0, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "pact_id"
  end

  add_index "penalties", ["pact_id", "goal"], :name => "index_penalties_on_pact_id_and_goal", :unique => true
  add_index "penalties", ["pact_id"], :name => "index_pact_id"

  create_table "photos", :force => true do |t|
    t.string   "photo_url"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "message_id"
  end

  add_index "photos", ["message_id", "photo_url"], :name => "index_photos_on_message_id_and_photo_url", :unique => true
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "weeks", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "week_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "pact_id"
  end

  add_index "weeks", ["pact_id", "week_number"], :name => "index_weeks_on_pact_id_and_week_number", :unique => true
  add_index "weeks", ["pact_id"], :name => "index_pact_id_3"

  create_table "workout_types", :force => true do |t|
    t.string   "workout_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "workout_id"
  end

  add_index "workout_types", ["workout_id", "workout_type"], :name => "index_workout_types_on_workout_id_and_workout_type", :unique => true
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
    t.integer  "photo_id"
    t.datetime "sent"
  end

  add_index "workouts", ["photo_id"], :name => "index_photo_id"
  add_index "workouts", ["user_id", "photo_id"], :name => "index_workouts_on_user_id_and_photo_id", :unique => true
  add_index "workouts", ["user_id"], :name => "index_user_id_3"
  add_index "workouts", ["week_id"], :name => "index_week_id"

end
