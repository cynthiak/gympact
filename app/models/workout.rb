class Workout < ActiveRecord::Base
	has_many :workout_types
	belongs_to :user
	belongs_to :photo

  attr_accessible :distance, :duration, :is_makeup_workout, :pace, :video1, :video2, :workout_description, :workout_name
end
