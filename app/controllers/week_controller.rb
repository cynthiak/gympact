class WeekController < ApplicationController
	def show
		@pact = Pact.find(params[:pact_id])
  end

  def email
  	@pact = Pact.find(params[:pact_id])
  end
end
