class AddUpdatedAtToTopicTable < ActiveRecord::Migration
  def change
    add_column :topics, :updated_at, :datetime
  end
end
