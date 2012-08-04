class AdminController < ApplicationController
  def index
    @papers = Paper.find_all_by_user_id(session[:user].id)
  end
end
