class Message < ActiveRecord::Base
  attr_accessible :date_sent, :message, :time_sent

  belongs_to :chat
  belongs_to :user

  has_one :photo
end
