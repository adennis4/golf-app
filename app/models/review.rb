class Review < ActiveRecord::Base
  belongs_to :golf_ball
  belongs_to :user

  validates_presence_of :title, :body, :rating

  def as_json(opts={})
    {
      brand: golf_ball.brand,
      title: self.title,
      body: self.body,
      rating: self.rating
    }
  end
end
