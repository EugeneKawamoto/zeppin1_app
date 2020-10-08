class Review < ApplicationRecord

  belongs_to :user
  belongs_to :restaurant
  belongs_to :menu

  attachment :image

# 1以上~5以下の★レート
  validates :star, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
