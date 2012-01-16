class DropUseractivationTable < ActiveRecord::Migration
  def up
    drop_table :useractivation
  end
end
