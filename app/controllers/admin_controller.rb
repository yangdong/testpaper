class AdminController < ApplicationController
  def index
  	user = User.find_by_name(session[:user].name)
  	@papers = user.papers
  end
end
