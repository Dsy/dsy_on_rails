class AddStarterIdToTopicsTable < ActiveRecord::Migration
  def change
    add_column :topics, :starter_id, :integer
  end
end
