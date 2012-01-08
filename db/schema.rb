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

ActiveRecord::Schema.define(:version => 20120108121520) do

  create_table "attachments", :force => true do |t|
    t.integer  "user_id",                        :default => 0,  :null => false
    t.integer  "created_at",                     :default => 0,  :null => false
    t.string   "filename",   :limit => 100,      :default => "", :null => false
    t.text     "filedata",   :limit => 16777215,                 :null => false
    t.integer  "visible",    :limit => 2,        :default => 0,  :null => false
    t.integer  "counter",    :limit => 2,        :default => 0,  :null => false
    t.datetime "updated_at"
  end

  add_index "attachments", ["counter"], :name => "counter"

  create_table "avatars", :primary_key => "user_id", :force => true do |t|
    t.text     "data",       :limit => 16777215,                 :null => false
    t.integer  "created_at",                     :default => 0,  :null => false
    t.string   "filename",   :limit => 100,      :default => "", :null => false
    t.datetime "updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "name",                :limit => 100, :default => "", :null => false
    t.string   "description",         :limit => 250, :default => "", :null => false
    t.integer  "active",              :limit => 2,   :default => 0,  :null => false
    t.integer  "rank",                :limit => 2,   :default => 0,  :null => false
    t.integer  "posts_count",                        :default => 0,  :null => false
    t.integer  "last_post",                          :default => 0,  :null => false
    t.string   "last_poster",         :limit => 50,  :default => "", :null => false
    t.integer  "threads_count",       :limit => 3,   :default => 0,  :null => false
    t.integer  "allow_posting",       :limit => 1,   :default => 0,  :null => false
    t.integer  "can_contain_threads", :limit => 2,   :default => 0,  :null => false
    t.integer  "parent_id",           :limit => 2,   :default => 0,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string    "name",       :limit => 50, :default => "", :null => false
    t.string    "surname",    :limit => 50, :default => "", :null => false
    t.timestamp "created_at",                               :null => false
    t.datetime  "updated_at"
  end

  create_table "people_attributes", :id => false, :force => true do |t|
    t.integer  "id",         :default => 0, :null => false
    t.text     "attribute"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "thread_id",                         :default => 0,  :null => false
    t.integer  "user_id",                           :default => 0,  :null => false
    t.string   "title",         :limit => 100,      :default => "", :null => false
    t.integer  "created_at",                        :default => 0,  :null => false
    t.integer  "attachment_id", :limit => 2,        :default => 0,  :null => false
    t.text     "content",       :limit => 16777215,                 :null => false
    t.integer  "icon_id",       :limit => 2,        :default => 0,  :null => false
    t.integer  "visible",       :limit => 2,        :default => 0,  :null => false
    t.integer  "last_editor",                       :default => 0,  :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "posts", ["attachment_id"], :name => "attachmentid"
  add_index "posts", ["created_at"], :name => "dateline"
  add_index "posts", ["icon_id"], :name => "iconid"
  add_index "posts", ["thread_id", "user_id"], :name => "threadid"
  add_index "posts", ["user_id"], :name => "userid"

  create_table "topics", :force => true do |t|
    t.string   "title",           :limit => 100, :default => "", :null => false
    t.integer  "last_post",                      :default => 0,  :null => false
    t.integer  "forum_id",        :limit => 2,   :default => 0,  :null => false
    t.integer  "open",            :limit => 1,   :default => 0,  :null => false
    t.integer  "posts_count",                    :default => 0,  :null => false
    t.integer  "original_poster",                :default => 0,  :null => false
    t.string   "last_poster",     :limit => 50,  :default => "", :null => false
    t.datetime "created_at",                                     :null => false
    t.integer  "views",                          :default => 0,  :null => false
    t.integer  "visible",         :limit => 2,   :default => 0,  :null => false
    t.integer  "sticky",          :limit => 2,   :default => 0,  :null => false
    t.datetime "updated_at"
  end

  add_index "topics", ["forum_id", "open", "id"], :name => "forumid_open_threadid"
  add_index "topics", ["forum_id", "visible", "sticky", "last_post"], :name => "forumid"

  create_table "users", :force => true do |t|
    t.string   "username",    :limit => 50,       :default => "",    :null => false
    t.string   "password",    :limit => 50,       :default => "",    :null => false
    t.string   "email",       :limit => 50,       :default => "",    :null => false
    t.string   "homepage",    :limit => 100,      :default => "",    :null => false
    t.string   "icq",         :limit => 20,       :default => "",    :null => false
    t.string   "aim",         :limit => 20,       :default => "",    :null => false
    t.string   "yahoo",       :limit => 20,       :default => "",    :null => false
    t.text     "signature",   :limit => 16777215,                    :null => false
    t.datetime "created_at",                                         :null => false
    t.datetime "last_visit",                                         :null => false
    t.integer  "lastpost",                        :default => 0,     :null => false
    t.integer  "posts_count", :limit => 2,        :default => 0,     :null => false
    t.integer  "avatar_id",   :limit => 2,        :default => 0,     :null => false
    t.date     "birthday",                                           :null => false
    t.boolean  "gender",                          :default => false, :null => false
    t.integer  "time_online",                     :default => 0,     :null => false
    t.datetime "update_at"
  end

  add_index "users", ["username"], :name => "username"

end
