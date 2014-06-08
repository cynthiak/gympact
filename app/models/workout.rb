class Workout < ActiveRecord::Base
  attr_accessible :distance, :duration, :is_makeup_workout, :pace, :video1, :video2, :workout_description, :workout_name
end
