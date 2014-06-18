class Week < ActiveRecord::Base
	#######################################################
	# Specifies Associations
	# Read more about Rails Associations here: http://guides.rubyonrails.org/association_basics.html
	belongs_to :pact


	#######################################################
	# Makes it so that you can edit these database columns via ActiveAdmin and forms
  attr_accessible :end_date, :start_date, :week_number, :pact_id
end
