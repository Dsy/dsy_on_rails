class DropSettingsTables < ActiveRecord::Migration
  def up
    drop_table :setting
    drop_table :settinggroup
  end
end
