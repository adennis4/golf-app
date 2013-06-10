class RemoveUserIdFromGolfBalls < ActiveRecord::Migration
  def change
    remove_column :golf_balls, :user_id
  end
end
