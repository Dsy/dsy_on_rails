class DropMailaliasTable < ActiveRecord::Migration
  def up
    drop_table :mailalias
  end
end
