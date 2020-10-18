class ReviewImage < ApplicationRecord

  belongs_to :review
  attachment :image

  validates :image, presence: true
end
