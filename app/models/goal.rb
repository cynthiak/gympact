class Goal < ActiveRecord::Base

	#######################################################
	# Specifies Associations
	# Read more about Rails Associations here: http://guides.rubyonrails.org/association_basics.html
	belongs_to :user
	belongs_to :pact
	belongs_to :week

	#######################################################
	# Makes it so that you can edit these database columns via ActiveAdmin and forms
  attr_accessible :goal, :user_id, :pact_id, :week_id
end
