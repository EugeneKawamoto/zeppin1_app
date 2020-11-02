class Public::ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create, :edit, :update, :destroy]

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.score = Language.get_data(review_params[:comment])
    # binding.pry
    if @review.save
      tags = Vision.get_image_data(@review.review_images_images.first)
      tags.each do |tag|
        @review.tags.create(name: tag)
      end
      flash[:notice] = "レビューは正常に完了しました。"
      redirect_to public_root_path
    else
      # todo:ajax導入が正しい
      @menu = Menu.find(params[:review][:menu_id])
      @restaurant = @menu.restaurant
      @reviews = @menu.reviews.order(created_at: :desc).page(params[:page]).per(5)
      render template: 'public/menus/show'
    end
  end

  def index
    @reviews = Review.all.order(created_at: :desc).page(params[:page]).per(12)
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
    @menu = @review.menu
    unless current_user.id == @review.user.id
      redirect_to public_root_path
    end
  end

  def update
    @review = Review.find(params[:id])
    @menu = Menu.find(params[:review][:menu_id])
    @restaurant = @menu.restaurant
    if @review.update(review_params)
      flash[:notice] = "レビューの更新に成功しました。"
      redirect_to public_review_path(@review.id)
    else
      render action: :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "レビューの削除に成功しました。"
    redirect_to public_root_path
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :restaurant_id, :menu_id,
                                   :comment, :rate, review_images_images: [])
  end
end
