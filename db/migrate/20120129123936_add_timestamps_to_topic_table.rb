class AddTimestampsToTopicTable < ActiveRecord::Migration
  def change
    change_table :topics do |t|
      t.timestamps
    end
  end
end
