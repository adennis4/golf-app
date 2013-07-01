class Review < ActiveRecord::Base
  belongs_to :golf_ball
  belongs_to :user

  validates_presence_of :title, :body, :rating
end
