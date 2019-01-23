class CreateFoodItemsRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items_restaurants do |t|
      t.integer :food_item_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
