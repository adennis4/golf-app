class Api::V1::GolfBallsController < ActionController::Base

  def index
    render json: GolfBall.all
  end

  def show
    render json: GolfBall.find(params[:id])
  end
end
