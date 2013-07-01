class Api::V1::ReviewsController < ActionController::Base
  def index
    render json: Review.where(golf_ball_id: params[:id])
  end
end
