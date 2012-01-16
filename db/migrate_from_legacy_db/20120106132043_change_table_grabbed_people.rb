class ChangeTableGrabbedPeople < ActiveRecord::Migration
  def change
    rename_table  :GrabbedPeople, :people
    rename_column :people, :nome, :name
    rename_column :people, :cognome, :surname
    rename_column :people, :timestamp, :created_at
    add_column    :people, :updated_at, :timestamp
  end
end
