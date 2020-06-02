class Review < ApplicationRecord
  belongs_to :comedian
  validates :rating, presence: true
  validates :rating, inclusion: 0..5
end
