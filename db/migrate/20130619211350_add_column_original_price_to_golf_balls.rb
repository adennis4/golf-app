class AddColumnOriginalPriceToGolfBalls < ActiveRecord::Migration
  def change
    add_column :golf_balls, :original_price, :decimal
  end
end
