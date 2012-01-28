class ChangeLastPostToLastPostIdInForumsTable < ActiveRecord::Migration
  def up
    rename_column :forums, :last_post, :last_post_id
  end

  def down
  end
end
