class ChangeStar < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :star, :raty
  end
end
