class RestaurantsController < ApplicationController

  # inicia não guarda
  def new
    @restaurant = Restaurant.new
  end

  #guarda se
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurants
    else
      render :new
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    #no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
