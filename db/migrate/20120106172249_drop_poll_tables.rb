class DropPollTables < ActiveRecord::Migration
  def up
    drop_table :poll
    drop_table :pollvote
  end
end
