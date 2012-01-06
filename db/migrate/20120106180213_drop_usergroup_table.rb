class DropUsergroupTable < ActiveRecord::Migration
  def up
    drop_table :usergroup
  end
end
