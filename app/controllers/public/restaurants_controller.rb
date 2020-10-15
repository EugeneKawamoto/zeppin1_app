class Public::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all.page(params[:page]).per(10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menus = @restaurant.menus
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone)
  end
end
