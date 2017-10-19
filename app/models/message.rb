class Message < ApplicationRecord
  validates :content, presence: true
  validates :from, presence: true
end
