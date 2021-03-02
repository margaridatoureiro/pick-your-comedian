# frozen_string_literal: true

# top-level class comment
class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
end
