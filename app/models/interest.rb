class Interest < ApplicationRecord
  
  validates_uniqueness_of :game_id, {scope: :user_id, message: 'No double follows'}

  belongs_to :user
  belongs_to :game

  enum status: { following: 0, going_to: 1 }
end
