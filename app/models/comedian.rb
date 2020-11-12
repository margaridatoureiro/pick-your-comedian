class Comedian < ApplicationRecord
  searchkick # searchable: %w[:name :age :content :address]
  # def search_data
  #   {
  #     name: name,
  #     age: age.to_s,
  #     content: content,
  #     average_rating: average_rating.to_s,
  #     address: address
  #   }
  # end
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  validates :name, :age, :content, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
