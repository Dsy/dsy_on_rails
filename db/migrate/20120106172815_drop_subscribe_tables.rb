class DropSubscribeTables < ActiveRecord::Migration
  def up
    drop_table :subscribeforum
    drop_table :subscribethread
  end
end
