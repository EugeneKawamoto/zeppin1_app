class Public::MenusController < ApplicationController
  before_action :authenticate_user!, only: [:show, :bookmarks]

  def index
    @menus = Menu.all.page(params[:page]).per(12)
  end

  def show
    @menu = Menu.find(params[:id])
    @restaurant = @menu.restaurant
    @review = Review.new
    @review.review_images.build
    @reviews = @menu.reviews.order(created_at: :desc)
  end

  def bookmarks
    @menus = current_user.bookmark_menus.includes(:user).recent
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price, :restaurant_id)
  end
end
