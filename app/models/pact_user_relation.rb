class PactUserRelation < ActiveRecord::Base
	belongs_to :pact 
	belongs_to :user
  

  attr_accessible :pact_id, :user_id
end
