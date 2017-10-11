class Admin < ApplicationRecord
  validates :login, presence: true, length: { maximum: 255 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
