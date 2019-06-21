class User < ApplicationRecord
  has_many :comments
  has_many :interests
  has_many :friendships
  has_many :messages

  
end
