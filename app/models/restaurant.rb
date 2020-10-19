class Restaurant < ApplicationRecord
  has_one :review
  has_many :menus

  def Restaurant.search(search, restaurant_or_menu)
    if restaurant_or_menu == "1"
      Restaurant.where(['name LIKE ?', "%#{search}%"])
    else
      Restaurant.all
    end
  end
end
