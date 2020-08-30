class Comedian < ApplicationRecord
  searchkick
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, :age, :content, presence: true
end
