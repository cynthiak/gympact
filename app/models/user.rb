class User < ActiveRecord::Base
	has_and_belongs_to_many :pacts

	has_many :messages
	has_many :photos
	has_many :weeks
	has_many :workouts

  attr_accessible :avatar_url, :email, :first_name, :last_name, :username
end
