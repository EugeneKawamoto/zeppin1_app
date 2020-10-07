class Review < ApplicationRecord

  belongs_to :user
  belongs_to :restaurant
  belongs_to :menu

  attachment :image
end
