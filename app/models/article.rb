class Article < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :title, presence: true, length: { minimum: 2 }
end
