class Addimage < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :food_items,:image
  end
end
