class Shark < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates_presence_of :name, :age, :type, :description, :price, :diet, :picture_url
  validates :age, numericality: { only_integer: true }
  validates :price, numericality: true
end
