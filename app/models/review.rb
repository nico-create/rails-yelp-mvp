class Review < ApplicationRecord
  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  belongs_to :restaurant
end
