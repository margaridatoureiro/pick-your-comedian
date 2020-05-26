class Review < ApplicationRecord
  belongs_to :comedian
  validates :rating, presence: true
end
