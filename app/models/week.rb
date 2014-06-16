class Week < ActiveRecord::Base
	belongs_to :pact

	alias_attribute :name, :week_number

  attr_accessible :end_date, :start_date, :week_number, :pact_id
end
