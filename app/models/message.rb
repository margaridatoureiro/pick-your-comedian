# frozen_string_literal: true

# top-level class comment
class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
end
