class Game < ApplicationRecord

  validates :start_time, presence: true

  has_many :comments, as: :commentable
  has_many :interests
  has_many :users, through: :interests

  belongs_to :park
  belongs_to :organizer, class_name: "User"


  # enum :sport, ['baseball', 'basketball', ''] below associations and validations
  # filter in console with Game.all.enum

  enum sport: { baseball: 0, basketball: 1, football: 2, hockey: 3, soccer: 4, softball: 5, tennis: 6, volleyball: 7 }

  enum category: { casual: 0, competitive: 1, practice: 2 }

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
