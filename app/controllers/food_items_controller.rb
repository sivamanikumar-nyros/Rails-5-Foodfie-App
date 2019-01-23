class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy]

  # GET /food_items
  # GET /food_items.json
  def index
    @food_item = if params[:search]
      FoodItem.where('name LIKE ?',"%#{params[:search]}%")
    
  else
    food_item = FoodItem.order(:price)
  end
  end

  # GET /food_items/1
  # GET /food_items/1.json
  def show
  end
  
  

 def search
    gon.locations = Location.all.select(:latitude, :longitude)
    @food_item = FoodItem.where('name LIKE ?',"%#{params[:term]}%")

    @taggings = Tagging.all

    if params[:filter]
      @food_item = FoodItem.order(params[:filter]).where('name LIKE ?',"%#{params[:term]}%")
      elsif params[:ratingfilter]
        @food_item = FoodItem.where('rating > ? ', params[:ratingfilter] ).where('name LIKE ?',"%#{params[:term]}%")
      elsif params[:taggingfilter]
        @food_item =  FoodItem.where(tagging_id: params[:taggingfilter]).where('name LIKE ?',"%#{params[:term]}%")
      elsif params[:min] and params[:max]
        @food_item =  FoodItem.where('price BETWEEN ? AND ?', params[:min], params[:max]).where('name LIKE ?',"%#{params[:term]}%")
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  
  # GET /food_items/new
  def new
    @food_item = FoodItem.new
  end

  # GET /food_items/1/edit
  def edit
  end

  # POST /food_items
  # POST /food_items.json
  def create
    @food_item = FoodItem.new(food_item_params)

    respond_to do |format|
      if @food_item.save
        format.html { redirect_to @food_item, notice: 'Food item was successfully created.' }
        format.json { render :show, status: :created, location: @food_item }
      else
        format.html { render :new }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_items/1
  # PATCH/PUT /food_items/1.json
  def update
    respond_to do |format|
      if @food_item.update(food_item_params)
        format.html { redirect_to @food_item, notice: 'Food item was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_items/1
  # DELETE /food_items/1.json
  def destroy
    @food_item.destroy
    respond_to do |format|
      format.html { redirect_to food_items_url, notice: 'Food item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_item
      @food_item = FoodItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_item_params
      params.require(:food_item).permit(:name, :description, :price, :section, :image,:search)
    end
end
