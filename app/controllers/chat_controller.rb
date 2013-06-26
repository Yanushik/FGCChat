class ChatController < ApplicationController
  def chatroom
  @servers = [
    "irc.inet.tele.dk"]

  @streamlist = Stream.all
  @default = "FGC_Cat"
  end
  
  def changechannel
  end
end
