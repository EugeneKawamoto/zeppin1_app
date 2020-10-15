class Public::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all.page(params[:page]).per(10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menus = @restaurant.menus
  end

  def search
    @restaurant_or_menu = params[:option]
    if @restaurant_or_menu == "1"
      @restaurants = Restaurant.search(params[:search], @restaurant_or_menu)
    else
      @menus = Menu.search(params[:search], @restaurant_or_menu)
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone)
  end
end
