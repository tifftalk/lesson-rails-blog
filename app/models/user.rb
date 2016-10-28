class User < ApplicationRecord
  VALID_EMAIL_REGEX = /[^@]+@[^@]+/
  validates :username, presence: true, length: { minimum: 1, maximum: 15 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format:  { with: VALID_EMAIL_REGEX }
end
