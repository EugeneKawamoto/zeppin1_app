class Public::ReviewsController < ApplicationController


  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = "投稿は正常に完了しました。"
      redirect_to public_root_path
    else
      flash[:notice] = "初めからやり直してください。"
      render action: :index
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
