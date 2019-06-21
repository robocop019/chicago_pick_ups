class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :interests
  has_many :friendships
  has_many :messages
  has_many :games

  validates :email, presence: true, uniqueness: true

  
end
