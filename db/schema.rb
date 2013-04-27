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

ActiveRecord::Schema.define(:version => 20130427151255) do

  create_table "license_contributions", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.integer  "license_id",                    :null => false
    t.string   "action",                        :null => false
    t.boolean  "tweetable",                     :null => false
    t.boolean  "tweeted",    :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "license_contributions", ["action"], :name => "index_license_contributions_on_action"
  add_index "license_contributions", ["license_id"], :name => "index_license_contributions_on_license_id"
  add_index "license_contributions", ["tweetable"], :name => "index_license_contributions_on_tweetable"
  add_index "license_contributions", ["tweeted"], :name => "index_license_contributions_on_tweeted"
  add_index "license_contributions", ["user_id"], :name => "index_license_contributions_on_user_id"

  create_table "licenses", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "licenses", ["name"], :name => "index_licenses_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
