class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, :last_name, :role, presence: true
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :comedians, through: :bookings, dependent: :destroy
  has_many :comedians
  has_many :messages, dependent: :destroy
end
