# frozen_string_literal: true

# top-level class comment
class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(@chatroom, render_to_string(partial: 'message', locals: { message: @message }))
      # redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
      redirect_to general_channel_chatrooms_path(anchor: "message-#{@message.id}")
    else
      render 'chatrooms/general_channel'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
