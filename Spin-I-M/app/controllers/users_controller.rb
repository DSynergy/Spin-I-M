class UsersController < ApplicationController
  # skip_before_filter :user_logged_in_check

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to playlists_path
      flash[:success] = "Welcome to Your Spin-I-M"
    else
      # flash[:error] = @user.errors.full_messages
      redirect_to new_user_path
      # investigate this some more, why render :new don't work no more
    end
  end

  def show
    @user = User.find_by(id: current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
