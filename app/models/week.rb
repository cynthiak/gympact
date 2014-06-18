class Week < ActiveRecord::Base
	belongs_to :pact

  attr_accessible :end_date, :start_date, :week_number, :pact_id

end
