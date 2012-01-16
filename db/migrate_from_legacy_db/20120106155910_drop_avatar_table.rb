class DropAvatarTable < ActiveRecord::Migration
  def up
    drop_table :avatar
  end
end
