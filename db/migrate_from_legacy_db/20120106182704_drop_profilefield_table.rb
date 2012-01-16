class DropProfilefieldTable < ActiveRecord::Migration
  def up
    drop_table :profilefield
  end
end
