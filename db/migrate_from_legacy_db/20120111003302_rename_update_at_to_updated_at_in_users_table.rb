class RenameUpdateAtToUpdatedAtInUsersTable < ActiveRecord::Migration
  def up
    rename_column :users, :update_at, :updated_at
  end
end
