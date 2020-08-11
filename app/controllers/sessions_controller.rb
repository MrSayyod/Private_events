class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(username: params[:username])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Welcome back, #{user.username}"
      redirect_to user
    else
      flash.now[:alert] = "Invalid username"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
