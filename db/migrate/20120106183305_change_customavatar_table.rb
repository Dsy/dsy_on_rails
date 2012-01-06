class ChangeCustomavatarTable < ActiveRecord::Migration
  def change
    rename_table  :customavatar, :avatar
    rename_column :avatar, :userid, :user_id
    rename_column :avatar, :dateline, :created_at
    add_column    :avatar, :updated_at, :timestamp
  end
end
