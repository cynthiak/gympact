class Pact < ActiveRecord::Base
	has_and_belongs_to_many :users

	has_many :chats
	has_many :messages, through: :chats

	has_many :penalties

	has_many :weeks
	has_many :workouts, through: :weeks

  attr_accessible :end_date, :is_active, :pact_name, :start_date
end
