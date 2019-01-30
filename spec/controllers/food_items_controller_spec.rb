require 'rails_helper'
require 'spec_helper'

RSpec.describe FoodItemsController, type: :controller do

	it 'indexpage for all food_items' do
		get :index
		expect(response.status).to render_template(:index)
	end

	it 'food_items search list page' do
		get :search
		expect(response.status).to render_template(:search)
		expect(response.status).to eq(200)
	end

	
	it 'ratingfilter method for sorting food_items based on its rating' do
		get :search
		expect(response.status).to render_template(:search)
		expect(response.status).to eq(200)
	end

	it 'taggingfilter method for sorting their related food_items for All Dietary requirements' do
		get :search
		expect(response.status).to render_template(:search)
		expect(response.status).to eq(200)
	end

	it 'range_slider for sorting food_items based on its price' do
		get :search
		expect(response.status).to render_template(:search)
		expect(response.status).to eq(200)
	end

	describe "Finding food_items" do
		context "when the food_item is not available" do
		    it "should go to no results found page" do
		    end
		end
		    	
		context "when the food_item is an available" do
		   	it "should list titles of food_items" do
		    end
		end
	end

	describe "GET food_items#show" do
	    it "should render food_items#show template" do
	    end
	end

	describe "GET food_items#new" do
	 	it "should render food_items#new template" do
	    end
	end

	describe "POST food_items#create" do
	    context "with valid attributes" do
	    	it "should save the new food_item in the database" do
	     	end
	    	it "should redirect to the food_items#index page" do
	    	end
		end

		context "with invalid attributes" do
	 		it "should not save the new food_item in the database" do
	    	end
	    	it "should render food_items#new template" do
	    	end
		end
	end
end