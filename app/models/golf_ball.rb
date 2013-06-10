class GolfBall < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :brand, :name, :description, :year, :price
  validates_numericality_of :year, :price

end
