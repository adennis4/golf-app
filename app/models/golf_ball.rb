class GolfBall < ActiveRecord::Base
  has_many :users
  has_many :reviews

  validates_presence_of :brand, :name, :description, :year, :price
  validates_numericality_of :year, :price

end
