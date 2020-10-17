class Public::MenusController < ApplicationController

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
    @restaurant = @menu.restaurant
    @review = Review.new
    @review.review_images.build
    @reviews = @menu.reviews.order(created_at: :desc).page(params[:page]).per(5)
  end

  def bookmarks
    @menus = current_user.bookmark_menus.includes(:user).recent
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price, :restaurant_id)
  end

end
