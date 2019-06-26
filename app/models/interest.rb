class Interest < ApplicationRecord
  
  # validates

  belongs_to :user
  belongs_to :game

  enum status: { following: 0, going_to: 1 }
end
