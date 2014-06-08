class PactUserRelation < ActiveRecord::Base
	belongs_to :pact 
	belongs_to :user
  # attr_accessible :title, :body
end
