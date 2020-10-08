class AddDefaultToReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reviews, :star, false, 0
    change_column :reviews, :star, :float, default: 0
  end
end
