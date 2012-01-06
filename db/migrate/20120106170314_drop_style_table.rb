class DropStyleTable < ActiveRecord::Migration
  def up
    drop_table :style
  end
end
