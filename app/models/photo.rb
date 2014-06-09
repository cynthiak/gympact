class Photo < ActiveRecord::Base
	has_many :workouts
	belongs_to :message

  attr_accessible :notes, :photo_url

  alias_attribute :name, :photo_url
end
