class ChatController < ApplicationController
  def new
  end

  def show
  	@pact = Pact.find(params[:pact_id])
  	@messages = Message.where(pact_id: params[:pact_id]).order(:date_sent)
  end

end
