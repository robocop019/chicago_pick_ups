class Friendship < ApplicationRecord

  validates :friendee_id, numericality: { other_than: :friender_id, 
    message: 'No self love' }
  validates_uniqueness_of :friendee_id, {scope: :friender_id, message: 'No double follows'}

  has_and_belongs_to_many :user
end
