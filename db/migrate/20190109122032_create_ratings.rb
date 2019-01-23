class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :food_item_id
      t.decimal :rating
      t.text :comment

      t.timestamps
    end
  end
end
