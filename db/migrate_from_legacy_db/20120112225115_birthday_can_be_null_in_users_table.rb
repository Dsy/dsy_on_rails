class BirthdayCanBeNullInUsersTable < ActiveRecord::Migration
  def up
    change_column :users, :birthday, :date, null: true
  end
end
