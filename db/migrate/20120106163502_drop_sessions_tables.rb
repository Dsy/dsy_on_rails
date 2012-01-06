class DropSessionsTables < ActiveRecord::Migration
  def up
    drop_table :session
    drop_table :session_log
  end
end
