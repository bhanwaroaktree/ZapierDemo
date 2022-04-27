class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = current_user.messages.new
  end

  def create
    @message = current_user.messages.new(message_params)
    if @message.save
      redirect_to messages_path
    end
  end


  private

  def message_params
    params.require(:message).permit!
  end
end
