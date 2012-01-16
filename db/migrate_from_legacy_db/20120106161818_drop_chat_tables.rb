class DropChatTables < ActiveRecord::Migration
  def up
    drop_table :chat_ban_users
    drop_table :chat_messages
    drop_table :chat_users
  end
end
