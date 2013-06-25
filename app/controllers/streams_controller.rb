class StreamsController < ApplicationController
    def addstream
    if session[:user_username] != nil
      @stream = Stream.new(params[:stream])
      respond_to do |format|
        if @stream.save
          format.html { redirect_to root, notice: 'Stream was successfully added.' }
          format.json { render json: @stream, status: :created, location: @blog }
        else
          format.html { render action: "new" }
          format.json { render json: @stream.errors, status: :unprocessable_entity }
        end
      end
	else
		format.html {redirect_to login_path, notice: 'Please login'}
	end
  end
  
  def newstream
  
    if session[:user_username] != nil
		
	  @stream = Stream.new
	  respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @stream}
      end
	else
	  redirect_to login_path
	end
  end

  def removestream
  end
  
  def index
    @streams = Stream.all
	
    respond_to do |format|
	
      format.html # index.html.erb
      format.json { render json: @streams }
    end
  end  
  def show
	@stream = Stream.find(params[:id])
	
	respond_to do |format|
	  if @stream.blank?
		format.html { redirect_to(root_url, :notice => 'User not found')}
	    
	  else
	  
		format.html # show.html.erb
		format.json { render json: @stream}
	  end
    end
  end	
end
