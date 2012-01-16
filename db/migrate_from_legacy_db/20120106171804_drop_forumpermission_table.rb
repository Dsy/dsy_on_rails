class DropForumpermissionTable < ActiveRecord::Migration
  def up
    drop_table :forumpermission
  end
end
