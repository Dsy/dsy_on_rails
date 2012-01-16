class ManyAttributesCanBeNullInPostsTable < ActiveRecord::Migration
  def up
    change_column :posts, :title, :string, limit: 100, null: true
    change_column :posts, :updated_at, :datetime, null: true
  end

  def down
  end
end
