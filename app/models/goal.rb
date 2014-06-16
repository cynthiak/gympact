class Goal < ActiveRecord::Base
	belongs_to :user
	belongs_to :pact
	belongs_to :week

  attr_accessible :goal, :user_id, :pact_id, :week_id
end
