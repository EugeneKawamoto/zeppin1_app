class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :menu_id
      t.text :comment
      t.float :star

      t.timestamps
    end
  end
end
