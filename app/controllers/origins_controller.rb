class OriginsController < ApplicationController
  # public_rootをTOP画面にするための設定
  def top
    redirect_to public_root_path
  end
end
