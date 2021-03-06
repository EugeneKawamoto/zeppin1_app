class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :introduction, length: { maximum: 250 }, allow_blank: true
  validates :name, presence: true, length: { in: 2..17 }
  attachment :profile_image

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guest user"
    end
  end
end
