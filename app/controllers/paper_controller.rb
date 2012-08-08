class PaperController < ApplicationController
  def new
  end

  def create
    paper = Paper.new({
        :name => params[:name],
        :description => params[:description],
        :user_id => session[:user].id
    })

    paper.save
    redirect_to admin_path, status => 302
  end

  def show
    @paper = Paper.find_by_name params[:name]
  end
end
