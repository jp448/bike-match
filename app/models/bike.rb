class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, :price, :image_url, presence: true
  validates :title, uniqueness: true
end
