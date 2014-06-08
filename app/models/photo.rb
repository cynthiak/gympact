class Photo < ActiveRecord::Base
	has_many :workouts

  attr_accessible :notes, :photo_url
end
