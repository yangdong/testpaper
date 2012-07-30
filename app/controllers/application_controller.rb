class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login

  private

  def require_login
    unless session[:user]
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path
    end
  end
end
