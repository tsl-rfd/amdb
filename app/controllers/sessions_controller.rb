class SessionsController < ApplicationController
  
  def destroy
    session["user_id"] = nil
    redirect_to movies_url, :notice => "Goodbye!"
  end
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user.authenticate(params[:password])
      session["user_id"] = user.id
      flash[:notice] = "Thanks for logging in, #{user.name}."
      redirect_to movies_url, :notice => "Welcome back."
    else
      flash[:notice] = "Please try again."
      render 'new'
    end
    
  end
end