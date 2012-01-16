class FinalMigration < ActiveRecord::Migration
  def up
    drop_table :attachments
    drop_table :avatars
    drop_table :people
    drop_table :people_attributes
    remove_column :forums, :last_post
    remove_column :forums, :last_poster
    remove_column :forums, :posts_count
    remove_column :posts, :attachment_id
    remove_column :posts, :last_editor
    remove_column :posts, :icon_id
    remove_column :topics, :last_post
    remove_column :topics, :last_poster
    remove_column :topics, :original_poster
    remove_column :users, :lastpost
    remove_column :users, :avatar_id
    remove_column :users, :topics_count
  end
end
