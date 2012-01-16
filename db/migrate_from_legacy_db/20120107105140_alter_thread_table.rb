class AlterThreadTable < ActiveRecord::Migration
  def change
    rename_table  :thread, :topics
    rename_column :topics, :threadid, :id
    rename_column :topics, :lastpost, :last_post
    rename_column :topics, :forumid, :forum_id
    remove_column :topics, :pollid
    remove_column :topics, :articleid
    rename_column :topics, :replycount, :posts_count
    rename_column :topics, :postuserid, :original_poster
    remove_column :topics, :postusername
    rename_column :topics, :lastposter, :last_poster
    rename_column :topics, :dateline, :created_at
    change_column :topics, :created_at, :timestamp
    remove_column :topics, :iconid
    remove_column :topics, :notes
    remove_column :topics, :votenum
    remove_column :topics, :votetotal
    remove_column :topics, :attach
    remove_column :topics, :argomento_id
  end
end
