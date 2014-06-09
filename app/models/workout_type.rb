class WorkoutType < ActiveRecord::Base
	alias_attribute :name, :workout_type
	
  attr_accessible :workout_type
end
