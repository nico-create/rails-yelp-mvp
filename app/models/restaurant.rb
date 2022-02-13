class Restaurant < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 30 }
  validates :address, presence: true, length: { minimum: 10, maximum: 65 }
  validates :category, presence: true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
