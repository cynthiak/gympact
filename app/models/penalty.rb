class Penalty < ActiveRecord::Base
	
  attr_accessible :goal, :penalty, :pact_id

  belongs_to :pact

  alias_attribute :name, :goal
end
