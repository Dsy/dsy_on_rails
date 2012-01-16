class DropModeratorTable < ActiveRecord::Migration
  def up
    drop_table :moderator
  end
end
