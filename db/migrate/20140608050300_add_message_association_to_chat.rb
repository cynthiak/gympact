class AddMessageAssociationToChat < ActiveRecord::Migration
  def self.up
    add_column :messages, :chat_id, :integer
    add_index 'messages', ['chat_id'], :name => 'index_chat_id' 
  end

  def self.down
    remove_column :messages, :chat_id
  end
end
