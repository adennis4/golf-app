class AddGolfBallIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :golf_ball_id, :integer
  end
end
