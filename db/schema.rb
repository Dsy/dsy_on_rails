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

ActiveRecord::Schema.define(:version => 0) do

  create_table "forums", :force => true do |t|
    t.string   "name",               :limit => 100, :default => "", :null => false
    t.string   "description",        :limit => 250, :default => "", :null => false
    t.integer  "active",             :limit => 2,   :default => 0,  :null => false
    t.integer  "rank",               :limit => 2,   :default => 0,  :null => false
    t.integer  "topics_count",       :limit => 3,   :default => 0,  :null => false
    t.integer  "allow_posting",      :limit => 1,   :default => 0,  :null => false
    t.integer  "can_contain_topics", :limit => 2,   :default => 0,  :null => false
    t.integer  "parent_id",          :limit => 2,   :default => 0,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "topic_id",                       :default => 0,  :null => false
    t.integer  "user_id",                        :default => 0,  :null => false
    t.string   "title",      :limit => 100,      :default => ""
    t.datetime "created_at",                                     :null => false
    t.text     "content",    :limit => 16777215,                 :null => false
    t.integer  "visible",    :limit => 2,        :default => 0,  :null => false
    t.datetime "updated_at"
  end

  add_index "posts", ["created_at"], :name => "dateline"
  add_index "posts", ["topic_id", "user_id"], :name => "threadid"
  add_index "posts", ["user_id"], :name => "userid"

  create_table "topics", :force => true do |t|
    t.string  "title",       :limit => 100, :default => "", :null => false
    t.integer "forum_id",    :limit => 2,   :default => 0,  :null => false
    t.integer "open",        :limit => 1,   :default => 0,  :null => false
    t.integer "posts_count",                :default => 0,  :null => false
    t.integer "views",                      :default => 0,  :null => false
    t.integer "visible",     :limit => 2,   :default => 0,  :null => false
    t.integer "sticky",      :limit => 2,   :default => 0,  :null => false
  end

  add_index "topics", ["forum_id", "open", "id"], :name => "forumid_open_threadid"
  add_index "topics", ["forum_id", "visible", "sticky"], :name => "forumid"

  create_table "users", :force => true do |t|
    t.string   "username",    :limit => 50,    :default => "",  :null => false
    t.string   "password",    :limit => 50,    :default => "",  :null => false
    t.string   "email",       :limit => 50,    :default => "",  :null => false
    t.string   "homepage",    :limit => 100,   :default => ""
    t.string   "icq",         :limit => 20,    :default => ""
    t.string   "aim",         :limit => 20,    :default => ""
    t.string   "yahoo",       :limit => 20,    :default => ""
    t.string   "signature",   :limit => 10000, :default => ""
    t.datetime "created_at",                                    :null => false
    t.datetime "last_visit"
    t.integer  "posts_count", :limit => 2,     :default => 0,   :null => false
    t.date     "birthday"
    t.string   "gender",      :limit => 20,    :default => "0"
    t.integer  "time_online",                  :default => 0,   :null => false
    t.datetime "updated_at"
  end

  add_index "users", ["username"], :name => "username"

end
