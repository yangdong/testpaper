class SessionsController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]

  def new
    if session[:user]
      redirect_to admin_url
    end
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user] = user
      redirect_to admin_url
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user] = nil
    redirect_to login_url, :status => 200
  end
end
