class Message < ActiveRecord::Base
  attr_accessible :message, :pact_id, :user_id, :date_sent, :time_sent_in_seconds, :photo_url

  belongs_to :pact
  belongs_to :user

  has_many :workouts

  alias_attribute :name, :message
end
