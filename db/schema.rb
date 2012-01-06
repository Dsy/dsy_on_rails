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

ActiveRecord::Schema.define(:version => 20120106164645) do

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

  create_table "customavatar", :primary_key => "userid", :force => true do |t|
    t.text    "avatardata", :limit => 16777215,                 :null => false
    t.integer "dateline",                       :default => 0,  :null => false
    t.string  "filename",   :limit => 100,      :default => "", :null => false
  end

  create_table "forum", :primary_key => "forumid", :force => true do |t|
    t.integer "styleid",           :limit => 2,   :default => 0,  :null => false
    t.string  "title",             :limit => 100, :default => "", :null => false
    t.string  "description",       :limit => 250, :default => "", :null => false
    t.integer "active",            :limit => 2,   :default => 0,  :null => false
    t.integer "displayorder",      :limit => 2,   :default => 0,  :null => false
    t.integer "replycount",                       :default => 0,  :null => false
    t.integer "lastpost",                         :default => 0,  :null => false
    t.string  "lastposter",        :limit => 50,  :default => "", :null => false
    t.integer "threadcount",       :limit => 3,   :default => 0,  :null => false
    t.integer "allowposting",      :limit => 1,   :default => 0,  :null => false
    t.integer "cancontainthreads", :limit => 2,   :default => 0,  :null => false
    t.integer "daysprune",         :limit => 2,   :default => 0,  :null => false
    t.string  "newpostemail",      :limit => 250, :default => "", :null => false
    t.string  "newthreademail",    :limit => 250, :default => "", :null => false
    t.integer "moderatenew",       :limit => 2,   :default => 0,  :null => false
    t.integer "moderateattach",    :limit => 2,   :default => 0,  :null => false
    t.integer "allowbbcode",       :limit => 2,   :default => 0,  :null => false
    t.integer "allowimages",       :limit => 2,   :default => 0,  :null => false
    t.integer "allowhtml",         :limit => 2,   :default => 0,  :null => false
    t.integer "allowsmilies",      :limit => 2,   :default => 0,  :null => false
    t.integer "allowicons",        :limit => 2,   :default => 0,  :null => false
    t.integer "parentid",          :limit => 2,   :default => 0,  :null => false
    t.string  "parentlist",        :limit => 250, :default => "", :null => false
    t.integer "allowratings",      :limit => 2,   :default => 0,  :null => false
    t.integer "countposts",        :limit => 2,   :default => 1,  :null => false
    t.integer "styleoverride",     :limit => 2,   :default => 0,  :null => false
    t.string  "password",          :limit => 50,  :default => "", :null => false
  end

  create_table "forumpermission", :primary_key => "forumpermissionid", :force => true do |t|
    t.integer "forumid",           :limit => 2, :default => 0, :null => false
    t.integer "usergroupid",       :limit => 2, :default => 0, :null => false
    t.integer "canview",           :limit => 2, :default => 0, :null => false
    t.integer "cansearch",         :limit => 2, :default => 0, :null => false
    t.integer "canemail",          :limit => 2, :default => 0, :null => false
    t.integer "canpostnew",        :limit => 2, :default => 0, :null => false
    t.integer "canmove",           :limit => 2, :default => 0, :null => false
    t.integer "canopenclose",      :limit => 2, :default => 0, :null => false
    t.integer "candeletethread",   :limit => 2, :default => 0, :null => false
    t.integer "canreplyown",       :limit => 2, :default => 0, :null => false
    t.integer "canreplyothers",    :limit => 2, :default => 0, :null => false
    t.integer "canviewothers",     :limit => 2, :default => 0, :null => false
    t.integer "caneditpost",       :limit => 2, :default => 0, :null => false
    t.integer "candeletepost",     :limit => 2, :default => 0, :null => false
    t.integer "canpostattachment", :limit => 2, :default => 0, :null => false
    t.integer "canpostpoll",       :limit => 2, :default => 0, :null => false
    t.integer "canvote",           :limit => 2, :default => 0, :null => false
    t.integer "cangetattachment",  :limit => 2, :default => 1, :null => false
  end

  add_index "forumpermission", ["usergroupid", "forumid"], :name => "ugid_fid"

  create_table "icon", :primary_key => "iconid", :force => true do |t|
    t.string "title",    :limit => 100, :default => "", :null => false
    t.string "iconpath", :limit => 100, :default => "", :null => false
  end

  create_table "moderator", :primary_key => "moderatorid", :force => true do |t|
    t.integer "userid",                              :default => 0, :null => false
    t.integer "forumid",                :limit => 2, :default => 0, :null => false
    t.integer "newthreademail",         :limit => 2, :default => 0, :null => false
    t.integer "newpostemail",           :limit => 2, :default => 0, :null => false
    t.integer "caneditposts",           :limit => 2, :default => 0, :null => false
    t.integer "candeleteposts",         :limit => 2, :default => 0, :null => false
    t.integer "canviewips",             :limit => 2, :default => 0, :null => false
    t.integer "canmanagethreads",       :limit => 2, :default => 0, :null => false
    t.integer "canopenclose",           :limit => 2, :default => 0, :null => false
    t.integer "caneditthreads",         :limit => 2, :default => 0, :null => false
    t.integer "caneditstyles",          :limit => 2, :default => 0, :null => false
    t.integer "canbanusers",            :limit => 2, :default => 0, :null => false
    t.integer "canviewprofile",         :limit => 2, :default => 0, :null => false
    t.integer "canannounce",            :limit => 2, :default => 0, :null => false
    t.integer "canmassmove",            :limit => 2, :default => 0, :null => false
    t.integer "canmassprune",           :limit => 2, :default => 0, :null => false
    t.integer "canmoderateposts",       :limit => 2, :default => 0, :null => false
    t.integer "canmoderateattachments", :limit => 2, :default => 0, :null => false
  end

  add_index "moderator", ["userid", "forumid"], :name => "userid"

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

  create_table "poll", :primary_key => "pollid", :force => true do |t|
    t.string  "question",      :limit => 100, :default => "", :null => false
    t.integer "dateline",                     :default => 0,  :null => false
    t.text    "options",                                      :null => false
    t.text    "votes",                                        :null => false
    t.integer "active",        :limit => 2,   :default => 1,  :null => false
    t.integer "numberoptions", :limit => 2,   :default => 0,  :null => false
    t.integer "timeout",       :limit => 2,   :default => 0,  :null => false
    t.integer "multiple",      :limit => 2,   :default => 0,  :null => false
    t.integer "voters",        :limit => 2,   :default => 0,  :null => false
  end

  create_table "pollvote", :primary_key => "pollvoteid", :force => true do |t|
    t.integer "pollid",     :default => 0, :null => false
    t.integer "userid",     :default => 0, :null => false
    t.integer "votedate",   :default => 0, :null => false
    t.integer "voteoption", :default => 0, :null => false
  end

  add_index "pollvote", ["userid", "pollid"], :name => "userid"

  create_table "post", :primary_key => "postid", :force => true do |t|
    t.integer "threadid",                          :default => 0,  :null => false
    t.string  "username",      :limit => 50,       :default => "", :null => false
    t.integer "userid",                            :default => 0,  :null => false
    t.string  "title",         :limit => 100,      :default => "", :null => false
    t.integer "dateline",                          :default => 0,  :null => false
    t.integer "attachmentid",  :limit => 2,        :default => 0,  :null => false
    t.text    "pagetext",      :limit => 16777215,                 :null => false
    t.integer "allowsmilie",   :limit => 2,        :default => 0,  :null => false
    t.integer "showsignature", :limit => 2,        :default => 0,  :null => false
    t.string  "ipaddress",     :limit => 16,       :default => "", :null => false
    t.integer "iconid",        :limit => 2,        :default => 0,  :null => false
    t.integer "visible",       :limit => 2,        :default => 0,  :null => false
    t.integer "edituserid",                        :default => 0,  :null => false
    t.integer "editdate",                          :default => 0,  :null => false
  end

  add_index "post", ["attachmentid"], :name => "attachmentid"
  add_index "post", ["dateline"], :name => "dateline"
  add_index "post", ["iconid"], :name => "iconid"
  add_index "post", ["ipaddress"], :name => "ipaddress"
  add_index "post", ["threadid", "userid"], :name => "threadid"
  add_index "post", ["userid"], :name => "userid"

  create_table "privatemessage", :primary_key => "privatemessageid", :force => true do |t|
    t.integer "folderid",           :limit => 2,        :default => 0,  :null => false
    t.integer "userid",                                 :default => 0,  :null => false
    t.integer "touserid",                               :default => 0,  :null => false
    t.integer "fromuserid",                             :default => 0,  :null => false
    t.string  "title",              :limit => 250,      :default => "", :null => false
    t.text    "message",            :limit => 16777215,                 :null => false
    t.integer "dateline",                               :default => 0,  :null => false
    t.integer "showsignature",      :limit => 2,        :default => 0,  :null => false
    t.integer "iconid",             :limit => 2,        :default => 0,  :null => false
    t.integer "messageread",        :limit => 2,        :default => 0,  :null => false
    t.integer "readtime",                               :default => 0,  :null => false
    t.integer "receipt",            :limit => 2,        :default => 0,  :null => false
    t.integer "deleteprompt",       :limit => 2,        :default => 0,  :null => false
    t.integer "multiplerecipients", :limit => 2,        :default => 0,  :null => false
  end

  add_index "privatemessage", ["fromuserid"], :name => "fromuserid"
  add_index "privatemessage", ["userid"], :name => "userid"

  create_table "profilefield", :primary_key => "profilefieldid", :force => true do |t|
    t.string  "title",        :limit => 50,  :default => "",  :null => false
    t.string  "description",  :limit => 250, :default => "",  :null => false
    t.integer "required",     :limit => 2,   :default => 0,   :null => false
    t.integer "hidden",       :limit => 2,   :default => 0,   :null => false
    t.integer "maxlength",    :limit => 2,   :default => 250, :null => false
    t.integer "size",         :limit => 2,   :default => 25,  :null => false
    t.integer "displayorder", :limit => 2,   :default => 0,   :null => false
    t.integer "editable",     :limit => 2,   :default => 1,   :null => false
  end

  create_table "replacement", :primary_key => "replacementid", :force => true do |t|
    t.integer "replacementsetid", :limit => 2, :default => 0, :null => false
    t.text    "findword",                                     :null => false
    t.text    "replaceword",                                  :null => false
  end

  add_index "replacement", ["replacementsetid"], :name => "replacementsetid"

  create_table "replacementset", :primary_key => "replacementsetid", :force => true do |t|
    t.string "title", :limit => 250, :default => "", :null => false
  end

  create_table "setting", :primary_key => "settingid", :force => true do |t|
    t.integer "settinggroupid", :limit => 2,        :default => 0,  :null => false
    t.string  "title",          :limit => 100,      :default => "", :null => false
    t.string  "varname",        :limit => 100,      :default => "", :null => false
    t.text    "value",          :limit => 16777215,                 :null => false
    t.text    "description",    :limit => 16777215,                 :null => false
    t.text    "optioncode",     :limit => 16777215,                 :null => false
    t.integer "displayorder",   :limit => 2,        :default => 0,  :null => false
  end

  create_table "settinggroup", :primary_key => "settinggroupid", :force => true do |t|
    t.string  "title",        :limit => 100, :default => "", :null => false
    t.integer "displayorder", :limit => 2,   :default => 0,  :null => false
  end

  create_table "smilie", :primary_key => "smilieid", :force => true do |t|
    t.string "title",      :limit => 100, :default => "", :null => false
    t.string "smilietext", :limit => 10,  :default => "", :null => false
    t.string "smiliepath", :limit => 100, :default => "", :null => false
  end

  create_table "style", :primary_key => "styleid", :force => true do |t|
    t.integer "replacementsetid", :limit => 2,   :default => 0,  :null => false
    t.integer "templatesetid",    :limit => 2,   :default => 0,  :null => false
    t.string  "title",            :limit => 250, :default => "", :null => false
    t.integer "userselect",       :limit => 2,   :default => 0,  :null => false
  end

  create_table "subscribeforum", :primary_key => "subscribeforumid", :force => true do |t|
    t.integer "userid",                   :default => 0, :null => false
    t.integer "forumid",     :limit => 2, :default => 0, :null => false
    t.integer "emailupdate", :limit => 2, :default => 0, :null => false
  end

  add_index "subscribeforum", ["userid"], :name => "userid"

  create_table "subscribethread", :primary_key => "subscribethreadid", :force => true do |t|
    t.integer "userid",                   :default => 0, :null => false
    t.integer "threadid",                 :default => 0, :null => false
    t.integer "emailupdate", :limit => 2, :default => 0, :null => false
  end

  add_index "subscribethread", ["threadid"], :name => "threadid"

  create_table "template", :primary_key => "templateid", :force => true do |t|
    t.integer "templatesetid", :limit => 2,        :default => 0,  :null => false
    t.string  "title",         :limit => 100,      :default => "", :null => false
    t.text    "template",      :limit => 16777215,                 :null => false
  end

  add_index "template", ["title", "templatesetid"], :name => "title"

  create_table "templateset", :primary_key => "templatesetid", :force => true do |t|
    t.string "title", :limit => 250, :default => "", :null => false
  end

  create_table "thread", :primary_key => "threadid", :force => true do |t|
    t.string  "title",        :limit => 100, :default => "", :null => false
    t.integer "lastpost",                    :default => 0,  :null => false
    t.integer "forumid",      :limit => 2,   :default => 0,  :null => false
    t.integer "pollid",                      :default => 0,  :null => false
    t.integer "articleid",                   :default => 0,  :null => false
    t.integer "open",         :limit => 1,   :default => 0,  :null => false
    t.integer "replycount",                  :default => 0,  :null => false
    t.string  "postusername", :limit => 50,  :default => "", :null => false
    t.integer "postuserid",                  :default => 0,  :null => false
    t.string  "lastposter",   :limit => 50,  :default => "", :null => false
    t.integer "dateline",                    :default => 0,  :null => false
    t.integer "views",                       :default => 0,  :null => false
    t.integer "iconid",       :limit => 2,   :default => 0,  :null => false
    t.string  "notes",        :limit => 250, :default => "", :null => false
    t.integer "visible",      :limit => 2,   :default => 0,  :null => false
    t.integer "sticky",       :limit => 2,   :default => 0,  :null => false
    t.integer "votenum",      :limit => 2,   :default => 0,  :null => false
    t.integer "votetotal",    :limit => 2,   :default => 0,  :null => false
    t.integer "attach",       :limit => 2,   :default => 0,  :null => false
    t.integer "argomento_id"
  end

  add_index "thread", ["forumid", "open", "threadid"], :name => "forumid_open_threadid"
  add_index "thread", ["forumid", "visible", "sticky", "lastpost"], :name => "forumid"
  add_index "thread", ["iconid"], :name => "iconid"
  add_index "thread", ["pollid"], :name => "pollid"

  create_table "threadrate", :primary_key => "threadrateid", :force => true do |t|
    t.integer "threadid",                :default => 0,  :null => false
    t.integer "userid",                  :default => 0,  :null => false
    t.integer "vote",      :limit => 2,  :default => 0,  :null => false
    t.string  "ipaddress", :limit => 20, :default => "", :null => false
  end

  add_index "threadrate", ["threadid"], :name => "threadid"

  create_table "timetick", :force => true do |t|
    t.string "action",   :limit => 100, :default => "0", :null => false
    t.string "leftdate", :limit => 100, :default => "0", :null => false
    t.string "leftid",   :limit => 100, :default => "0", :null => false
  end

  create_table "user", :primary_key => "userid", :force => true do |t|
    t.integer "usergroupid",       :limit => 2,        :default => 0,     :null => false
    t.string  "username",          :limit => 50,       :default => "",    :null => false
    t.string  "password",          :limit => 50,       :default => "",    :null => false
    t.string  "email",             :limit => 50,       :default => "",    :null => false
    t.integer "styleid",           :limit => 2,        :default => 0,     :null => false
    t.string  "parentemail",       :limit => 50,       :default => "",    :null => false
    t.integer "coppauser",         :limit => 2,        :default => 0,     :null => false
    t.string  "homepage",          :limit => 100,      :default => "",    :null => false
    t.string  "icq",               :limit => 20,       :default => "",    :null => false
    t.string  "aim",               :limit => 20,       :default => "",    :null => false
    t.string  "yahoo",             :limit => 20,       :default => "",    :null => false
    t.text    "signature",         :limit => 16777215,                    :null => false
    t.integer "adminemail",        :limit => 2,        :default => 0,     :null => false
    t.integer "showemail",         :limit => 2,        :default => 0,     :null => false
    t.integer "invisible",         :limit => 2,        :default => 0,     :null => false
    t.string  "usertitle",         :limit => 250,      :default => "",    :null => false
    t.integer "customtitle",       :limit => 2,        :default => 0,     :null => false
    t.integer "joindate",                              :default => 0,     :null => false
    t.integer "cookieuser",        :limit => 2,        :default => 0,     :null => false
    t.integer "daysprune",         :limit => 2,        :default => 0,     :null => false
    t.integer "lastvisit",                             :default => 0,     :null => false
    t.integer "lastactivity",                          :default => 0,     :null => false
    t.integer "lastpost",                              :default => 0,     :null => false
    t.integer "posts",             :limit => 2,        :default => 0,     :null => false
    t.string  "timezoneoffset",    :limit => 4,        :default => "",    :null => false
    t.integer "emailnotification", :limit => 2,        :default => 0,     :null => false
    t.text    "buddylist",         :limit => 16777215,                    :null => false
    t.text    "ignorelist",        :limit => 16777215,                    :null => false
    t.text    "pmfolders",         :limit => 16777215,                    :null => false
    t.integer "receivepm",         :limit => 2,        :default => 0,     :null => false
    t.integer "emailonpm",         :limit => 2,        :default => 0,     :null => false
    t.integer "pmpopup",           :limit => 2,        :default => 0,     :null => false
    t.integer "avatarid",          :limit => 2,        :default => 0,     :null => false
    t.integer "options",           :limit => 2,        :default => 15,    :null => false
    t.date    "birthday",                                                 :null => false
    t.integer "maxposts",          :limit => 2,        :default => -1,    :null => false
    t.integer "startofweek",       :limit => 2,        :default => 1,     :null => false
    t.string  "ipaddress",         :limit => 20,       :default => "",    :null => false
    t.integer "referrerid",                            :default => 0,     :null => false
    t.integer "nosessionhash",     :limit => 2,        :default => 0,     :null => false
    t.boolean "hideposts",                             :default => false, :null => false
    t.integer "inforum",           :limit => 2,        :default => 0,     :null => false
    t.integer "bmallow",           :limit => 2,        :default => 0,     :null => false
    t.integer "bmwarn",                                :default => 0,     :null => false
    t.integer "bmban",                                 :default => 0,     :null => false
    t.integer "bmreported",                            :default => 0,     :null => false
    t.string  "rooms",             :limit => 128,      :default => "",    :null => false
    t.integer "reg_time",                              :default => 0,     :null => false
    t.boolean "gender",                                :default => false, :null => false
    t.integer "timeonline",                            :default => 0,     :null => false
    t.integer "TTL",               :limit => 1,        :default => 0,     :null => false
    t.integer "journal",           :limit => 2,        :default => 0,     :null => false
    t.integer "miserable",         :limit => 2,        :default => 0,     :null => false
    t.string  "lastposts",         :limit => 160,      :default => "",    :null => false
  end

  add_index "user", ["inforum"], :name => "inforum"
  add_index "user", ["referrerid"], :name => "referrerid"
  add_index "user", ["usergroupid"], :name => "usergroupid"
  add_index "user", ["username"], :name => "username"

  create_table "useractivation", :primary_key => "useractivationid", :force => true do |t|
    t.integer "userid",                     :default => 0,  :null => false
    t.integer "dateline",                   :default => 0,  :null => false
    t.string  "activationid", :limit => 20, :default => "", :null => false
    t.integer "type",         :limit => 2,  :default => 0,  :null => false
  end

  add_index "useractivation", ["userid", "type"], :name => "userid"

  create_table "userfield", :primary_key => "userid", :force => true do |t|
    t.string "field2",         :limit => 250, :default => "", :null => false
    t.string "field4",         :limit => 250, :default => "", :null => false
    t.string "field5",         :limit => 250, :default => "", :null => false
    t.string "field6",         :limit => 250, :default => "", :null => false
    t.string "userspezial68",  :limit => 20,  :default => "", :null => false
    t.string "userspezial69",  :limit => 20,  :default => "", :null => false
    t.string "userspezial70",  :limit => 20,  :default => "", :null => false
    t.string "userspezial71",  :limit => 20,  :default => "", :null => false
    t.string "userspezial72",  :limit => 20,  :default => "", :null => false
    t.string "userspezial73",  :limit => 20,  :default => "", :null => false
    t.string "userspezial74",  :limit => 20,  :default => "", :null => false
    t.string "userspezial75",  :limit => 20,  :default => "", :null => false
    t.string "userspezial76",  :limit => 20,  :default => "", :null => false
    t.string "userspezial77",  :limit => 20,  :default => "", :null => false
    t.string "userspezial78",  :limit => 20,  :default => "", :null => false
    t.string "userspezial79",  :limit => 20,  :default => "", :null => false
    t.string "userspezial80",  :limit => 20,  :default => "", :null => false
    t.string "userspezial81",  :limit => 20,  :default => "", :null => false
    t.string "userspezial82",  :limit => 20,  :default => "", :null => false
    t.string "userspezial83",  :limit => 20,  :default => "", :null => false
    t.string "userspezial84",  :limit => 20,  :default => "", :null => false
    t.string "userspezial85",  :limit => 20,  :default => "", :null => false
    t.string "userspezial86",  :limit => 20,  :default => "", :null => false
    t.string "userspezial87",  :limit => 20,  :default => "", :null => false
    t.string "userspezial88",  :limit => 20,  :default => "", :null => false
    t.string "userspezial89",  :limit => 20,  :default => "", :null => false
    t.string "userspezial90",  :limit => 20,  :default => "", :null => false
    t.string "userspezial91",  :limit => 20,  :default => "", :null => false
    t.string "userspezial92",  :limit => 20,  :default => "", :null => false
    t.string "userspezial93",  :limit => 20,  :default => "", :null => false
    t.string "userspezial94",  :limit => 20,  :default => "", :null => false
    t.string "userspezial95",  :limit => 20,  :default => "", :null => false
    t.string "userspezial96",  :limit => 20,  :default => "", :null => false
    t.string "userspezial97",  :limit => 20,  :default => "", :null => false
    t.string "userspezial98",  :limit => 20,  :default => "", :null => false
    t.string "userspezial99",  :limit => 20,  :default => "", :null => false
    t.string "userspezial100", :limit => 20,  :default => "", :null => false
    t.string "userspezial101", :limit => 20,  :default => "", :null => false
    t.string "userspezial102", :limit => 20,  :default => "", :null => false
    t.string "userspezial103", :limit => 20,  :default => "", :null => false
    t.string "userspezial104", :limit => 20,  :default => "", :null => false
    t.string "userspezial105", :limit => 20,  :default => "", :null => false
    t.string "userspezial106", :limit => 20,  :default => "", :null => false
    t.string "userspezial107", :limit => 20,  :default => "", :null => false
    t.string "userspezial108", :limit => 20,  :default => "", :null => false
    t.string "userspezial109", :limit => 20,  :default => "", :null => false
    t.string "userspezial110", :limit => 20,  :default => "", :null => false
    t.string "userspezial111", :limit => 20,  :default => "", :null => false
    t.string "userspezial112", :limit => 20,  :default => "", :null => false
    t.string "userspezial113", :limit => 20,  :default => "", :null => false
    t.string "userspezial114", :limit => 20,  :default => "", :null => false
    t.string "userspezial115", :limit => 20,  :default => "", :null => false
    t.string "userspezial116", :limit => 20,  :default => "", :null => false
    t.string "userspezial117", :limit => 20,  :default => "", :null => false
    t.string "userspezial118", :limit => 20,  :default => "", :null => false
    t.string "userspezial119", :limit => 20,  :default => "", :null => false
    t.string "userspezial120", :limit => 20,  :default => "", :null => false
    t.string "userspezial121", :limit => 20,  :default => "", :null => false
    t.string "userspezial122", :limit => 20,  :default => "", :null => false
    t.string "userspezial123", :limit => 20,  :default => "", :null => false
    t.string "userspezial124", :limit => 20,  :default => "", :null => false
    t.string "userspezial125", :limit => 20,  :default => "", :null => false
    t.string "userspezial126", :limit => 20,  :default => "", :null => false
    t.string "userspezial127", :limit => 20,  :default => "", :null => false
    t.string "userspezial128", :limit => 20,  :default => "", :null => false
    t.string "userspezial129", :limit => 20,  :default => "", :null => false
    t.string "userspezial130", :limit => 20,  :default => "", :null => false
    t.string "userspezial131", :limit => 20,  :default => "", :null => false
    t.string "userspezial132", :limit => 20,  :default => "", :null => false
    t.string "userspezial133", :limit => 20,  :default => "", :null => false
    t.string "userspezial134", :limit => 20,  :default => "", :null => false
    t.string "userspezial135", :limit => 20,  :default => "", :null => false
    t.string "userspezial136", :limit => 20,  :default => "", :null => false
    t.string "userspezial137", :limit => 20,  :default => "", :null => false
    t.string "userspezial138", :limit => 20,  :default => "", :null => false
    t.string "userspezial139", :limit => 20,  :default => "", :null => false
    t.string "userspezial140", :limit => 20,  :default => "", :null => false
    t.string "userspezial141", :limit => 20,  :default => "", :null => false
    t.string "userspezial142", :limit => 20,  :default => "", :null => false
    t.string "userspezial143", :limit => 20,  :default => "", :null => false
    t.string "userspezial144", :limit => 20,  :default => "", :null => false
    t.string "userspezial145", :limit => 20,  :default => "", :null => false
    t.string "userspezial146", :limit => 20,  :default => "", :null => false
    t.string "userspezial147", :limit => 20,  :default => "", :null => false
    t.string "userspezial148", :limit => 20,  :default => "", :null => false
    t.string "userspezial149", :limit => 20,  :default => "", :null => false
    t.string "userspezial150", :limit => 20,  :default => "", :null => false
    t.string "userspezial151", :limit => 20,  :default => "", :null => false
    t.string "userspezial152", :limit => 20,  :default => "", :null => false
    t.string "userspezial153", :limit => 20,  :default => "", :null => false
    t.string "userspezial154", :limit => 20,  :default => "", :null => false
    t.string "userspezial155", :limit => 20,  :default => "", :null => false
    t.string "userspezial156", :limit => 20,  :default => "", :null => false
    t.string "userspezial157", :limit => 20,  :default => "", :null => false
    t.string "userspezial158", :limit => 20,  :default => "", :null => false
    t.string "userspezial159", :limit => 20,  :default => "", :null => false
    t.string "userspezial160", :limit => 20,  :default => "", :null => false
    t.string "userspezial161", :limit => 20,  :default => "", :null => false
    t.string "userspezial162", :limit => 20,  :default => "", :null => false
    t.string "userspezial163", :limit => 20,  :default => "", :null => false
    t.string "userspezial164", :limit => 20,  :default => "", :null => false
    t.string "userspezial165", :limit => 20,  :default => "", :null => false
    t.string "userspezial166", :limit => 20,  :default => "", :null => false
    t.string "userspezial167", :limit => 20,  :default => "", :null => false
    t.string "userspezial168", :limit => 20,  :default => "", :null => false
    t.string "userspezial169", :limit => 20,  :default => "", :null => false
    t.string "userspezial170", :limit => 20,  :default => "", :null => false
    t.string "userspezial171", :limit => 20,  :default => "", :null => false
    t.string "userspezial172", :limit => 20,  :default => "", :null => false
    t.string "userspezial173", :limit => 20,  :default => "", :null => false
    t.string "userspezial174", :limit => 20,  :default => "", :null => false
    t.string "userspezial175", :limit => 20,  :default => "", :null => false
    t.string "userspezial176", :limit => 20,  :default => "", :null => false
    t.string "userspezial177", :limit => 20,  :default => "", :null => false
    t.string "userspezial178", :limit => 20,  :default => "", :null => false
    t.string "userspezial179", :limit => 20,  :default => "", :null => false
    t.string "userspezial180", :limit => 20,  :default => "", :null => false
    t.string "userspezial181", :limit => 20,  :default => "", :null => false
    t.string "userspezial182", :limit => 20,  :default => "", :null => false
    t.string "userspezial183", :limit => 20,  :default => "", :null => false
    t.string "userspezial184", :limit => 20,  :default => "", :null => false
    t.string "userspezial185", :limit => 20,  :default => "", :null => false
    t.string "userspezial186", :limit => 20,  :default => "", :null => false
    t.string "userspezial187", :limit => 20,  :default => "", :null => false
    t.string "userspezial188", :limit => 20,  :default => "", :null => false
    t.string "userspezial189", :limit => 20,  :default => "", :null => false
    t.string "userspezial190", :limit => 20,  :default => "", :null => false
    t.string "userspezial191", :limit => 20,  :default => "", :null => false
    t.string "userspezial192", :limit => 20,  :default => "", :null => false
    t.string "userspezial193", :limit => 20,  :default => "", :null => false
    t.string "userspezial194", :limit => 20,  :default => "", :null => false
    t.string "userspezial195", :limit => 20,  :default => "", :null => false
    t.string "userspezial196", :limit => 20,  :default => "", :null => false
    t.string "userspezial197", :limit => 20,  :default => "", :null => false
    t.string "userspezial198", :limit => 20,  :default => "", :null => false
    t.string "userspezial199", :limit => 20,  :default => "", :null => false
    t.string "userspezial200", :limit => 20,  :default => "", :null => false
    t.string "userspezial202", :limit => 20,  :default => "", :null => false
    t.string "userspezial203", :limit => 20,  :default => "", :null => false
    t.string "userspezial204", :limit => 20,  :default => "", :null => false
    t.string "userspezial205", :limit => 20,  :default => "", :null => false
    t.string "userspezial206", :limit => 20,  :default => "", :null => false
    t.string "userspezial207", :limit => 20,  :default => "", :null => false
    t.string "userspezial208", :limit => 20,  :default => "", :null => false
    t.string "userspezial209", :limit => 20,  :default => "", :null => false
    t.string "userspezial210", :limit => 20,  :default => "", :null => false
    t.string "userspezial211", :limit => 20,  :default => "", :null => false
    t.string "userspezial212", :limit => 20,  :default => "", :null => false
    t.string "userspezial213", :limit => 20,  :default => "", :null => false
    t.string "userspezial214", :limit => 20,  :default => "", :null => false
    t.string "userspezial215", :limit => 20,  :default => "", :null => false
    t.string "userspezial216", :limit => 20,  :default => "", :null => false
    t.string "userspezial217", :limit => 20,  :default => "", :null => false
    t.string "userspezial218", :limit => 20,  :default => "", :null => false
    t.string "userspezial219", :limit => 20,  :default => "", :null => false
    t.string "userspezial220", :limit => 20,  :default => "", :null => false
    t.string "userspezial221", :limit => 20,  :default => "", :null => false
    t.string "userspezial222", :limit => 20,  :default => "", :null => false
    t.string "userspezial223", :limit => 20,  :default => "", :null => false
    t.string "userspezial224", :limit => 20,  :default => "", :null => false
    t.string "userspezial225", :limit => 20,  :default => "", :null => false
    t.string "userspezial226", :limit => 20,  :default => "", :null => false
    t.string "userspezial227", :limit => 20,  :default => "", :null => false
    t.string "userspezial228", :limit => 20,  :default => "", :null => false
    t.string "userspezial229", :limit => 20,  :default => "", :null => false
    t.string "userspezial230", :limit => 20,  :default => "", :null => false
    t.string "userspezial231", :limit => 20,  :default => "", :null => false
    t.string "userspezial232", :limit => 20,  :default => "", :null => false
    t.string "userspezial233", :limit => 20,  :default => "", :null => false
    t.string "userspezial234", :limit => 20,  :default => "", :null => false
    t.string "userspezial235", :limit => 20,  :default => "", :null => false
    t.string "userspezial236", :limit => 20,  :default => "", :null => false
    t.string "userspezial237", :limit => 20,  :default => "", :null => false
    t.string "userspezial238", :limit => 20,  :default => "", :null => false
    t.string "userspezial239", :limit => 20,  :default => "", :null => false
    t.string "userspezial240", :limit => 20,  :default => "", :null => false
    t.string "userspezial241", :limit => 20,  :default => "", :null => false
    t.string "userspezial242", :limit => 20,  :default => "", :null => false
    t.string "userspezial243", :limit => 20,  :default => "", :null => false
    t.string "userspezial244", :limit => 20,  :default => "", :null => false
    t.string "userspezial245", :limit => 20,  :default => "", :null => false
    t.string "userspezial246", :limit => 20,  :default => "", :null => false
    t.string "userspezial247", :limit => 20,  :default => "", :null => false
    t.string "userspezial248", :limit => 20,  :default => "", :null => false
    t.string "userspezial249", :limit => 20,  :default => "", :null => false
    t.string "userspezial250", :limit => 20,  :default => "", :null => false
    t.string "userspezial251", :limit => 20,  :default => "", :null => false
    t.string "userspezial252", :limit => 20,  :default => "", :null => false
    t.string "userspezial253", :limit => 20,  :default => "", :null => false
    t.string "userspezial254", :limit => 20,  :default => "", :null => false
    t.string "userspezial255", :limit => 20,  :default => "", :null => false
    t.string "userspezial256", :limit => 20,  :default => "", :null => false
    t.string "userspezial257", :limit => 20,  :default => "", :null => false
    t.string "userspezial258", :limit => 20,  :default => "", :null => false
    t.string "userspezial259", :limit => 20,  :default => "", :null => false
    t.string "userspezial260", :limit => 20,  :default => "", :null => false
    t.string "userspezial261", :limit => 20,  :default => "", :null => false
    t.string "userspezial262", :limit => 20,  :default => "", :null => false
    t.string "userspezial263", :limit => 20,  :default => "", :null => false
    t.string "userspezial264", :limit => 20,  :default => "", :null => false
    t.string "userspezial265", :limit => 20,  :default => "", :null => false
    t.string "userspezial266", :limit => 20,  :default => "", :null => false
    t.string "userspezial267", :limit => 20,  :default => "", :null => false
    t.string "userspezial268", :limit => 20,  :default => "", :null => false
    t.string "userspezial269", :limit => 20,  :default => "", :null => false
    t.string "userspezial270", :limit => 20,  :default => "", :null => false
    t.string "userspezial271", :limit => 20,  :default => "", :null => false
    t.string "userspezial272", :limit => 20,  :default => "", :null => false
    t.string "userspezial273", :limit => 20,  :default => "", :null => false
    t.string "userspezial274", :limit => 20,  :default => "", :null => false
    t.string "userspezial275", :limit => 20,  :default => "", :null => false
    t.string "userspezial276", :limit => 20,  :default => "", :null => false
    t.string "userspezial277", :limit => 20,  :default => "", :null => false
    t.string "userspezial278", :limit => 20,  :default => "", :null => false
    t.string "userspezial279", :limit => 20,  :default => "", :null => false
    t.string "userspezial280", :limit => 20,  :default => "", :null => false
    t.string "userspezial281", :limit => 20,  :default => "", :null => false
    t.string "userspezial282", :limit => 20,  :default => "", :null => false
    t.string "userspezial283", :limit => 20,  :default => "", :null => false
    t.string "userspezial284", :limit => 20,  :default => "", :null => false
    t.string "userspezial285", :limit => 20,  :default => "", :null => false
    t.string "userspezial286", :limit => 20,  :default => "", :null => false
    t.string "userspezial287", :limit => 20,  :default => "", :null => false
    t.string "userspezial288", :limit => 20,  :default => "", :null => false
    t.string "userspezial289", :limit => 20,  :default => "", :null => false
    t.string "userspezial290", :limit => 20,  :default => "", :null => false
    t.string "userspezial291", :limit => 20,  :default => "", :null => false
    t.string "userspezial292", :limit => 20,  :default => "", :null => false
    t.string "userspezial293", :limit => 20,  :default => "", :null => false
    t.string "userspezial294", :limit => 20,  :default => "", :null => false
    t.string "userspezial295", :limit => 20,  :default => "", :null => false
    t.string "userspezial296", :limit => 20,  :default => "", :null => false
    t.string "userspezial297", :limit => 20,  :default => "", :null => false
    t.string "userspezial298", :limit => 20,  :default => "", :null => false
    t.string "userspezial299", :limit => 20,  :default => "", :null => false
    t.string "userspezial300", :limit => 20,  :default => "", :null => false
    t.string "userspezial301", :limit => 20,  :default => "", :null => false
    t.string "userspezial302", :limit => 20,  :default => "", :null => false
    t.string "userspezial303", :limit => 20,  :default => "", :null => false
    t.string "userspezial304", :limit => 20,  :default => "", :null => false
    t.string "userspezial305", :limit => 20,  :default => "", :null => false
    t.string "userspezial306", :limit => 20,  :default => "", :null => false
    t.string "userspezial307", :limit => 20,  :default => "", :null => false
    t.string "userspezial308", :limit => 20,  :default => "", :null => false
    t.string "userspezial309", :limit => 20,  :default => "", :null => false
    t.string "userspezial310", :limit => 20,  :default => "", :null => false
    t.string "userspezial311", :limit => 20,  :default => "", :null => false
    t.string "userspezial312", :limit => 20,  :default => "", :null => false
    t.string "userspezial313", :limit => 20,  :default => "", :null => false
    t.string "userspezial314", :limit => 20,  :default => "", :null => false
    t.string "userspezial315", :limit => 20,  :default => "", :null => false
    t.string "userspezial316", :limit => 20,  :default => "", :null => false
    t.string "userspezial317", :limit => 20,  :default => "", :null => false
    t.string "userspezial318", :limit => 20,  :default => "", :null => false
    t.string "userspezial319", :limit => 20,  :default => "", :null => false
    t.string "userspezial320", :limit => 20,  :default => "", :null => false
    t.string "userspezial321", :limit => 20,  :default => "", :null => false
    t.string "userspezial322", :limit => 20,  :default => "", :null => false
    t.string "userspezial323", :limit => 20,  :default => "", :null => false
    t.string "userspezial324", :limit => 20,  :default => "", :null => false
    t.string "userspezial325", :limit => 20,  :default => "", :null => false
    t.string "userspezial326", :limit => 20,  :default => "", :null => false
    t.string "userspezial327", :limit => 20,  :default => "", :null => false
    t.string "userspezial328", :limit => 20,  :default => "", :null => false
    t.string "userspezial329", :limit => 20,  :default => "", :null => false
    t.string "userspezial330", :limit => 20,  :default => "", :null => false
    t.string "userspezial331", :limit => 20,  :default => "", :null => false
    t.string "userspezial332", :limit => 20,  :default => "", :null => false
    t.string "userspezial333", :limit => 20,  :default => "", :null => false
    t.string "userspezial334", :limit => 20,  :default => "", :null => false
    t.string "userspezial335", :limit => 20,  :default => "", :null => false
    t.string "userspezial336", :limit => 20,  :default => "", :null => false
    t.string "userspezial337", :limit => 20,  :default => "", :null => false
    t.string "userspezial338", :limit => 20,  :default => "", :null => false
    t.string "userspezial339", :limit => 20,  :default => "", :null => false
    t.string "userspezial340", :limit => 20,  :default => "", :null => false
    t.string "userspezial341", :limit => 20,  :default => "", :null => false
    t.string "userspezial342", :limit => 20,  :default => "", :null => false
    t.string "userspezial343", :limit => 20,  :default => "", :null => false
    t.string "userspezial344", :limit => 20,  :default => "", :null => false
    t.string "userspezial345", :limit => 20,  :default => "", :null => false
    t.string "userspezial346", :limit => 20,  :default => "", :null => false
    t.string "userspezial347", :limit => 20,  :default => "", :null => false
    t.string "userspezial348", :limit => 20,  :default => "", :null => false
    t.string "userspezial349", :limit => 20,  :default => "", :null => false
    t.string "userspezial350", :limit => 20,  :default => "", :null => false
    t.string "userspezial351", :limit => 20,  :default => "", :null => false
    t.string "userspezial352", :limit => 20,  :default => "", :null => false
    t.string "userspezial353", :limit => 20,  :default => "", :null => false
    t.string "userspezial354", :limit => 20,  :default => "", :null => false
    t.string "userspezial355", :limit => 20,  :default => "", :null => false
    t.string "userspezial356", :limit => 20,  :default => "", :null => false
    t.string "userspezial357", :limit => 20,  :default => "", :null => false
    t.string "userspezial358", :limit => 20,  :default => "", :null => false
    t.string "userspezial359", :limit => 20,  :default => "", :null => false
    t.string "userspezial360", :limit => 20,  :default => "", :null => false
    t.string "userspezial361", :limit => 20,  :default => "", :null => false
    t.string "userspezial362", :limit => 20,  :default => "", :null => false
    t.string "userspezial363", :limit => 20,  :default => "", :null => false
    t.string "userspezial364", :limit => 20,  :default => "", :null => false
    t.string "userspezial365", :limit => 20,  :default => "", :null => false
    t.string "userspezial366", :limit => 20,  :default => "", :null => false
    t.string "userspezial367", :limit => 20,  :default => "", :null => false
    t.string "userspezial368", :limit => 20,  :default => "", :null => false
    t.string "userspezial369", :limit => 20,  :default => "", :null => false
    t.string "userspezial370", :limit => 20,  :default => "", :null => false
    t.string "userspezial371", :limit => 20,  :default => "", :null => false
    t.string "userspezial372", :limit => 20,  :default => "", :null => false
    t.string "userspezial373", :limit => 20,  :default => "", :null => false
    t.string "userspezial374", :limit => 20,  :default => "", :null => false
    t.string "userspezial375", :limit => 20,  :default => "", :null => false
    t.string "userspezial376", :limit => 20,  :default => "", :null => false
    t.string "userspezial377", :limit => 20,  :default => "", :null => false
    t.string "userspezial378", :limit => 20,  :default => "", :null => false
    t.string "userspezial379", :limit => 20,  :default => "", :null => false
    t.string "userspezial380", :limit => 20,  :default => "", :null => false
    t.string "userspezial381", :limit => 20,  :default => "", :null => false
    t.string "userspezial382", :limit => 20,  :default => "", :null => false
    t.string "userspezial383", :limit => 20,  :default => "", :null => false
    t.string "userspezial384", :limit => 20,  :default => "", :null => false
    t.string "userspezial385", :limit => 20,  :default => "", :null => false
    t.string "userspezial386", :limit => 20,  :default => "", :null => false
    t.string "userspezial387", :limit => 20,  :default => "", :null => false
    t.string "userspezial388", :limit => 20,  :default => "", :null => false
    t.string "userspezial389", :limit => 20,  :default => "", :null => false
    t.string "userspezial390", :limit => 20,  :default => "", :null => false
    t.string "userspezial391", :limit => 20,  :default => "", :null => false
    t.string "userspezial392", :limit => 20,  :default => "", :null => false
    t.string "userspezial393", :limit => 20,  :default => "", :null => false
    t.string "userspezial394", :limit => 20,  :default => "", :null => false
    t.string "userspezial395", :limit => 20,  :default => "", :null => false
    t.string "userspezial396", :limit => 20,  :default => "", :null => false
    t.string "userspezial397", :limit => 20,  :default => "", :null => false
    t.string "userspezial398", :limit => 20,  :default => "", :null => false
    t.string "userspezial399", :limit => 20,  :default => "", :null => false
    t.string "userspezial400", :limit => 20,  :default => "", :null => false
    t.string "userspezial401", :limit => 20,  :default => "", :null => false
    t.string "userspezial402", :limit => 20,  :default => "", :null => false
    t.string "userspezial403", :limit => 20,  :default => "", :null => false
    t.string "userspezial404", :limit => 20,  :default => "", :null => false
    t.string "userspezial405", :limit => 20,  :default => "", :null => false
    t.string "userspezial406", :limit => 20,  :default => "", :null => false
    t.string "userspezial407", :limit => 20,  :default => "", :null => false
    t.string "userspezial408", :limit => 20,  :default => "", :null => false
    t.string "userspezial409", :limit => 20,  :default => "", :null => false
    t.string "userspezial410", :limit => 20,  :default => "", :null => false
    t.string "userspezial411", :limit => 20,  :default => "", :null => false
    t.string "userspezial412", :limit => 20,  :default => "", :null => false
    t.string "userspezial413", :limit => 20,  :default => "", :null => false
    t.string "userspezial414", :limit => 20,  :default => "", :null => false
    t.string "userspezial415", :limit => 20,  :default => "", :null => false
    t.string "userspezial416", :limit => 20,  :default => "", :null => false
    t.string "userspezial417", :limit => 20,  :default => "", :null => false
    t.string "userspezial418", :limit => 20,  :default => "", :null => false
    t.string "userspezial419", :limit => 20,  :default => "", :null => false
    t.string "userspezial420", :limit => 20,  :default => "", :null => false
    t.string "userspezial421", :limit => 20,  :default => "", :null => false
    t.string "userspezial422", :limit => 20,  :default => "", :null => false
    t.string "userspezial423", :limit => 20,  :default => "", :null => false
    t.string "userspezial424", :limit => 20,  :default => "", :null => false
    t.string "userspezial425", :limit => 20,  :default => "", :null => false
    t.string "userspezial426", :limit => 20,  :default => "", :null => false
    t.string "userspezial427", :limit => 20,  :default => "", :null => false
    t.string "userspezial428", :limit => 20,  :default => "", :null => false
    t.string "userspezial429", :limit => 20,  :default => "", :null => false
    t.string "userspezial430", :limit => 20,  :default => "", :null => false
    t.string "userspezial431", :limit => 20,  :default => "", :null => false
    t.string "userspezial432", :limit => 20,  :default => "", :null => false
    t.string "userspezial433", :limit => 20,  :default => "", :null => false
    t.string "userspezial434", :limit => 20,  :default => "", :null => false
    t.string "userspezial435", :limit => 20,  :default => "", :null => false
    t.string "userspezial436", :limit => 20,  :default => "", :null => false
    t.string "userspezial437", :limit => 20,  :default => "", :null => false
    t.string "userspezial438", :limit => 20,  :default => "", :null => false
    t.string "userspezial439", :limit => 20,  :default => "", :null => false
    t.string "userspezial440", :limit => 20,  :default => "", :null => false
    t.string "userspezial441", :limit => 20,  :default => "", :null => false
    t.string "userspezial442", :limit => 20,  :default => "", :null => false
    t.string "userspezial443", :limit => 20,  :default => "", :null => false
    t.string "userspezial444", :limit => 20,  :default => "", :null => false
    t.string "userspezial445", :limit => 20,  :default => "", :null => false
    t.string "userspezial446", :limit => 20,  :default => "", :null => false
    t.string "userspezial447", :limit => 20,  :default => "", :null => false
    t.string "userspezial448", :limit => 20,  :default => "", :null => false
    t.string "userspezial449", :limit => 20,  :default => "", :null => false
    t.string "userspezial450", :limit => 20,  :default => "", :null => false
    t.string "userspezial451", :limit => 20,  :default => "", :null => false
    t.string "userspezial452", :limit => 20,  :default => "", :null => false
    t.string "userspezial453", :limit => 20,  :default => "", :null => false
    t.string "userspezial454", :limit => 20,  :default => "", :null => false
    t.string "userspezial455", :limit => 20,  :default => "", :null => false
    t.string "userspezial456", :limit => 20,  :default => "", :null => false
    t.string "userspezial457", :limit => 20,  :default => "", :null => false
    t.string "userspezial458", :limit => 20,  :default => "", :null => false
    t.string "userspezial459", :limit => 20,  :default => "", :null => false
    t.string "userspezial460", :limit => 20,  :default => "", :null => false
    t.string "userspezial461", :limit => 20,  :default => "", :null => false
    t.string "userspezial462", :limit => 20,  :default => "", :null => false
    t.string "userspezial463", :limit => 20,  :default => "", :null => false
    t.string "userspezial464", :limit => 20,  :default => "", :null => false
    t.string "userspezial465", :limit => 20,  :default => "", :null => false
    t.string "userspezial466", :limit => 20,  :default => "", :null => false
    t.string "userspezial467", :limit => 20,  :default => "", :null => false
    t.string "userspezial468", :limit => 20,  :default => "", :null => false
    t.string "userspezial469", :limit => 20,  :default => "", :null => false
    t.string "userspezial470", :limit => 20,  :default => "", :null => false
    t.string "userspezial471", :limit => 20,  :default => "", :null => false
    t.string "userspezial472", :limit => 20,  :default => "", :null => false
    t.string "userspezial473", :limit => 20,  :default => "", :null => false
    t.string "userspezial474", :limit => 20,  :default => "", :null => false
    t.string "userspezial475", :limit => 20,  :default => "", :null => false
    t.string "userspezial476", :limit => 20,  :default => "", :null => false
    t.string "userspezial477", :limit => 20,  :default => "", :null => false
    t.string "userspezial478", :limit => 20,  :default => "", :null => false
    t.string "userspezial479", :limit => 20,  :default => "", :null => false
    t.string "userspezial480", :limit => 20,  :default => "", :null => false
    t.string "userspezial481", :limit => 20,  :default => "", :null => false
    t.string "userspezial482", :limit => 20,  :default => "", :null => false
    t.string "userspezial483", :limit => 20,  :default => "", :null => false
    t.string "userspezial484", :limit => 20,  :default => "", :null => false
    t.string "userspezial485", :limit => 20,  :default => "", :null => false
    t.string "userspezial486", :limit => 20,  :default => "", :null => false
  end

  create_table "usergroup", :primary_key => "usergroupid", :force => true do |t|
    t.string  "title",             :limit => 100, :default => "", :null => false
    t.string  "usertitle",         :limit => 100, :default => "", :null => false
    t.integer "cancontrolpanel",   :limit => 2,   :default => 0,  :null => false
    t.integer "canmodifyprofile",  :limit => 2,   :default => 0,  :null => false
    t.integer "canviewmembers",    :limit => 2,   :default => 0,  :null => false
    t.integer "canview",           :limit => 2,   :default => 0,  :null => false
    t.integer "cansearch",         :limit => 2,   :default => 0,  :null => false
    t.integer "canemail",          :limit => 2,   :default => 0,  :null => false
    t.integer "canpostnew",        :limit => 2,   :default => 0,  :null => false
    t.integer "canmove",           :limit => 2,   :default => 0,  :null => false
    t.integer "canopenclose",      :limit => 2,   :default => 0,  :null => false
    t.integer "candeletethread",   :limit => 2,   :default => 0,  :null => false
    t.integer "canreplyown",       :limit => 2,   :default => 0,  :null => false
    t.integer "canreplyothers",    :limit => 2,   :default => 0,  :null => false
    t.integer "canviewothers",     :limit => 2,   :default => 0,  :null => false
    t.integer "caneditpost",       :limit => 2,   :default => 0,  :null => false
    t.integer "candeletepost",     :limit => 2,   :default => 0,  :null => false
    t.integer "canusepm",          :limit => 2,   :default => 0,  :null => false
    t.integer "canpostpoll",       :limit => 2,   :default => 0,  :null => false
    t.integer "canvote",           :limit => 2,   :default => 0,  :null => false
    t.integer "canpostattachment", :limit => 2,   :default => 0,  :null => false
    t.integer "canpublicevent",    :limit => 2,   :default => 0,  :null => false
    t.integer "canpublicedit",     :limit => 2,   :default => 0,  :null => false
    t.integer "canthreadrate",     :limit => 2,   :default => 1,  :null => false
    t.integer "maxbuddypm",        :limit => 2,   :default => 5,  :null => false
    t.integer "maxforwardpm",      :limit => 2,   :default => 5,  :null => false
    t.integer "cantrackpm",        :limit => 2,   :default => 1,  :null => false
    t.integer "candenypmreceipts", :limit => 2,   :default => 1,  :null => false
    t.integer "canwhosonline",     :limit => 2,   :default => 1,  :null => false
    t.integer "canwhosonlineip",   :limit => 2,   :default => 0,  :null => false
    t.integer "ismoderator",       :limit => 2,   :default => 0,  :null => false
    t.integer "showgroup",         :limit => 2,   :default => 0,  :null => false
    t.integer "cangetattachment",  :limit => 2,   :default => 1,  :null => false
    t.integer "canusebookmarks",   :limit => 2,   :default => 0,  :null => false
    t.integer "bmminposts",        :limit => 2,   :default => 0,  :null => false
    t.integer "bmmaxperuser",      :limit => 2,   :default => 50, :null => false
  end

  add_index "usergroup", ["showgroup"], :name => "showgroup"

  create_table "usernotepad", :id => false, :force => true do |t|
    t.integer "userid",                          :default => 0, :null => false
    t.text    "notes",       :limit => 16777215,                :null => false
    t.integer "lastupdated",                     :default => 0, :null => false
  end

  create_table "usertitle", :primary_key => "usertitleid", :force => true do |t|
    t.integer "minposts", :limit => 2,   :default => 0,  :null => false
    t.string  "title",    :limit => 250, :default => "", :null => false
  end

end
