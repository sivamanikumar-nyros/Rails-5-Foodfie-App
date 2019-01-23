class AddTaggingIdToFoodItem < ActiveRecord::Migration[5.2]
  def change
    add_column :food_items, :tagging_id, :integer
  end
end
