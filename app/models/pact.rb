class Pact < ActiveRecord::Base
  attr_accessible :end_date, :is_active, :pact_name, :start_date
end
