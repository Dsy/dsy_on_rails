class DropJournalTables < ActiveRecord::Migration
  def up
    drop_table :journal
    drop_table :journal_comments
    drop_table :journal_entry
  end
end
