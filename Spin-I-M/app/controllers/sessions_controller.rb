class SessionsController < ApplicationController

  def create
   @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      flash[:notice] = "Successfully logged in as #{set_name(@user)}"
      session[:user_id] = @user.id
      redirect_to playlists_path
    else
      flash[:error] = "Login failed"
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have been logged out"
    redirect_to root_path
  end

end
