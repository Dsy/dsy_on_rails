class AddLastPostAndPostsCountToForumsTable < ActiveRecord::Migration
  def change
    add_column :forums, :last_post,   :integer
    add_column :forums, :posts_count, :integer
  end
end
