class AddLastPostIdToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :last_post_id, :integer
  end
end
