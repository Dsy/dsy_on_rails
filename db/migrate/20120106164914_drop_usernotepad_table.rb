class DropUsernotepadTable < ActiveRecord::Migration
  def up
    drop_table :usernotepad
  end
end
