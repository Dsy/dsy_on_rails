class AlterUserTable < ActiveRecord::Migration
  def up
    rename_table  :user,  :users
    rename_column :users, :userid, :id
    remove_column :users, :usergroupid
    remove_column :users, :styleid
    remove_column :users, :parentemail
    remove_column :users, :coppauser
    remove_column :users, :adminemail
    remove_column :users, :showemail
    remove_column :users, :invisible
    remove_column :users, :usertitle
    remove_column :users, :customtitle
    rename_column :users, :joindate, :created_at
    change_column :users, :created_at, :timestamp
    add_column    :users, :update_at, :timestamp
    remove_column :users, :cookieuser
    remove_column :users, :daysprune
    rename_column :users, :lastvisit, :last_visit
    change_column :users, :last_visit, :timestamp
    remove_column :users, :lastactivity
    rename_column :users, :lastpost, :lastpost
    rename_column :users, :posts, :posts_count
    remove_column :users, :timezoneoffset
    remove_column :users, :emailnotification
    remove_column :users, :buddylist
    remove_column :users, :ignorelist
    remove_column :users, :pmfolders
    remove_column :users, :receivepm
    remove_column :users, :emailonpm
    remove_column :users, :pmpopup
    rename_column :users, :avatarid, :avatar_id
    remove_column :users, :options
    remove_column :users, :maxposts
    remove_column :users, :startofweek
    remove_column :users, :ipaddress
    remove_column :users, :referrerid
    remove_column :users, :nosessionhash
    remove_column :users, :hideposts
    remove_column :users, :inforum
    remove_column :users, :bmallow
    remove_column :users, :bmwarn
    remove_column :users, :bmban
    remove_column :users, :bmreported
    remove_column :users, :rooms
    remove_column :users, :reg_time
    rename_column :users, :timeonline, :time_online
    remove_column :users, :TTL
    remove_column :users, :journal
    remove_column :users, :miserable
    remove_column :users, :lastposts
  end
end
