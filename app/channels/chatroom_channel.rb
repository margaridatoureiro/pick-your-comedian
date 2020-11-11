class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom # as if we were saying chatroom_1
    # stream_from "some_channel"
    # (we could have used stream_for "general" if we only had one channel)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
