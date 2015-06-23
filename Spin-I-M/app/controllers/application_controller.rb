class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :user_logged_in_check
  helper_method :current_user, :queue

  def user_logged_in_check
    if current_user.nil?
      redirect_to login_path
      flash[:alert] = "You must be signed in to view that page"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end



end
