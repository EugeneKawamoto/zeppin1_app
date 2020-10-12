class Public::UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_to public_user_path(current_user.id)
    end
  end

  def update
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
