class ReviewImage < ApplicationRecord
  belongs_to :review

  validates :image, presence: true
  attachment :image

end
