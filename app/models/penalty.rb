class Penalty < ActiveRecord::Base
  attr_accessible :goal_days, :penalty

  belongs_to :pact

  alias_attribute :name, :goal_days
end
