class Comedian < ApplicationRecord
  searchkick
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
end
