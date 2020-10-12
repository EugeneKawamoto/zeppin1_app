class Public::ReviewsController < ApplicationController

  def index
    
  end

  def show
    
  end

  def new
    @review = Review.new
    @review.review_images.build
  end

  def create
    @review = Review.new(review_params)
  end

  def edit
    
  end

  def update

  end

  def destroy
    
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :restaurant_id, :menu_id, :comment, :rate, review_images_images: [])
  end

end
