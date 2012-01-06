class DropVbstatsTables < ActiveRecord::Migration
  def up
    drop_table :vbstats_counter
    drop_table :vbstats_countries
    drop_table :vbstats_date
    drop_table :vbstats_exclude
    drop_table :vbstats_options
    drop_table :vbstats_referrer
  end
end
