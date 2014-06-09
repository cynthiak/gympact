class User < ActiveRecord::Base
	has_many :pacts

	has_many :messages
	has_many :photos

	has_many :weeks
	has_many :workouts	

	alias_attribute :name, :photo_url

  attr_accessible :first_name, :username, :username, :avatar_url, :email
end
