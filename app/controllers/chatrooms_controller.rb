# frozen_string_literal: true

# top-level class comment
class ChatroomsController < ApplicationController
  def general_channel
    @chatroom = Chatroom.find(1)
    @message = Message.new
  end

  # def show
  #   @chatroom = Chatroom.find(params[:id])
  #   @message = Message.new
  # end
end
