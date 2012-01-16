class DeleteTimestampsFromTopicsTable < ActiveRecord::Migration
  def up
    remove_column :topics, :created_at
    remove_column :topics, :updated_at
  end
end
