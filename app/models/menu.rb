class Menu < ApplicationRecord

  belongs_to :restaurant
  has_many :reviews

  def Menu.search(search, restaurant_or_menu)
    if restaurant_or_menu == "2"
      Menu.where(['name LIKE ?', "%#{search}%"])
    else
      Menu.all
    end
  end
end
