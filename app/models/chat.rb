class Chat < ActiveRecord::Base
	has_many :messages
	has_many :users

	belongs_to :pact

  attr_accessible :chat
end
