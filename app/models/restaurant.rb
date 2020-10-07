class Restaurant < ApplicationRecord

  belongs_to :review
  has_many :menus
end
