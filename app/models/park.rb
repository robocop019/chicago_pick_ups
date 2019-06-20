class Park < ApplicationRecord
  belongs_to :game
  has_many :comments, as: :commentable
end
