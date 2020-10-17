class Public::BookmarksController < ApplicationController
  def create
    menu = Menu.find(params[:menu_id])
    bookmark = current_user.bookmarks.new(menu_id: menu.id)
    bookmark.save
    redirect_to public_menu_path(menu)
  end

  def destroy
    menu = Menu.find(params[:menu_id])
    bookmark = current_user.bookmarks.find_by(menu_id: menu.id)
    bookmark.destroy
    redirect_to public_menu_path(menu)
  end
end
