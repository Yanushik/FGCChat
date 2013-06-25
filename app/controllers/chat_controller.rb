class ChatController < ApplicationController
  def chatroom
  @servers = ["irc.arcti.ca"]

  @streamlist = Stream.all
  @default = "FGC_Cat"
  end
  
  def changechannel
  end
end
