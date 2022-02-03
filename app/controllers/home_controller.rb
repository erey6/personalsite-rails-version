class HomeController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end
  def about
  end
  def past
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("covers/*")
    end
  end
end
