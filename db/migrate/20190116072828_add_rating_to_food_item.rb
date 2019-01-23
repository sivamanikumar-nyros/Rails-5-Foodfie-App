class AddRatingToFoodItem < ActiveRecord::Migration[5.2]
  def change
    add_column :food_items, :rating, :integer
  end
end
