class DropThreadrateTable < ActiveRecord::Migration
  def up
    drop_table :threadrate
  end
end
