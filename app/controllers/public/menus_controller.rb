class Public::MenusController < ApplicationController
  def show
    
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price, :restaurant_id)
  end

end
