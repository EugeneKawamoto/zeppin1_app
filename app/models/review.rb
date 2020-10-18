class Review < ApplicationRecord

  belongs_to :user
  belongs_to :restaurant
  belongs_to :menu

  has_many :review_images
  accepts_attachments_for :review_images, attachment: :image

  validates :comment, presence: true, length: { in: 20..500}

  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
