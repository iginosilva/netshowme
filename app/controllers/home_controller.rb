class HomeController < ApplicationController
  def index
    @videos = Video.activated.order(view_count: :desc)
  end

  def show
    @video = Video.find_by(id: params[:id])
  end
end
