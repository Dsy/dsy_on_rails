class DropBbcodeTable < ActiveRecord::Migration
  def up
    drop_table :bbcode
  end

end
