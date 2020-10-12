class ChangeDateRateToReviews < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :rate, :decimal, precision: 2, scale: 1
  end
end
