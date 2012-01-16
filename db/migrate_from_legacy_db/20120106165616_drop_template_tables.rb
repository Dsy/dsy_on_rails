class DropTemplateTables < ActiveRecord::Migration
  def up
    drop_table :template
    drop_table :templateset
  end
end
