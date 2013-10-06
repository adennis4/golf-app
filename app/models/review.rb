class Review < ActiveRecord::Base
  belongs_to :golf_ball
  belongs_to :user

  validates_presence_of :title, :body, :rating

  def as_json(opts={})
    {
      brand: golf_ball.brand,
      title: title,
      body: body,
      rating: rating
    }
  end
end
