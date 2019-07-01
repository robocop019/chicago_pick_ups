class Game < ApplicationRecord

  validates :start_time, presence: true

  has_many :comments, as: :commentable
  has_many :interests
  has_many :users, through: :interests

  belongs_to :park
  belongs_to :organizer, class_name: "User"


  # enum :sport, ['baseball', 'basketball', ''] below associations and validations
  # filter in console with Game.all.enum

  enum sport: { Baseball: 0, Basketball: 1, Football: 2, Hockey: 3, Soccer: 4, Softball: 5, Tennis: 6, Volleyball: 7 }

  enum category: { Casual: 0, Competitive: 1, Practice: 2 }

  def formatted_start_time
    start_time.strftime("%A, %B %e, %Y, %l:%M %p") if start_time != nil
  end

  def formatted_created_at
    created_at.strftime("%A, %B %e, %Y, %l:%M %p") if created_at != nil
  end

  def formatted_updated_at
    updated_at.strftime("%A, %B %e, %Y, %l:%M %p") if updated_at != nil
  end
end
