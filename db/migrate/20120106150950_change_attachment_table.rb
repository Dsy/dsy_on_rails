class ChangeAttachmentTable < ActiveRecord::Migration
  def change
    rename_table :attachment, :attachments
    rename_column :attachments, :attachmentid, :id
    rename_column :attachments, :userid, :user_id
    rename_column :attachments, :dateline, :created_at
    add_column    :attachments, :updated_at, :timestamp
  end
end
