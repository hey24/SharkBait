class Shark < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :age, :type, :description, :price, :diet, :picture_url
  validates :age, numericality: { only_integer: true }
  validates :price, numericality: true
end
