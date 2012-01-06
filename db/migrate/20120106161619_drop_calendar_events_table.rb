class DropCalendarEventsTable < ActiveRecord::Migration
  def up
    drop_table :calendar_events
  end
end
