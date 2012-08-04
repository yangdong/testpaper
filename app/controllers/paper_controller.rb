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
    redirect_to admin_url, status => 302
  end
end
