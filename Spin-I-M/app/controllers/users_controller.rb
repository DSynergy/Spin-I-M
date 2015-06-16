class UsersController < ApplicationController
  # skip_before_action :user_logged_in_check, only: [:new, :create]
  # before_filter :authorize!

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to playlists_path
      flash[:notice] = "Welcome to Your Spin-I-M"
    else
      # flash[:error] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def authorize!
    if current_user.nil?
      redirect_to login_path, alert: "You Can't Go There..."
    end
  end
end
