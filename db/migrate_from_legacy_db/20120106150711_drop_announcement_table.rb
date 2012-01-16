class DropAnnouncementTable < ActiveRecord::Migration
  def up
    drop_table :announcement
  end

end
