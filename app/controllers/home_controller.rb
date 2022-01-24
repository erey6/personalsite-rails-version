class HomeController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end
  def about
  end
end
