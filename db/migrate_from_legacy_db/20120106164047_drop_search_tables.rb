class DropSearchTables < ActiveRecord::Migration
  def up
    drop_table :word
    drop_table :search
    drop_table :searchindex
  end
end
