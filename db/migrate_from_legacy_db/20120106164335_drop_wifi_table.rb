class DropWifiTable < ActiveRecord::Migration
  def up
    drop_table :wifi
  end
end
