class ChatController < ApplicationController
  def chatroom
  @streamlist = Stream.all
  @default = "FGC_Cat"
  end
  
  def changechannel
  end
end
