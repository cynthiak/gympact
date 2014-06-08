class User < ActiveRecord::Base
	has_many :pacts

	has_many :messages
	has_many :photos

	has_many :weeks
	has_many :workouts	

  attr_accessible :first_name, :last_name, :username, :avatar_url, :email
end
