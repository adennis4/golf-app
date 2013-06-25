class MiniDescriptionColumnToGolfBalls < ActiveRecord::Migration
  def change
    add_column :golf_balls, :mini_description, :text, :limit => nil
  end
end
