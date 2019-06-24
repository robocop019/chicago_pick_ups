class Park < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :games
end
