class ChangeLastPostToTimestampTypeInForumsTable < ActiveRecord::Migration
  def up
    change_column :forums, :last_post, :timestamp
  end
end
