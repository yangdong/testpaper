class PaperController < ApplicationController
  skip_before_filter :require_login

  def new
  end

  def create
  end
end
