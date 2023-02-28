class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :sharks
  has_many :bookings
  has_many :sharks, through: :bookings

  validates_presence_of :first_name, :last_name, :email
end
