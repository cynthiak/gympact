class Workout < ActiveRecord::Base
	has_many :workout_types
	belongs_to :user
	belongs_to :photo
	belongs_to :week

	alias_attribute :name, :workout_description

  attr_accessible :distance, :duration, :is_makeup_workout, :pace, :video1, :video2, :workout_description, :workout_name, :sent, :photo_id, :user_id, :week_id
end
