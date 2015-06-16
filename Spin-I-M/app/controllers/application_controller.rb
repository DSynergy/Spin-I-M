class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :user_logged_in_check
  helper_method :current_user

  def user_logged_in_check
    if current_user.nil?
      flash[:alert] = "Unauthorized Access!"
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
