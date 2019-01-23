class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :section
      t.string :remote_image_url

      t.timestamps
    end
  end
end
