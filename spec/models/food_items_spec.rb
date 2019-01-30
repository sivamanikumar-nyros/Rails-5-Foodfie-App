require 'rails_helper'

RSpec.describe FoodItem, type: :model do
	context 'validation tests' do 
		
		it "is not valid without a name , description,price,section,rating,tagging_id" do
  			food_item = FoodItem.new(name: nil,description: nil,price: nil,section: nil ,rating: nil,tagging_id: nil )
  			expect(food_item).to_not be_valid
		end

		it "food_items and its related restaurants" do
			FoodItem.select('restaurants.id','restaurants.name as "Name of the Restaurant"','food_items.name as "Name of the food_item"').joins(:restaurants)
		end

		it "sorting food_items by price" do
			food_item = FoodItem.order(:price)
		end

		it "sorting food_items by rating" do
			food_item = FoodItem.order(:rating)
		end

		it "sorting food_items by All dietary requirements" do
			food_item = FoodItem.where(tagging_id: [1,2,3,4,5])
		end

		it "it display all food_items" do
			food_item = FoodItem.all
		end

		it "finds a searched food_item by name" do
    		food_item = FoodItem.where(name: 'Icecream')
    		
  		end
  		
	end

	context 'scope tests' do
		
	end
end
