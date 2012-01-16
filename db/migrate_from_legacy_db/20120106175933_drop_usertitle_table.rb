class DropUsertitleTable < ActiveRecord::Migration
  def up
    drop_table :usertitle
  end
end
