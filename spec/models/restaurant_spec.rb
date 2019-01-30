require 'rails_helper'

RSpec.describe Restaurant, type: :model do
	context 'validation tests' do 
		
		it "is not valid without a name , address,phone,location_id" do
  			restaurant = Restaurant.new(name: nil,address: nil,phone: nil,location_id: nil )
  			expect(restaurant).to_not be_valid
		end

		
		it "restaurants and its available dishes" do
			Restaurant.select('food_items.id','food_items.name as "Name of the dish"','restaurants.name as "Name of the restaurant"').joins(:food_items)
		end

		it "success" do
			restaurant = Restaurant.all
		end
	end

	
	context 'scope tests' do 
	end
end

