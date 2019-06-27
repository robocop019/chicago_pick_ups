class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  validates :password, confirmation: true, on: :create
  # validates :password_confirmation, presence: true, on: :create, :update

  has_many :comments
  has_many :interests
  has_many :friendships
  has_many :messages
  has_many :games, foreign_key: :organizer_id
  
end
