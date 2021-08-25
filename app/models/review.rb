class Review < ApplicationRecord
  RATINGS = (0..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: RATINGS }, numericality: true
end
