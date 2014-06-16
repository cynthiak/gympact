class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :render_sidebar

  def render_sidebar
  	@pacts = Pact.where(is_active: true)
  	@current_pact = Pact.find(params[:pact_id])
  end
end
