class AlterAvatarTable < ActiveRecord::Migration
  def up
    rename_column :avatar, :avatardata, :data
  end
end
