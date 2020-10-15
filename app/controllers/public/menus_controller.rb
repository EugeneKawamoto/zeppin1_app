class Public::MenusController < ApplicationController
  def show
    @menu = Menu.find(params[:id])
    @restaurant = @menu.restaurant
    @review = Review.new
    @review.review_images.build
    @reviews = @menu.reviews.order(created_at: :desc).page(params[:page]).per(5)
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price, :restaurant_id)
  end

end
