class Restaurant < ApplicationRecord

  has_one :review
  has_many :menus
end
