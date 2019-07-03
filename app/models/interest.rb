class Interest < ApplicationRecord
  
  validates :game_id, uniqueness: {scope: :user_id, message: "can't be interested in same game twice"}

  belongs_to :user
  belongs_to :game

  enum status: { following: 0, going_to: 1 }
end
