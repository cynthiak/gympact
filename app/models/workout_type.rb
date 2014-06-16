class WorkoutType < ActiveRecord::Base
	belongs_to :workout
	alias_attribute :name, :workout_type
	
  attr_accessible :workout_type, :workout_id
end
