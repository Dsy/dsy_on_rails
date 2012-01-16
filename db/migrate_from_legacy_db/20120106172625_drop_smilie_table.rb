class DropSmilieTable < ActiveRecord::Migration
  def up
    drop_table :smilie
  end
end
