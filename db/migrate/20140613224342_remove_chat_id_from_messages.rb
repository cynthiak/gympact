class RemoveChatIdFromMessages < ActiveRecord::Migration
  def up
    remove_column :messages, :chat_id
  end

  def down
    add_column :messages, :chat_id, :integer
  end
end
