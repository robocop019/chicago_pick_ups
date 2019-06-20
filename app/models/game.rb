class Game < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :parks
  has_many :interests
end
