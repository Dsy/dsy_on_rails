class DropAccessTable < ActiveRecord::Migration
  def up
    drop_table :access
  end
end
