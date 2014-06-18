class ChatController < ApplicationController
  def new
  end

  def show
  	@messages = Message.where(pact_id: params[:pact_id]).order(:date_sent)
  end

end
