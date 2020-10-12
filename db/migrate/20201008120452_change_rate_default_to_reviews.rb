class ChangeRateDefaultToReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_default :reviews, :rate, nil
  end
end
