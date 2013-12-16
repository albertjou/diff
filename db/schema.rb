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

ActiveRecord::Schema.define(:version => 20131216045723) do

  create_table "bookmarks", :force => true do |t|
    t.integer  "volunteer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bookmarks_non_profits", :id => false, :force => true do |t|
    t.integer "bookmark_id"
    t.integer "non_profit_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "logo"
    t.string   "sector"
    t.string   "name"
    t.string   "linkedIn_profile"
    t.integer  "hours_contributed"
    t.text     "description"
    t.text     "address"
    t.string   "country"
    t.string   "website"
    t.string   "phone"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "competencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "competencies_tasks", :id => false, :force => true do |t|
    t.integer "competency_id"
    t.integer "task_id"
  end

  create_table "competencies_volunteers", :id => false, :force => true do |t|
    t.integer "competency_id"
    t.integer "volunteer_id"
  end

  create_table "non_profits", :force => true do |t|
    t.string   "logo"
    t.text     "mission"
    t.string   "sector"
    t.string   "website"
    t.string   "phone"
    t.text     "address"
    t.string   "country"
    t.string   "name"
    t.string   "linkedIn_profile"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "mobile"
    t.integer  "non_profit_id"
    t.string   "position_title"
    t.string   "profile_picture"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "sponsors", ["email"], :name => "index_sponsors_on_email", :unique => true
  add_index "sponsors", ["reset_password_token"], :name => "index_sponsors_on_reset_password_token", :unique => true

  create_table "tasks", :force => true do |t|
    t.string   "charity_id"
    t.text     "description"
    t.string   "category"
    t.boolean  "confidentiality"
    t.integer  "non_profit_id"
    t.integer  "sponsor_id"
    t.integer  "volunteer_size"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tasks_volunteers", :id => false, :force => true do |t|
    t.integer "task_id"
    t.integer "volunteer_id"
  end

  create_table "volunteers", :force => true do |t|
    t.string   "name"
    t.string   "mobile"
    t.integer  "company_id"
    t.string   "position_title"
    t.string   "profile_picture"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "volunteers", ["email"], :name => "index_volunteers_on_email", :unique => true
  add_index "volunteers", ["reset_password_token"], :name => "index_volunteers_on_reset_password_token", :unique => true

end
