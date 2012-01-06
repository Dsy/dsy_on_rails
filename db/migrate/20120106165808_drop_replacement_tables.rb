class DropReplacementTables < ActiveRecord::Migration
  def up
    drop_table :replacement
    drop_table :replacementset
  end
end
