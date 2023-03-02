class Review < ApplicationRecord
  belongs_to :shark
  ratings = (0..5)

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, inclusion: { in: ratings }, numericality: { only_integer: true }
end
