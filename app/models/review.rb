class Review < ApplicationRecord
  belongs_to :comedian
  belongs_to :user
  validates :rating, presence: true
  validates :rating, inclusion: 0..5
end
