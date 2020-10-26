class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :menu
  has_many :review_images

  validates :review_images, presence: true
  validates :comment, presence: true, length: { in: 21..1000 }
  validates :rate, numericality: {
              less_than_or_equal_to: 5,
              greater_than_or_equal_to: 1,
            }, presence: true
  accepts_attachments_for :review_images, attachment: :image

end
