class TrackingController < ApplicationController

	def show
		@pact = Pact.find(params[:pact_id])
		@pact_user_relations = PactUserRelation.where(pact_id: params[:pact_id]).order(:user_id)
  end


  
end
