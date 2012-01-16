class ChangeTimestampsTypeFromTimestampToDatetimeEverywhere < ActiveRecord::Migration
  def up
    change_column :attachments, :created_at, :datetime
    change_column :avatars,     :created_at, :datetime
    change_column :people,      :created_at, :datetime
    change_column :posts,       :created_at, :datetime
  end

  def down
  end
end
