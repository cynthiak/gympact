class Message < ActiveRecord::Base
  attr_accessible :date_sent, :message, :time_sent
end
