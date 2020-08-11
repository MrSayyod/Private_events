class ApplicationController < ActionController::Base
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_signin
    unless current_user
      redirect_to new_session_path, alert: "Please, sign in first!"
    end
  end

  def require_correct_user
    user = User.find(params[:id])
    unless current_user == user
      redirect_to root_path
    end
  end
end
