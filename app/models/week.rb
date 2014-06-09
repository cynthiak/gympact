class Week < ActiveRecord::Base
	belongs_to :pact

	alias_attribute :name, :week_number

  attr_accessible :charge, :end_date, :goal_days, :missed_days, :paid, :start_date, :week_number
end
