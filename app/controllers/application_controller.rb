class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :render_sidebar, :current_pact, :current_week

  def render_sidebar
  	@pacts = Pact.where(is_active: true)
		@current_pact = current_pact
		@current_week = current_week
  end

  def current_pact
  	if(params.has_key?(:pact_id))
  		Pact.find(params[:pact_id])
  	end
  end

  def current_week
  	if(params.has_key?(:week_id))
  		Week.find(params[:week_id])
  	#else
  		#find this week
  	end
  end

  

end
