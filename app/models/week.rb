class Week < ActiveRecord::Base
  attr_accessible :charge, :end_date, :goal_days, :missed_days, :paid, :start_date, :week_number
end
