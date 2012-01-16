class DropPrivatemessageTable < ActiveRecord::Migration
  def up
    drop_table :privatemessage
  end
end
