class User < ApplicationRecord

  # Validates
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password, presence: true, length: { minimum: 8, maximum: 16 }

  # Include BCrypt default module
  has_secure_password

  has_many :articles

end
