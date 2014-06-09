class Chat < ActiveRecord::Base
	has_many :messages
	has_many :users

	belongs_to :pact

	alias_attribute :name, :created_at 
	
  attr_accessible :chat
end
