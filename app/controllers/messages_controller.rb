class MessagesController < ApplicationController
  def create
    model = Message.create params_model
    json  = model.to_json
    channel = "private-conversation.#{params[:user_id]}"
    Pusher[channel].trigger 'messages/create', json
  end

  private

  def params_model
    params.require(:message).permit(:id, :body, :user_id)
  end
end
