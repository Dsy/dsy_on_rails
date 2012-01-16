class DropTimetickTable < ActiveRecord::Migration
  def up
    drop_table :timetick
  end
end
