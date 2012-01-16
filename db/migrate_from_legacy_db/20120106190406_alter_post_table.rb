class AlterPostTable < ActiveRecord::Migration
  def up
    rename_table :post, :posts
    rename_column :posts, :postid, :id
    rename_column :posts, :threadid, :thread_id
    remove_column :posts, :username
    rename_column :posts, :userid, :user_id
    rename_column :posts, :dateline, :created_at
    rename_column :posts, :editdate, :updated_at
    change_column :posts, :updated_at, :timestamp
    rename_column :posts, :attachmentid, :attachment_id
    rename_column :posts, :pagetext, :content
    remove_column :posts, :allowsmilie
    remove_column :posts, :showsignature
    remove_column :posts, :ipaddress
    rename_column :posts, :iconid, :icon_id
    rename_column :posts, :edituserid, :last_editor
  end
end
