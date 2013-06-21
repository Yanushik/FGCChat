class ChatController < ApplicationController
  def chatroom
  @servers = ["irc.arcti.ca",
			 "irc.choopa.net",
			 "irc.colosolutions.net",
			 "irc.eversible.com",
		     "irc.mzima.net",
			 "irc.paraphysics.net",
			 "irc.Prison.NET",
             "irc.servercentral.net",
			 "irc.SHOUTcast.com",
			 "irc.teksavvy.ca",
			 "irc.umich.edu"]
  @streamlist = Stream.all
  @default = "FGC_Cat"
  end
  
  def changechannel
  end
end
