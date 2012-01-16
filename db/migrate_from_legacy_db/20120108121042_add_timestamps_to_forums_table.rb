class AddTimestampsToForumsTable < ActiveRecord::Migration
  def change
    change_table :forums do |t|
      t.timestamps
    end
  end
end
