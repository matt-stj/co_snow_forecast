class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(username: params[:session][:username])
        redirect_to @user
        flash[:success] = "Logged in as #{@user.username}"
    else
      flash[:notice] = 'Invalid Login'
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    flash[:notice] = "Thanks for visiting."
    redirect_to login_path
  end
end
