class Penalty < ActiveRecord::Base
  attr_accessible :goal_days, :penalty

  belongs_to :pact
end
