class Message < ActiveRecord::Base

	#######################################################
	# Specifies Associations
	# Read more about Rails Associations here: http://guides.rubyonrails.org/association_basics.html
  belongs_to :pact
  belongs_to :user

  has_many :workouts

  #######################################################
	# Makes it so that when you print the "Message" object, you print the message instead of the "#<ActiveRecord>blahblah" object name
  alias_attribute :name, :message


  #######################################################
	# Makes it so that you can edit these database columns via ActiveAdmin and forms
	attr_accessible :message, :pact_id, :user_id, :date_sent, :time_sent_in_seconds, :photo_url


	#######################################################
  # OBJECT ACTIONS
  # Actions you'd want to do on a Message object

  def get_workouts
  	# return all workouts associated with this message (photo)
  end

end
