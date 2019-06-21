class Park < ApplicationRecord
  has_many :comments, as: :commentable
end
