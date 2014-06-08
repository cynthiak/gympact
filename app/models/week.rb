class Week < ActiveRecord::Base
	belongs_to :pact

  attr_accessible :charge, :end_date, :goal_days, :missed_days, :paid, :start_date, :week_number
end
