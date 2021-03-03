# frozen_string_literal: true

# top-level class comment
class Booking < ApplicationRecord
  belongs_to :user # as a headhunter
  belongs_to :comedian
  validates :start_date, :end_date, presence: true
end
