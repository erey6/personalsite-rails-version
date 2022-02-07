class HomeController < ApplicationController
  def index
    @projects = Project.all.order(:id)
    render :index
  end
  def about
  end
  def past
  end
end
