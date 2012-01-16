class DropIconTable < ActiveRecord::Migration
  def up
    drop_table :icon
  end
end
