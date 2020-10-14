class Public::MenusController < ApplicationController
  def show
    @menu = Menu.find(params[:id])
    @restaurant = @menu.restaurant
    @reviews = @menu.reviews
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price, :restaurant_id)
  end

end
