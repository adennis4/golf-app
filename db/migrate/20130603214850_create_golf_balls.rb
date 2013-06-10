class CreateGolfBalls < ActiveRecord::Migration
  def change
    create_table :golf_balls do |t|
      t.string :brand
      t.string :name
      t.string :description
      t.string :year
      t.decimal :price
      t.integer :purchased
      t.references :user

      t.timestamps
    end
  end
end
