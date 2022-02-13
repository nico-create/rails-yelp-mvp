class Review < ApplicationRecord
  validates :content, presence: true, length: { minimum: 3 }
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  belongs_to :restaurant
end
