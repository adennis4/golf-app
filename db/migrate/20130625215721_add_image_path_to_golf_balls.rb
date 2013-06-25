class AddImagePathToGolfBalls < ActiveRecord::Migration
  def change
    add_column :golf_balls, :image_path, :string
  end
end
