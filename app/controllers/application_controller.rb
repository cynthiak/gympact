class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :render_sidebar, :current_pact, :current_week, :this_week

  def render_sidebar
  	@active_pacts = Pact.where(is_active: true).order(:created_at)
		@current_pact = current_pact
		@current_week = current_week
    @this_week = this_week
  end

  def current_pact
  	if(params.has_key?(:pact_id))
  		Pact.find(params[:pact_id])
    else
      Pact.first
  	end
  end

  def current_week
  	if(params.has_key?(:week_id))
  		Week.find(params[:week_id])
    else
      this_week
  	end
  end

  def this_week(pact=current_pact)
    today = Date.today
    if pact
      week = Week.where(["pact_id = ? and start_date <= ? and end_date >= ?", pact.id, today, today]).first
      if !week
        week = Week.where(["pact_id = ?", pact.id]).last
      end
      week
    else
      nil
    end
  end

end
