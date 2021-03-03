# frozen_string_literal: true

# top-level class comment
class Comedian < ApplicationRecord
  # searchkick # UNCOMMENT ONLY THIS LINE TO USE SEARCHKICK
  # --------------------------------
  # searchable: %w[:name :age :content :address]
  # def search_data
  #   {
  #     name: name,
  #     age: age.to_s,
  #     content: content,
  #     average_rating: average_rating.to_s,
  #     address: address
  #   }
  # end
  # -------------------------------
  include PgSearch::Model
  pg_search_scope :search_by_name_and_content_and_age_and_address_and_average_rating,
                  against: [:name, :age, :content, :average_rating.to_s, :address],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
  belongs_to :user # the Comedy Agency or the Headhunter (through bookings)
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, :age, :content, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
