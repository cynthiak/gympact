class User < ActiveRecord::Base
	has_many :pacts

	has_many :messages
	has_many :photos

	has_many :weeks
	has_many :workouts	

	validates_uniqueness_of :email

	# Makes display nicer
	alias_attribute :name, :username
	def to_s
  	"#{username}"
  end

  attr_accessible :first_name, :username, :last_name, :avatar_url, :email
end
