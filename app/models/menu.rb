class Menu < ApplicationRecord

  belongs_to :restaurant
  has_maney :reviews
end
