class Api::V1::VideosController < Api::V1::ApiController
  before_action :set_video, only: [:update]

  def update
    if @video.update_attributes(view_count: @video.view_count + video_params[:view_count].to_i)
      render json: @video, only: [:view_count]
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  private

    def increases_video_count
      
    end

    def set_video
      @video = Video.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:view_count)
    end
end
