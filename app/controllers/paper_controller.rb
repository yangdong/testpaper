class PaperController < ApplicationController
  def new
  end

  def create
  	paper = Paper.new(:name => params[:name], :description => params[:description])
  	paper.save
  	redirect_to paper_url, status => 302
  end
end
