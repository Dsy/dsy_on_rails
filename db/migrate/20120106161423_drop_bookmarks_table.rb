class DropBookmarksTable < ActiveRecord::Migration
  def up
    drop_table :bookmarks
  end
end
