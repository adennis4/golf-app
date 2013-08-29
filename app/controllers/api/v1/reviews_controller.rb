class Api::V1::ReviewsController < ActionController::Base

  def index
    render json: Review.all
  end
end
