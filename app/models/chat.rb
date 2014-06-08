class Chat < ActiveRecord::Base
	has_many :messages
	has_many :users

  attr_accessible :chat
end
