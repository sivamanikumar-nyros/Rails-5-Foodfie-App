require 'rails_helper'
require 'spec_helper'

RSpec.describe RestaurantsController, type: :controller do
	describe "GET restaurants#show" do
	    it "should render restaurants#show template" do
	    end
	end

	describe "GET restaurants#new" do
	 	it "should render restaurants#new template" do
	    end
	end

	describe "POST restaurants#create" do
	    context "with valid attributes" do
	    	it "should save the new restaurants in the database" do
	     	end
	    	it "should redirect to the restaurants#index page" do
	    	end
		end

		context "with invalid attributes" do
	 		it "should not save the new restaurants in the database" do
	    	end
	    	it "should render restaurants#new template" do
	    	end
		end
	end

	it 'index page for all restaurants' do
		get :index
		expect(response.status).to render_template(:index)
	end
end