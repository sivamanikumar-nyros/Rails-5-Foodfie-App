class DishesController < ApplicationController
  def index
    @dishes = if params[:term]
      Dish.where(name: params[:term])
    
      else
      Dish.all

    end
  end
 
  def show
    @dish = Dish.find(params[:id])
  end
 
  def new
    @dish = Dish.new
  end
 
  def edit
    @dish = Dish.find(params[:id])
  end
 
  def create
    @dish = Dish.new(dish_params)
 
    if @dish.save
      redirect_to @dish
     
    else
      render 'new'
    end
  end
 
  def update
    @dish = Dish.find(params[:id])
 
    if @dish.update(dish_params)
      redirect_to @dish
    else
      render 'edit'
    end
  end
 
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
 
    redirect_to dishes_path
  end
 
  private
    def article_params
      params.require(:article).permit(:name, :description ,:category_id,:author_id , :checkbox,:term,:attachment)
    end
end
