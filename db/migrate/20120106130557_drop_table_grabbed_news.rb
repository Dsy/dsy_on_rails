class DropTableGrabbedNews < ActiveRecord::Migration
  def up
    drop_table :GrabbedNews
  end
end
