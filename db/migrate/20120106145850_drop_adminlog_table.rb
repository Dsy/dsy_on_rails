class DropAdminlogTable < ActiveRecord::Migration
  def up
    drop_table :adminlog
  end
end
