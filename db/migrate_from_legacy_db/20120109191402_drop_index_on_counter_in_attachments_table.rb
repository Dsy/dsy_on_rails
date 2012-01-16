class DropIndexOnCounterInAttachmentsTable < ActiveRecord::Migration
  def up
    remove_index :attachments, :name => :counter
  end
end
