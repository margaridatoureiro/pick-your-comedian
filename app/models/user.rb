# frozen_string_literal: true

# top-level class comment
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, :last_name, :role, presence: true
  has_many :messages, dependent: :destroy
  has_many :comedians # as a Comedy Agency
  has_many :bookings, dependent: :destroy # as a Headhunter
  has_many :reviews, dependent: :destroy # as a Headhunter
  has_many :comedians, through: :bookings, dependent: :destroy # as a Headhunter
end
