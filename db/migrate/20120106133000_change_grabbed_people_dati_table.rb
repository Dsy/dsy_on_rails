class ChangeGrabbedPeopleDatiTable < ActiveRecord::Migration
  def change
    rename_table  :GrabbedPeople_dati, :people_attributes
    rename_column :people_attributes, :attributo, :attribute
    rename_column :people_attributes, :val, :value
    change_table  :people_attributes do |t|
      t.timestamps
    end
  end
end
