# frozen_string_literal: true

# top-level class comment
class Review < ApplicationRecord
  belongs_to :comedian
  belongs_to :user # HeadHunter
  validates :rating, presence: true
  validates :rating, inclusion: 0..5
end
