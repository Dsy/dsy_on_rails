class AlterAvatarTableName < ActiveRecord::Migration
  def up
    rename_table :avatar, :avatars
  end
end
