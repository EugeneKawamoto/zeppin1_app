class Public::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.order(created_at: :desc).page(params[:page]).reverse_order.per(5)
    @bookmarks = Bookmark.where(user_id: current_user.id).all
  end

  def edit
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_to public_user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to public_users_my_page_path(current_user), notice: 'ユーザ情報の更新が完了しました。'
    else
      render action: :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
