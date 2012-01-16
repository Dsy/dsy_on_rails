class DropUserfieldTable < ActiveRecord::Migration
  def up
    drop_table :userfield
  end
end
