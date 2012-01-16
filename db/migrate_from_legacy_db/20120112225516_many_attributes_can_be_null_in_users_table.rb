class ManyAttributesCanBeNullInUsersTable < ActiveRecord::Migration
  def up
    change_column :users, :homepage,   :string,   null: true, limit: 100
    change_column :users, :icq,        :string,   null: true, limit: 20
    change_column :users, :aim,        :string,   null: true, limit: 20
    change_column :users, :yahoo,      :string,   null: true, limit: 20
    change_column :users, :signature,  :string,   null: true, limit: 10000
    change_column :users, :last_visit, :datetime, null: true
    change_column :users, :gender,     :string,   null: true, limit: 20
    change_column :users, :updated_at, :datetime, null: true
  end
end
