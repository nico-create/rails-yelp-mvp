class Restaurant < ApplicationRecord
  validates :name, presence: true, length: { minimum: 10 }
  validates :address, presence: true, length: { minimum: 10 }
  validates :category, presence: true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews
end
