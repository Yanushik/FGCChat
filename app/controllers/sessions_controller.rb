class SessionsController < ApplicationController
  def new
  end
  
  def create
    #user = Admin.find_by_username(params[:email])
	user = Admin.find_by_username(params[:email])
    #if user && user.authenticate(params[:password])
	if user && user.password == params[:password]
      session[:user_username] = user.username
	  flash.now.alert = "LOGGED IN"
      redirect_to addstream_path#index, notice: "Logged in!"
	  
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
  
  def destroy
    session[:user_username] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end