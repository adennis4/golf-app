class ChangeDescriptionLengthOfGolfBalls < ActiveRecord::Migration
  def change
    change_column :golf_balls, :description, :text, :limit => nil
  end
end
